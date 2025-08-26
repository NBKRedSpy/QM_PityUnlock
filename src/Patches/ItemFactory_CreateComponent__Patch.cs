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

namespace QM_PityUnlock.Patches
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

            List<CodeInstruction> result = new CodeMatcher(original)

                // Target: Match the DatadiskRecord type check
	            //// if (itemRecord is DatadiskRecord datadiskRecord)
	            //IL_02c7: ldarg.3
	            //IL_02c8: isinst MGSC.DatadiskRecord
	            //IL_02cd: stloc.s 7
	            //// DatadiskComponent datadiskComponent = new DatadiskComponent();
	            //IL_02cf: ldloc.s 7
	            //IL_02d1: brfalse.s IL_030c
                .MatchEndForward(
                    new CodeMatch(OpCodes.Ldarg_3),
                    new CodeMatch(OpCodes.Isinst, typeof(DatadiskRecord)),

                    Utils.MatchVariable(OpCodes.Stloc_S, 7, typeof(DatadiskRecord)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 7, typeof(DatadiskRecord)),

                    new CodeMatch(OpCodes.Brfalse_S)
                )
                .ThrowIfNotMatch("Did not find 'if (itemRecord is DatadiskRecord datadiskRecord)'")
                .Advance(1)

                 //Target:  The random item code.  This mod's UnlockDataDisk creates the component as well.
                 //// DatadiskComponent datadiskComponent = new DatadiskComponent();
                 //IL_02cf: ldloc.s 7
                 //IL_02d1: brfalse.s IL_030c

                 //IL_02d3: newobj instance void MGSC.DatadiskComponent::.ctor()
                 //IL_02d8: stloc.s 22

                 //// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
                 //IL_02da: ldloc.s 22
                 //IL_02dc: ldloc.s 7
                 //IL_02de: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                 //IL_02e3: ldc.i4.0
                 //IL_02e4: ldloc.s 7
                 //IL_02e6: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                 //IL_02eb: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
                 //IL_02f0: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
                 //IL_02f5: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
                 //IL_02fa: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)


                 .ThrowIfNotMatchForward("Did not find original unlock random code",
                    new CodeMatch(OpCodes.Newobj),
                    Utils.MatchVariable(OpCodes.Stloc_S, 22, typeof(DatadiskComponent)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 22, typeof(DatadiskComponent)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 7, typeof(DatadiskRecord)),
                    new CodeMatch(OpCodes.Callvirt, AccessTools.PropertyGetter(typeof(DatadiskRecord), nameof(DatadiskRecord.UnlockIds))),
                    new CodeMatch(OpCodes.Ldc_I4_0),
                    new CodeMatch(OpCodes.Ldloc_S),
                    new CodeMatch(OpCodes.Callvirt, AccessTools.PropertyGetter(typeof(DatadiskRecord), nameof(DatadiskRecord.UnlockIds))),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Call, AccessTools.Method(typeof(UnityEngine.Random), nameof(UnityEngine.Random.Range),
                        new Type[] { typeof(int), typeof(int) })),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Callvirt, AccessTools.Method(typeof(DatadiskComponent), nameof(DatadiskComponent.SetUnlockId)))
                )

                .RemoveInstructions(12)

                //New Code: 
                //// DatadiskComponent item2 = UnlockDataDisk(datadiskRecord);
                //IL_033a: ldloc.s 7
                //IL_033c: call class ['Assembly-CSharp']MGSC.DatadiskComponent QM_PityUnlock.ItemFactory_CreateComponent__Patch::UnlockDataDisk(class ['Assembly-CSharp']MGSC.DatadiskRecord)
                //IL_0341: stloc.s 22

                .InsertAndAdvance(
                    new CodeInstruction(OpCodes.Ldloc_S, 7),
                    CodeInstruction.Call(() => PityRollManager.UnlockDataDisk(default)),
                    new CodeInstruction(OpCodes.Stloc_S, 22)
                )

                .InstructionEnumeration()
                .ToList();

            //Post update.
            //Utils.LogIL(result);

            return result;
        }


    }
}
