using HarmonyLib;
using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock.Patches
{
    [HarmonyPatch(typeof(DungeonBuilder), nameof(DungeonBuilder.Populate))]
    public static class DungeonBuilder_Populate__Patch
    {
        public static void Prefix()
        {
            PityRollManager.IsCreatingDungeon = true;
        }

        public static void Postfix() 
        {
            PityRollManager.IsCreatingDungeon = false;
        }

    }
}
