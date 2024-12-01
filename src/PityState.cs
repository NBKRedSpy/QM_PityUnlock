using MGSC;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Profiling;
using UnityEngine.Rendering;

namespace QM_PityUnlock
{
    /// <summary>
    /// Handles the pity processing for every datadisk type.
    /// </summary>
    public class PityState
    {

        /// <summary>
        /// 
        /// The pity state trackers for each data record type.
        /// Key is Record id
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public Dictionary<string, PityItemTracker> DiskTrackers { get; set; } = new Dictionary<string, PityItemTracker>();

        [JsonIgnore]
        public PitySettings Settings { get; set; }

        /// <summary>
        /// The state of the game. Required since the list objects of unlocked items are recreated on game load/save.
        /// 
        /// </summary>
        [JsonIgnore]
        public State GameState { get; set; }

        /// <summary>
        /// Init the tracker classes.  Used after the JSON load.
        /// </summary>
        /// <param name="settings"></param>
        /// <param name="gameState"></param>
        public void Init(PitySettings settings, State gameState)
        {
            Settings = settings;
            GameState = gameState;

            InitItemTrackers(settings);
        }

        private void InitItemTrackers(PitySettings settings)
        {
            //The delegate for all production item types.
            //The list of all productions that are unlocked come from the same list.
            //There are no collisions since every item ids are unique.
            Func<List<string>> productionItemGetUnlockedList =
                () => GameState.Get<MagnumCargo>().UnlockedProductionItems;

            //This code is based on the game's UnlockAllDatadisksCommand::Execute function
            foreach (BasePickupItemRecord pickupItemRecord in Data.Items.Records)
            {
                if (!(pickupItemRecord is CompositeItemRecord compositeItemRecord)) continue;

                DatadiskRecord record = compositeItemRecord.GetRecord<DatadiskRecord>();

                if (record == null) continue;


                //This is called post deserialization.  Records may already exist.
                PityItemTracker tracker;
                
                if (!DiskTrackers.TryGetValue(record.Id, out tracker))
                {
                    tracker = new PityItemTracker();
                }

                switch (record.UnlockType)
                {
                    case DatadiskUnlockType.ProductionItem:
                        tracker.Init(productionItemGetUnlockedList, settings);
                        break;
                    case DatadiskUnlockType.Mercenary:
                        tracker.Init(() => GameState.Get<Mercenaries>().UnlockedMercenaries, settings);
                        break;
                    case DatadiskUnlockType.MercenaryClass:
                        tracker.Init(() => GameState.Get<Mercenaries>().UnlockedClasses, settings);
                        break;
                    default:
                        //Unknown.  Ignore
                        continue;
                }

                //Since all the data disks have unique ids, it is not necessary to indicate the unlock type.
                DiskTrackers[record.Id] = tracker;
            }
        }

        /// <summary>
        /// Returns the random item to unlock, based on the data disk type and the pity rules.
        /// </summary>
        /// <param name="datadiskRecord"></param>
        /// <param name="datadiskComponent"></param>
        /// <returns></returns>
        public string GetUnlockId(DatadiskRecord datadiskRecord, DatadiskComponent datadiskComponent)
        {
            PityItemTracker tracker = null;

            DiskTrackers.TryGetValue(datadiskRecord.Id, out tracker);

            string unlockId;

            if (tracker == null)
            {
                //Unknown.  Use the game's default logic.
                unlockId = datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)];
            }
            else 
            {
                unlockId = tracker.GetUnlockId(datadiskRecord);
            }

            return unlockId;
        }
    }
}
