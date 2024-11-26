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
        public PityStateRepository() { }
        public PityStateRepository(string configPath) : base(configPath) { }

        public  GameModesPityState PityStates { get; set; } = new GameModesPityState();
    }
}
