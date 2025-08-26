using HarmonyLib;
using ModConfigMenu;
using ModConfigMenu.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace QM_PityUnlock
{
    internal class McmConfiguration
    {

        private static ConfigValue RestartConfigNote = new ConfigValue("__Notice", "The game must be restarted for any changes to take effect", "Note");

        public ModConfig Config { get; set; }

        public PitySettings PitySettings { get; set; }

        public McmConfiguration(ModConfig config)
        {
            Config = config;
            PitySettings = config.PitySettings;
        }

        /// <summary>
        /// Attempts to configure the MCM, but logs an error and continues if it fails.
        /// </summary>
        public bool TryConfigure()
        {
            try
            {
                Configure();
                return true;
            }
            catch (Exception ex)
            {
                Debug.Log("An error occurred when configuring MCM");
                Debug.LogException(ex);
                return false;
            }
            
        }
        public void Configure()
        {

            string modeTooltip =
                """
                Always: Will always a chip that has not been unlocked.
                Percentage: An additive percentage for each already unlocked chip.  Uses the 'Percentage Multiplier' setting
                Hard: After X failed attempts, the next pull is guaranteed to be an item not already unlocked. Uses the 'Hard Pity Count' setting.
                """;

            PitySettings defaults = new PitySettings();

            ModConfigMenuAPI.RegisterModConfig("Pity Unlock", new List<ConfigValue>()
            {
                //CreateConfigProperty(nameof(PitySettings.PercentageMultiplier), defaults.PercentageMultiplier, "Only used for 'Percentage' mode.  the percent increase for each duplicate roll.  Ex: At .10, finding two locked chips would have a 20% chance of the next chip being unlocked.",
                //    "Percentage Multiplier",.01f, 1f),

                //CreateConfigProperty(nameof(PitySettings.HardPityCount), defaults.HardPityCount, "Only used for 'Hard' mode.  After this number of failed attempts, the next attempt is guaranteed to be a new unlock.", "Hard Pity Count", 1, 100),

                //new ConfigValue(nameof(PitySettings.Mode), PitySettings.Mode, "General", defaults.Mode, modeTooltip,
                //    "Mode", new List<string>() { "Always", "Percentage", "Hard"}),

                new ConfigValue(nameof(PitySettings.Mode), PitySettings.Mode, "General", defaults.Mode, "test tooltip",
                    "Mode", new List<string>() { "Always", "Percentage", "Hard"}),


                //RestartConfigNote,
            }, OnSave);
        }

        private ConfigValue CreateConfigProperty(string propertyName, float defaultValue,
            string tooltip, string label, float min, float max, string header = "General")
        {
            float propertyValue = (float)AccessTools.Property(typeof(PitySettings), propertyName).GetValue(PitySettings);

            return new ConfigValue(propertyName, propertyValue, header, defaultValue, tooltip, label, min, max);
        }

        private ConfigValue CreateConfigProperty(string propertyName, int defaultValue,
            string tooltip, string label, int min, int max, string header = "General" )
        {
            int propertyValue = (int)AccessTools.Property(typeof(PitySettings), propertyName).GetValue(PitySettings);

            return new ConfigValue(propertyName, propertyValue, header, defaultValue, tooltip, label, min,max);
        }

        private ConfigValue CreateConfigProperty<T>(string propertyName, T defaultValue, 
            string tooltip, string label, string header = "General") where T: struct
        {
            T propertyValue = (T) AccessTools.Property(typeof(PitySettings), propertyName).GetValue(PitySettings);

            return new ConfigValue(propertyName, propertyValue, header, defaultValue, tooltip, label);
        }

        /// <summary>
        /// Sets the ModConfig's property that matches the ConfigValue key.
        /// Returns false if the property could not be found.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="value"></param>
        private bool SetModConfigValue(string key, object value)
        {
            //TODO: Refactor this to a class.
            //TODO: continuing if there is no match since items like the "Must restart" note is not a property.
            MethodInfo setter = AccessTools.PropertySetter(typeof(ModConfig), key);
            if (setter == null) return false;

            setter.Invoke(Config, new object[] { value});
            return true;
        }

        private bool OnSave(Dictionary<string, object> currentConfig, out string feedbackMessage)
        {
            //debug
            feedbackMessage = "";
            return true;

            //feedbackMessage = "";

            //try
            //{
            //    foreach (var configItem in currentConfig)
            //    {
            //        SetModConfigValue(configItem.Key, configItem.Value);
            //    }

            //    Config.SaveConfig();

            //    return true;
            //}
            //catch (Exception ex)
            //{
            //    Debug.LogError("Error saving the configuration");
            //    Debug.LogException(ex);
            //    return false;
            //}
        }
    }
}
