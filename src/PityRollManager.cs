using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
{
    /// <summary>
    /// Handles rolling the chips with the pity algorithm. 
    /// Keeps the dungeon items and the overworld items as different pity counts.
    /// </summary>
    public static class PityRollManager
    {
        /// <summary>
        /// If true, the game is generating a new dungeon.
        /// Otherwise, it is a reward or space station mission listing.
        /// </summary>
        public static bool IsCreatingDungeon { get; set; } = false;

        public static DatadiskComponent UnlockDataDisk(DatadiskRecord datadiskRecord)
        {
            PityState pityState = IsCreatingDungeon ? 
                Plugin.PityStateDb.PityStates.DungeonMode :
                Plugin.PityStateDb.PityStates.OverworldMode;

            DatadiskComponent component = new DatadiskComponent();

            string unlockId = pityState.GetUnlockId(datadiskRecord, component);

            Plugin.PityStateDb.Save();

            component.SetUnlockId(unlockId);

            return component;
        }


    }
}
