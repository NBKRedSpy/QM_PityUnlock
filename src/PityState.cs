using MGSC;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Rendering;

namespace QM_PityUnlock
{
    /// <summary>
    /// Handles the state and processing the DataRecord unlock by type.
    /// For example, how many misses have already occurred.
    /// </summary>
    public class PityState
    {
        public const string MercenaryItemId = "merkUSB";
        public const string ClassItemId = "classUSB";

        public PityTracker MercTracker { get; set; } = new PityTracker();

        public PityTracker ClassTracker { get; set; } = new PityTracker();

        [JsonIgnore]
        public PitySettings Settings { get; set; }

        /// <summary>
        /// The state of the game.  Always the same object, but the Mercenaries info changes on 
        /// save creation/load.
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

            MercTracker.Init(() => GameState.Get<Mercenaries>().UnlockedMercenaries, settings);
            ClassTracker.Init(() => GameState.Get<Mercenaries>().UnlockedClasses, settings);
        }

        /// <summary>
        /// The ItemSpawnCommand Version
        /// </summary>
        /// <param name="datadiskRecord"></param>
        /// <param name="datadiskComponent"></param>
        /// <returns></returns>
        public string GetUnlockId(DatadiskRecord datadiskRecord, DatadiskComponent datadiskComponent)
        {
            string unlockId = "";
            switch (datadiskRecord.Id)
            {
                case MercenaryItemId:
                    unlockId = MercTracker.GetUnlockId(datadiskRecord);
                    break;
                case ClassItemId:
                    unlockId = ClassTracker.GetUnlockId(datadiskRecord);
                    break;
                default:
                    //Ex: itemChip
                    unlockId = datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)];
                    break;
            }

            return unlockId;
        }
    }
}
