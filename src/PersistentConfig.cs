using Newtonsoft.Json;
using QM_PityUnlock;
using System;
using System.CodeDom;
using System.IO;
using UnityEngine;

public class PersistentConfig<T> where T: PersistentConfig<T>
{
    [JsonIgnore]
    public string ConfigPath { get; private set; }

    public PersistentConfig()
    {
            
    }

    public PersistentConfig(string configPath)
    {
        ConfigPath = configPath;
    }

    private static readonly JsonSerializerSettings SerializerSettings = new JsonSerializerSettings()
    {
        Formatting = Formatting.Indented,
    };


    public T LoadConfig()
    {
        T config;


        if (File.Exists(ConfigPath))
        {
            try
            {
                string sourceJson = File.ReadAllText(ConfigPath);
                config = JsonConvert.DeserializeObject<T>(sourceJson, SerializerSettings);
                config.ConfigPath = ConfigPath;

                //Add any new elements that have been added since the last mod version the user had.
                string upgradeConfig = JsonConvert.SerializeObject(config, SerializerSettings);

                if (upgradeConfig != sourceJson)
                {
                    Plugin.Log("Updating config with missing elements");
                    config.Save();
                    }


                return config;
            }
            catch (Exception ex)
            {
                Plugin.LogError("Error parsing configuration.  Ignoring config file and using defaults");
                Plugin.LogException(ex);

                //Not overwriting in case the user just made a typo.
                config = (T)Activator.CreateInstance(typeof(T), ConfigPath);
                return config;
            }
        }
        else
        {
            config = (T)Activator.CreateInstance(typeof(T), ConfigPath);

            string json = JsonConvert.SerializeObject(config, SerializerSettings);
            File.WriteAllText(ConfigPath, json);

            return config;
        }


    }

    public void Save()
    {
        try
        {
            string json = JsonConvert.SerializeObject(this, SerializerSettings);
            File.WriteAllText(ConfigPath, json);
        }
        catch (Exception ex)
        {
            Plugin.LogException(ex);
        }
    }
}
