using MGSC;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
{
    /// <summary>
    /// The persistence of the Pity progress
    /// </summary>
    public class PityStateRepository : PersistentConfig<PityStateRepository>
    {

        [JsonIgnore]
        public PitySettings PitySettings { get; set; }

        [JsonIgnore]
        public State GameState { get; set; }

        public PityStateRepository() { }
        public PityStateRepository(string configPath) : base(configPath) { }


        public void Init(PitySettings pitySettings, State gameState)
        {
            PitySettings = pitySettings;
            GameState = gameState;

        }

        /// <summary>
        /// The pity state for a save slot by slot's id.  Slots start at zero.
        /// </summary>
        public Dictionary<int, GameModesPityState> SaveSlotPityStates = new Dictionary<int, GameModesPityState>();


        /// <summary>
        /// The pity state for the current save.  Set when a game is loaded or a new game is started.
        /// </summary>
        [JsonIgnore]
        public GameModesPityState CurrentPityState { get; set; } = null;

        /// <summary>
        /// Sets the CurrentPityState for the slot specified.
        /// </summary>
        /// <param name="slot">The game's slot number.  Starts at zero</param>
        /// <param name="isNew">If true, will create reset the pity state for that slot.</param>
        public void LoadCurrent(int slot, bool isNew)
        {
            GameModesPityState pityState;

            if(isNew || !SaveSlotPityStates.TryGetValue(slot, out pityState))
            {
                pityState = new GameModesPityState();
                SaveSlotPityStates[slot] =  pityState;
                Save();
            }

            CurrentPityState = pityState;
            pityState.Init(PitySettings, GameState);
        }

    }
}
