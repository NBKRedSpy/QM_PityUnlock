# Pity Unlock Mod Verification

Since chip spawns are random and there is no feedback to the user, testing this mod requires direct manipulation.


## Important!

As per the mod's documentation, the chip is chosen when the chip is created, not when the user finds or unlocks the chip. It is expected that sometimes  exact same unlocked chip twice will be found twice in a raid or at a station.

If it appears the mod is not working, try doing a Steam Verification to force all mods to update.  Then try removing all other mods.  Then follow the testing steps below if not already fixed from a previous step.

# Quick Overview

The test involves:
* Enable the mod's verbose debug output.
* Create a new save.
* Spawn 5 `mercenary_chip`s.
* Check the player.log for the mod's debug messages.  
* Unlock the chips and repeat the tests until a pity roll occurs.

# Requirements
* The mod itself.
* Developer Console mod https://steamcommunity.com/sharedfiles/filedetails/?id=3281579458 .
* A new save.

# Testing - Detailed Steps

1. Enable verbose console logging in the mod's config file.  Found at main menu -> Mods -> Pity Unlock -> Verbose Debug.
1. In a text editor, open the Player.log found at `%UserProfile%\AppData\LocalLow\Magnum Scriptum Ltd\Quasimorph\Player.log`.
	* Alternatively, you can use the External Log mod which displays the game's logging in real time.  https://steamcommunity.com/sharedfiles/filedetails/?id=3373666884 .
1. Start a new save, bypassing the tutorial.
1. Go to the ship's cargo.
1. Open the developer console.  Press the backtick '`'. Usually below the ESC key.
1. type `item mercenary_chip 5` and enter to spawn 5 merc chips. 
	Note that the pity rolls are at time of spawn.  So it is possible to get the exact same locked chips per in 5 chip rolls.
	`mercenary_chip` is used since it currently only has 16 chips, which is a good count for testing pity and non pity rolls.
1. Close the dev console.
1. In the external log (or the player.log file), there should be log entries such as: 
	```
	[PityUnlock] ====== Regular Roll.  Miss Count 0: Not Unlocked: 13
	[PityUnlock] Item id: priya_marlon
	[PityUnlock] Random Value: 21
	```
	*Note*: If your text editor does not automatically refresh the file, you may  need to close and reopen the file.
1. Force the spawned chips to be displayed in the inventory by changing tabs and coming back.
1. Unlock the chips.
1. Repeat the spawn and checking steps above until a pity roll is found in the log.
	A pity roll can be verified by the following log entry:
	```
	[PityUnlock] Random Value: 8
	[PityUnlock] ++++++ Pity Roll:  Not Unlocked: 13
	[PityUnlock] Item id: jacques_kennet
	```

