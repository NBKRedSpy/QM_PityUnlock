using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
{
 
    /// <summary>
    /// The configuration for the Pity system.
    /// </summary>
    public class PitySettings
    {
        /// <summary>
        /// The pity mode to use.
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public PityMode Mode { get; set; } = PityMode.Hard;

        /// <summary>
        /// When in Hard mode, after this number of failed attempts, the next attempt is guaranteed to be a new unlock.
        /// </summary>
        public int HardPityCount { get; set; } = 1;

        /// <summary>
        /// When in percentage mode, this is the increased percentage chance of forcing a new unlock.
        /// For example, if set to .10, the fourth attempt after three failed attempts will have a 30% chance to guarantee a new unlock.
        /// </summary>
        public float PercentageMultiplier { get; set; } = .1f;
    }
}
