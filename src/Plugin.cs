﻿using HarmonyLib;
using MGSC;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace QM_PityUnlock
{
    public static class Plugin
    {
        public static string ModAssemblyName => Assembly.GetExecutingAssembly().GetName().Name;

        public static string ConfigPath => Path.Combine(Application.persistentDataPath, ModAssemblyName, "config.json");
        public static string ModPersistenceFolder => Path.Combine(Application.persistentDataPath, ModAssemblyName);
        public static ModConfig Config { get; private set; }

        public static State GameState { get; private set; }

        public static PityStateRepository PityStateDb { get; private set; } = new PityStateRepository();

        [Hook(ModHookType.AfterConfigsLoaded)]
        public static void AfterConfig(IModContext context)
        {
            GameState = context.State;

            Directory.CreateDirectory(ModPersistenceFolder);
            Config = new ModConfig(ConfigPath).LoadConfig();

            string pityStateFilePath = Path.Combine(Application.persistentDataPath, ModAssemblyName, "PityState.json");

            PityStateDb = new PityStateRepository(pityStateFilePath).LoadConfig();
            PityStateDb.PityStates.Init(Config.PitySettings, GameState);
            PityStateDb.Save();

            new Harmony("NBKRedSpy_" + ModAssemblyName).PatchAll();
        }

        #region Logging
        public static void Log(string message)
        {
            Debug.Log($"[{ModAssemblyName}] {message}");
        }

        public static void LogWarning(string message)
        {
            Debug.LogWarning($"[{ModAssemblyName}] {message}");
        }

        public static void LogError(string message)
        {
            Debug.LogError($"[{ModAssemblyName}] {message}");
        }

        public static void LogException(Exception ex)
        {
            Debug.LogError($"[{ModAssemblyName}] Exception Logged:");
            Debug.LogException(ex);
        }

        #endregion


    }
}