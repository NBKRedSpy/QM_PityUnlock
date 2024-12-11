using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HarmonyLib;
using MGSC;

namespace QM_PityUnlock
{

    /// <summary>
    /// Invoked when the game loads a game or creates a new game.
    /// </summary>
    [HarmonyPatch(typeof(ManageSavesScreen), nameof(ManageSavesScreen.SlotOnStartGame))]
    public static class ManageSavesScreen_SlotOnStartGame__Patch
    {
        public static void Prefix(int gameSlot, bool newGame)
        {
            Plugin.PityStateDb.LoadCurrent(gameSlot, newGame);

        }
    }
}
