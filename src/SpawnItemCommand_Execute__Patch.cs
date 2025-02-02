using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using HarmonyLib;
using MGSC;

namespace QM_PityUnlock
{

    /// <summary>
    /// Invoked when the game loads a game or creates a new game.
    /// </summary>
    [HarmonyPatch(typeof(SpawnItemCommand), nameof(SpawnItemCommand.Execute))]
    public static class SpawnItemCommand_Execute__Patch
    {

        public static IEnumerable<CodeInstruction> Transpiler(IEnumerable<CodeInstruction> instructions)
        {

            //See original IL source here: OriginalILReference/MGSC.SpawnItemCommand.il

            //Goal: The spawn duplicates the DatadiskRecord unlock randomization that is already
            //  in the CreateForInventory function.  This would undo the Pity unlock code when using
            //  this spawn command for testing.

            List<CodeInstruction> original = instructions.ToList();

            //Debugging
            //Utils.LogIL(original);


            List<CodeInstruction> result = new CodeMatcher(original)

                //Goal: replace the type check with a false to just bypass the if block.

                //// if (basePickupItem.Is<DatadiskRecord>())
                //IL_000f: ldloc.0
                //IL_0010: callvirt instance bool MGSC.BasePickupItem::Is<class MGSC.DatadiskRecord>()

                .MatchStartForward(
                    new CodeMatch(OpCodes.Ldloc_0),
                    new CodeMatch(OpCodes.Callvirt,
                        AccessTools.Method( typeof(BasePickupItem), "Is", new Type[] { }, new Type[] { typeof(DatadiskRecord) })),
                    new CodeMatch(OpCodes.Brfalse_S)
                )
                .ThrowIfNotMatch("Did not find 'if (basePickupItem.Is<DatadiskRecord>())'")

                .RemoveInstructions(2)

                //Push a 0 (false)
                .InsertAndAdvance(
                    new CodeInstruction(OpCodes.Ldc_I4_0)
                )
                .InstructionEnumeration()
                .ToList();

            //Post update.
            //Utils.LogIL(result);

            return result;
        }
    }
}
