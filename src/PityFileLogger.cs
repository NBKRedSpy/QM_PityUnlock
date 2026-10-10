using System;
using System.IO;
using System.Text;

namespace PityUnlock
{
    /// <summary>
    /// A dedicated file logger used to record pity roll details to a standalone log file,
    /// separate from the mod's regular Unity Debug logging.
    /// </summary>
    public class PityFileLogger
    {
        /// <summary>
        /// The full path to the dedicated pity log file.
        /// </summary>
        public string LogFilePath { get; }

        public PityFileLogger(string logFilePath)
        {
            LogFilePath = logFilePath;
        }

        /// <summary>
        /// Resets the log file, creating an empty file (or truncating an existing one).
        /// Should be called once when the mod starts.
        /// </summary>
        public void Reset()
        {
            try
            {
                File.WriteAllText(LogFilePath, string.Empty, Encoding.UTF8);
            }
            catch (Exception ex)
            {
                Plugin.Logger.LogError(ex, $"Unable to reset the dedicated pity log file '{LogFilePath}'");
            }
        }

        /// <summary>
        /// Appends a timestamped message to the dedicated pity log file.
        /// </summary>
        public void Log(string message)
        {
            try
            {
                File.AppendAllText(LogFilePath, $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss}] {message}{Environment.NewLine}", Encoding.UTF8);
            }
            catch (Exception ex)
            {
                Plugin.Logger.LogError(ex, $"Unable to write to the dedicated pity log file '{LogFilePath}'");
            }
        }
    }
}
