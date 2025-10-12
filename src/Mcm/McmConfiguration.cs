using HarmonyLib;
using ModConfigMenu;
using ModConfigMenu.Contracts;
using ModConfigMenu.Implementations;
using ModConfigMenu.Objects;
using System;
using System.CodeDom;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml;
using UnityEngine;

namespace PityUnlock.Mcm
{
    internal class McmConfiguration : McmConfigurationBase
    {

        public McmConfiguration(ModConfig config) : base (config) { }

        public override void Configure()
        {

            string yellow = "<color=#FBE343>";

            ModConfig defaults = new ModConfig();
            PitySettings pitySettings = Plugin.Config.PitySettings;

            ModConfig config = (ModConfig)Config;

            ModConfigMenuAPI.RegisterModConfig("Pity Unlock", new List<IConfigValue>()
            {
                new DropdownConfig(nameof(pitySettings.Mode), pitySettings.Mode.ToString(), "General", 
                    defaults.PitySettings.Mode.ToString(),
                    $"""
                    The pity strategy to use.

                    {yellow}Always</color>: Every attempt is guaranteed to be a new unlock.

                    {yellow}Hard:</color> After <Hard Pity Count> failed attempts, the next attempt is guaranteed to be a new unlock.  

                    {yellow}Percentage:</color> Each failed attempt increases the chance of a new unlock by <Increasing Chance Percent>.  
                    For example, if <Percentage Multiplier> is 10, the fourth attempt after three failed attempts will have a 30% chance 
                    to guarantee a new unlock.
                    ""","Mode", 
                        Enum.GetNames(typeof(PityMode))
                            .Where(x=> x != "Invalid")
                            .ToList<object>() ),
                new ConfigValue(nameof(pitySettings.HardPityCount),pitySettings.HardPityCount, "General", defaults.PitySettings.HardPityCount,
                    $"{yellow}Only used by hard mode.</color>  The number of failed attempts before the next attempt " +
                    "is guaranteed to be a new unlock when using the Hard pity mode.", "Hard Pity Count",min: 1f, max: 100f),

                new ConfigValue(nameof(pitySettings.PercentageMultiplier), pitySettings.PercentageMultiplier * 100, 
                    "General", defaults.PitySettings.PercentageMultiplier * 100,
                    $"""
                    {yellow}Only used by percentage mode.</color>  The increased percentage chance of forcing a new unlock.
                    For example, if set to 10, the fourth attempt after three failed attempts will have a 30% chance to guarantee a new unlock.
                    """, "Increasing Chance Percent", min: 1f, max: 100f),

                CreateConfigProperty(nameof(ModConfig.VerboseDebug), "Enables verbose debug logging.")
            }, OnSave);
        }

        protected override bool OnSave(Dictionary<string, object> currentConfig, out string feedbackMessage)
        {

            ModConfig config = (ModConfig)Config;   
            PitySettings pitySettings = config.PitySettings; 

            feedbackMessage = "";

            foreach (var entry in currentConfig)
            {

                SetModConfigValue(entry.Key, entry.Value);


                switch (entry.Key)
                {
                    case nameof(ModConfig.VerboseDebug):
                        config.VerboseDebug = (bool)entry.Value;
                        break;
                    case nameof(pitySettings.Mode):
                        pitySettings.Mode = (PityMode)Enum.Parse(typeof(PityMode), (string)entry.Value);
                        break;
                    case nameof(pitySettings.HardPityCount):
                        pitySettings.HardPityCount = (int)entry.Value;
                        break;
                    case nameof(pitySettings.PercentageMultiplier):
                        pitySettings.PercentageMultiplier = (float)entry.Value / 100f;
                        break;
                    case "__Restart":
                        break;
                    default:
                        throw new Exception($"Unknown config key {entry.Key} in OnSave.");
                }
            }

            Config.Save();

            return true;
        }
    }
}
