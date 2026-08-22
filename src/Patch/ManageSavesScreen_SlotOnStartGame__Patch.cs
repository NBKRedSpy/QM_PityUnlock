using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HarmonyLib;
using MGSC;

namespace PityUnlock.Patch
{

    /// <summary>
    /// Invoked when the game loads a game or creates a new game.
    /// </summary>
    [HarmonyPatch(typeof(ManageSavesScreen), nameof(ManageSavesScreen.SlotOnStartGame))]
    public static class ManageSavesScreen_SlotOnStartGame__Patch
    {
        public static void Prefix(int gameSlot, bool newGame)
        {

            //Note - there are some mods such as "The Dive" which bypass the game's normal startup and this will
            //  not be called.  In that case, the pity state will be null and the roll logic will default to the game's 
            //  full random.
            Plugin.PityStateDb.LoadCurrent(gameSlot, newGame);

        }
    }
}
