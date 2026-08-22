using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PityUnlock_Bootstrap;

namespace PityUnlock
{
    /// <summary>
    /// Handles rolling the chips with the pity algorithm and uses the different item tracker based
    /// on if in a mission (dungeon) or otherwise (station rewards, etc.).
    /// </summary>
    public static class PityRollManager
    {
        /// <summary>
        /// If true, the game is generating a new dungeon.
        /// Otherwise, it is a reward or space station mission listing.
        /// </summary>
        public static bool IsCreatingDungeon { get; set; } = false;

        private static bool PityStateBypassedMessageShown = false;


        [CopyWarning(typeof(ItemFactory), nameof(ItemFactory.CreateComponent), "Copies the default random logic")]
        public static DatadiskComponent UnlockDataDisk(DatadiskRecord datadiskRecord)
        {

            //Note:  Dungeon and Overworld are separate since the overworld will roll for bartering and such.
            //  This would mean that there would be pity rolls that the player never has a chance to take advantage of.
            //  With the dungeon separate, all the items from pity rolls in a mission can be obtained.
            PityState pityState = IsCreatingDungeon ? 
                Plugin.PityStateDb?.CurrentPityState?.DungeonMode :
                Plugin.PityStateDb?.CurrentPityState?.OverworldMode;

            //Hack for compatibility with "The Dive - Roguelike Mode" or any other mod
            //  that bypasses the game's normal startup.
            if (pityState == null)
            {
                //Only show this message once to avoid spamming the log
                if (!PityStateBypassedMessageShown)
                {
                    Plugin.Logger.LogWarning("A mod may not be compatible with Pity Roll as the game's startup was bypassed. PityState is null and the game's default roll will be used instead. This message will only show once.");
                    PityStateBypassedMessageShown = true;
                }

                //Use the game's original fully random code:
                DatadiskComponent datadiskComponent = new DatadiskComponent();
                datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
                return datadiskComponent;
            }


            DatadiskComponent component = new DatadiskComponent();

            string unlockId = pityState.GetUnlockId(datadiskRecord, component);

            Plugin.PityStateDb.Save();
            component.SetUnlockId(unlockId);

            return component;
        }


    }
}
