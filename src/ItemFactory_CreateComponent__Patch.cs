using HarmonyLib;
using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace QM_PityUnlock
{
    [HarmonyPatch(typeof(ItemFactory), nameof(ItemFactory.CreateComponent))]
    internal class ItemFactory_CreateComponent__Patch
    {
        public static IEnumerable<CodeInstruction> Transpiler(IEnumerable<CodeInstruction> instructions, ILGenerator iLGenerator)
        {

            
            //Goal: Change random item selection to a call to the pitty version.

            List<CodeInstruction> original = instructions.ToList();

            //Debugging
            //Utils.LogIL(original);

            var result = new CodeMatcher(instructions)

                // Target: Match the DatadiskRecord type check
                // Source C#: if (itemRecord is DatadiskRecord datadiskRecord)
                // IL: -----
                //L_0286: ldarg.3
                //IL_0287: isinst MGSC.DatadiskRecord
                //IL_028c: stloc.s 5
                //IL_028e: ldloc.s 5
                //IL_0290: brfalse IL_02cb
                .MatchEndForward(
                    new CodeMatch(OpCodes.Ldarg_3),
                    new CodeMatch(OpCodes.Isinst, typeof(DatadiskRecord)),

                    Utils.MatchVariable(OpCodes.Stloc_S, 5, typeof(DatadiskRecord)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 5, typeof(DatadiskRecord)),

                    new CodeMatch(OpCodes.Brfalse)
                )
                .ThrowIfNotMatch("Did not find 'if (itemRecord is DatadiskRecord datadiskRecord)'")
                .Advance(1)

                //Target:  The random item code.
                //Source C#:
                //  DatadiskComponent datadiskComponent = new DatadiskComponent();
                //  datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
                // IL: -----
                //IL_0292: newobj instance void MGSC.DatadiskComponent::.ctor()
                //IL_0297: stloc.s 16
                //// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
                //IL_0299: ldloc.s 16
                //IL_029b: ldloc.s 5
                //IL_029d: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                //IL_02a2: ldc.i4.0
                //IL_02a3: ldloc.s 5
                //IL_02a5: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
                //IL_02aa: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
                //IL_02af: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
                //IL_02b4: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
                //IL_02b9: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)

                .ThrowIfNotMatchForward("Did not find original unlock random code",
                    new CodeMatch(OpCodes.Newobj),
                    Utils.MatchVariable(OpCodes.Stloc_S, 16, typeof(DatadiskComponent)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 16, typeof(DatadiskComponent)),
                    Utils.MatchVariable(OpCodes.Ldloc_S, 5, typeof(DatadiskRecord)),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Ldc_I4_0),
                    new CodeMatch(OpCodes.Ldloc_S),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Call),
                    new CodeMatch(OpCodes.Callvirt),
                    new CodeMatch(OpCodes.Callvirt)
                )

                .RemoveInstructions(12)

                //New Code: 
                //// DatadiskComponent item2 = UnlockDataDisk(datadiskRecord);
                //IL_033a: ldloc.s 5
                //IL_033c: call class ['Assembly-CSharp']MGSC.DatadiskComponent QM_PityUnlock.ItemFactory_CreateComponent__Patch::UnlockDataDisk(class ['Assembly-CSharp']MGSC.DatadiskRecord)
                //IL_0341: stloc.s 16	

                .InsertAndAdvance(
                    new CodeInstruction(OpCodes.Ldloc_S, 5),
                    CodeInstruction.Call(() => PityRollManager.UnlockDataDisk(default)),
                    new CodeInstruction(OpCodes.Stloc_S, 16)
                )

                .InstructionEnumeration();

            return result;
        }


    }
}
