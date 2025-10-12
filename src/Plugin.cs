using HarmonyLib;
using MGSC;
using PityUnlock.Mcm;
using PityUnlock_Bootstrap;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace PityUnlock
{
    public class Plugin : BootstrapMod
    {
        public static string ModAssemblyName => Assembly.GetExecutingAssembly().GetName().Name;

        public static ConfigDirectories ConfigDirectories = new ConfigDirectories();

        public static ModConfig Config { get; private set; }

        public static Logger Logger { get; private set; } = new Logger(ModAssemblyName);    

        public static State GameState { get; private set; }

        internal static McmConfiguration McmConfiguration { get; private set; }

        public static PityStateRepository PityStateDb { get; private set; } = new PityStateRepository();

        public Plugin(HookEvents hookEvents, bool isBeta) : base(hookEvents, isBeta)
        {
            hookEvents.AfterConfigsLoaded += AfterConfig;
        }

        public static void AfterConfig(IModContext context)
        {
            GameState = context.State;

            Directory.CreateDirectory(ConfigDirectories.AllModsConfigFolder);
            ConfigDirectories = new ConfigDirectories();
            ConfigDirectories.UpgradeModDirectory();
            Directory.CreateDirectory(ConfigDirectories.ModPersistenceFolder);

            Config = new ModConfig(ConfigDirectories.ConfigPath).LoadConfig();
            McmConfiguration = new McmConfiguration(Config);
            McmConfiguration.Configure();   

            string pityStateFilePath = Path.Combine(ConfigDirectories.ModPersistenceFolder, "PityState.json");

            PityStateDb = new PityStateRepository(pityStateFilePath).LoadConfig();
            PityStateDb.Init(Config.PitySettings, GameState);
            PityStateDb.Save();

            new Harmony("NBKRedSpy_" + ModAssemblyName).PatchAll();
        }

    }
}
