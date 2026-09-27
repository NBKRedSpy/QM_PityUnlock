using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MGSC;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using UnityEngine;

namespace PityUnlock
{
    public class ModConfig : PersistentConfig<ModConfig> 
    {
        public ModConfig(){}
        public ModConfig(string configPath): base(configPath) { }   

        public PitySettings PitySettings { get; set; } = new PitySettings();

        public bool VerboseDebug { get; set; } = false;

        /// <summary>
        /// When enabled, logs pity roll details to a dedicated "pity-rolls.log" file in the
        /// mod's persistence folder, separate from the regular mod logging.
        /// </summary>
        public bool DedicatedPityLog { get; set; } = false;
    }
}
