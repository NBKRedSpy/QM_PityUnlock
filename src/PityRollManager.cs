using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
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

        public static DatadiskComponent UnlockDataDisk(DatadiskRecord datadiskRecord)
        {
            //Note:  Dungeon and Overworld are separate since the overworld will roll for bartering and such.
            //  This would mean that there would be pity rolls that the player never has a chance to take advantage of.
            //  With the dungeon separate, all the items from pity rolls in a mission can be obtained.
            PityState pityState = IsCreatingDungeon ? 
                Plugin.PityStateDb.CurrentPityState.DungeonMode :
                Plugin.PityStateDb.CurrentPityState.OverworldMode;

            DatadiskComponent component = new DatadiskComponent();

            string unlockId = pityState.GetUnlockId(datadiskRecord, component);

            Plugin.PityStateDb.Save();
            component.SetUnlockId(unlockId);

            return component;
        }


    }
}
