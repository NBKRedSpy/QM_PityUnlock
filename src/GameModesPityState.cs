using MGSC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
{
    /// <summary>
    /// The pitty state for each of the game modes.
    /// </summary>
    public class GameModesPityState
    {
        public PityState DungeonMode { get; set; } = new PityState();
        public PityState OverworldMode { get; set; } = new PityState();

        public int Version { get; set; } = 1;

        public void Init(PitySettings settings, State gameState)
        {

            DungeonMode.Init(settings, gameState);
            OverworldMode.Init(settings, gameState);
        }
    }
}
