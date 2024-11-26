using MGSC;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Runtime;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Rendering;

namespace QM_PityUnlock
{
    /// <summary>
    /// Handles the pity pull logic for a single DataRecord type.  Ex:  classUSB
    /// </summary>
    public class PityTracker
    {

        [JsonIgnore]
        public PitySettings PitySettings { get; set; }

        /// <summary>
        /// The number of times that the player did not get a unique unlock.
        /// </summary>
        public int MissCount { get; set; }

        /// <summary>
        /// A function to get the list of items that are already unlocked, specific to the 
        /// DataDisk type
        /// </summary>
        private Func<List<string>> GetUnlockedList { get; set; }

        private System.Random RandomGenerator { get; } = new System.Random();

        /// <summary>
        /// Inits the object.  Used after the settings are loaded.
        /// </summary>
        /// <param name="getUnlockedList"></param>
        /// <param name="settings"></param>
        public void Init(Func<List<string>> getUnlockedList, PitySettings settings)
        {
            GetUnlockedList = getUnlockedList;
            PitySettings = settings;
        }

        /// <summary>
        /// Executes the Pity system to determine which ID to unlock
        /// </summary>
        /// <param name="record">The DataDisk type to get the unlock id's from </param>
        /// <returns></returns>
        /// <exception cref="ArgumentException"></exception>
        public string GetUnlockId(DatadiskRecord record)
        {
            List<string> recordUnlockIds = record.UnlockIds;
            List<string> unlockedIds = GetUnlockedList();

            //-- find any items that are not unlocked.
            List<string> notUnlockedIds =
                recordUnlockIds.GroupJoin(unlockedIds, x => x, x => x, (x, y) => new {key = x, right = y})
                .Where(x=> x.right.Count() == 0)
                .Select(x => x.key)
                .ToList();

            bool doFullRandom = false;  //True if no pity or everything is unlocked.

            bool allUnlocked = false;
            if(notUnlockedIds.Count == 0)
            {
                allUnlocked = true;
                doFullRandom = true;
            }
            else 
            {
                //Pity check.
                switch (PitySettings.Mode)
                {
                    case PityMode.Always:
                        doFullRandom = false;
                        break;
                    case PityMode.Percentage:
                        int randomValue = RandomGenerator.Next(1, 100);

                        if(Plugin.Config.VerboseDebug) Plugin.Log($"Random Value: {randomValue}");

                        doFullRandom = ( randomValue >= MissCount * PitySettings.PercentageMultiplier * 100);
                        break;
                    case PityMode.Hard:
                        doFullRandom = MissCount < PitySettings.HardPityCount;
                        break;
                    default:
                        throw new ArgumentException($"Unexpected Mode '{PitySettings.Mode}'", nameof(PitySettings.Mode));
                }
            }

            string unlockedId;

            if (doFullRandom)
            {

                unlockedId = GetRandomItem(recordUnlockIds);

                //Check if the user received a new unlock.
                MissCount = (allUnlocked || notUnlockedIds.Contains(unlockedId)) ? 0 : MissCount + 1;

                if (Plugin.Config.VerboseDebug) {
                    Plugin.Log($"Regular Roll.  Miss Count {MissCount}: Not Unlocked: {String.Join(",", notUnlockedIds)}");
                }

            }
            else
            {
                if (Plugin.Config.VerboseDebug) Plugin.Log($"Pity Roll:  Not Unlocked: {String.Join(",",notUnlockedIds)}");

                MissCount = 0;
                unlockedId = GetRandomItem(notUnlockedIds);
            }

            if (Plugin.Config.VerboseDebug) Plugin.Log($"Item id: {unlockedId}");

            return unlockedId;

        }

        private T GetRandomItem<T>(IList<T> list)
        {
            return list[RandomGenerator.Next(0, list.Count -1)];
        }

        public void SetSuccess()
        {

            MissCount = 0;
        }

        public void SetFailure()
        {
            MissCount++;
        }

    }
}
