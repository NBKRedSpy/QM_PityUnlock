using HarmonyLib;
using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using static HarmonyLib.Code;
using static MGSC.Localization;

namespace PityUnlock
{
    [HarmonyPatch(typeof(ItemFactory), nameof(ItemFactory.CreateComponent))]
    internal class ItemFactory_CreateComponent__Patch
    {
        public static IEnumerable<CodeInstruction> Transpiler(IEnumerable<CodeInstruction> instructions)
        {


            //Goal: Change random item selection to a call to the pity version.

            //See the previous IL here:  
            //.\OriginalILReference\MGSC.ItemFactory.il

            List<CodeInstruction> original = instructions.ToList();

            //Debugging
            //Utils.LogIL(original);

            LocalVariableInstruction datadiskRecordVariable = new LocalVariableInstruction();
            LocalVariableInstruction datadiskComponentVariable = new LocalVariableInstruction();

            List<CodeInstruction> result = new CodeMatcher(original)

                // Target: Match the DatadiskRecord type check
                //  There is only one ldarg_3 with an DatadiskRecord check.
                //
                // if (itemRecord is DatadiskRecord datadiskRecord)
                //IL_0346: ldarg.3
                //IL_0347: isinst MGSC.DatadiskRecord
                //IL_034c: stloc.s 8
                //// DatadiskComponent datadiskComponent = new DatadiskComponent();
                //IL_034e: ldloc.s 8
                //IL_0350: brfalse.s IL_038b

                .MatchEndForward(
                    new CodeMatch(OpCodes.Ldarg_3),
                    new CodeMatch(OpCodes.Isinst, typeof(DatadiskRecord)),
                    datadiskRecordVariable.MatchAndInit(true, typeof(DatadiskRecord)),
                    CodeMatch.IsLdloc(),
                    new CodeMatch(OpCodes.Brfalse_S)
                )
                .ThrowIfNotMatch("Did not find 'if (itemRecord is DatadiskRecord datadiskRecord)'")
                .Advance(1)

                //Target:  The random item code.  This mod's UnlockDataDisk creates the component as well.

                // DatadiskComponent datadiskComponent = new DatadiskComponent();
                //IL_034e: ldloc.s 8
                //IL_0350: brfalse.s IL_038b
                //IL_0352: newobj instance void MGSC.DatadiskComponent::.ctor()
                //IL_0357: stloc.s 24
                //// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
                //IL_0359: ldloc.s 24
                //IL_035b: ldloc.s 8
                //IL_035d: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                //IL_0362: ldc.i4.0
                //IL_0363: ldloc.s 8
                //IL_0365: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                //IL_036a: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
                //IL_036f: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
                //IL_0374: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
                //IL_0379: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)
                //// _componentsCache.Add(datadiskComponent);
                //IL_037e: ldarg.0
                //IL_037f: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
                //IL_0384: ldloc.s 24
                //IL_0386: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

                .ThrowIfNotMatch("Did not find DatadiskComponent creation and unlock id assignment code.",
                    new CodeMatch(OpCodes.Newobj),
                    datadiskComponentVariable.MatchAndInit(true, typeof(DatadiskComponent)),
                    datadiskComponentVariable.MatchLoad(),
                    datadiskRecordVariable.MatchLoad(),

                    new CodeMatch(OpCodes.Callvirt, AccessTools.PropertyGetter(typeof(DatadiskRecord), nameof(DatadiskRecord.UnlockIds))),
                    new CodeMatch(OpCodes.Ldc_I4_0),
                    new CodeMatch(OpCodes.Ldloc_S),
                    new CodeMatch(OpCodes.Callvirt, AccessTools.PropertyGetter(typeof(DatadiskRecord), nameof(DatadiskRecord.UnlockIds))),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Call, AccessTools.Method(typeof(UnityEngine.Random), nameof(UnityEngine.Random.Range),
                        new Type[] { typeof(Int32), typeof(Int32) })),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Callvirt, AccessTools.Method(typeof(DatadiskComponent), nameof(DatadiskComponent.SetUnlockId)))
                )
                .RemoveInstructions(12)

                ////New Code: 
                ////// DatadiskComponent item2 = UnlockDataDisk(datadiskRecord);
                ////IL_033a: ldloc.s 7
                ////IL_033c: call class ['Assembly-CSharp']MGSC.DatadiskComponent PityUnlock.ItemFactory_CreateComponent__Patch::UnlockDataDisk(class ['Assembly-CSharp']MGSC.DatadiskRecord)
                ////IL_0341: stloc.s 22

                .InsertAndAdvance(
                    datadiskRecordVariable.Load,
                    CodeInstruction.Call(() => PityRollManager.UnlockDataDisk(default)),
                    datadiskComponentVariable.Store
                )

                .InstructionEnumeration()
                .ToList();

            //Post update.
            //Utils.LogIL(result);

            return result;
        }


    }
}
