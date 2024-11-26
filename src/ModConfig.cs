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

namespace QM_PityUnlock
{
    public class ModConfig : PersistentConfig<ModConfig>
    {
        public ModConfig(){}
        public ModConfig(string configPath): base(configPath) { }   

        public PitySettings PitySettings { get; set; } = new PitySettings();

        public bool VerboseDebug { get; set; } = false;
    }
}
