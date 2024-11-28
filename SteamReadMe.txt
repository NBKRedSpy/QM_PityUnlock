[h1]Quasimorph Pity Unlock[/h1]


Tired of only getting chips for mercenaries and classes that have already been unlocked?

This mod adds a "pity" system which increases the chances of getting a class/merc that has not been unlocked.  The game's random class and merc spawn is still used for non "pity" rolls.

[b]Terms:[/b] For simplicity, this doc may refer to "unlocked" mercs and classes as "discovered", and class and merc chips as "chips"

[h2]Defaults and Options[/h2]

By default, the mod guarantees that if a chip that is already discovered is spawned, the next spawn will be one that is not discovered.

There are several ways a to specify when a "pity" roll should occur.

Examples:
[list]
[*]Every roll guarantees a non dupe.
[*]Every X dupes.  For example, 5 means that after 5 dupes, a non dupe is guaranteed.
[*]For every dupe, adds an X% increased chance of a non dupe.  For example, .1 means that after three dupes, there is a 30% chance of a non dupe.
[/list]

Use the "Always" mode in the configuration file to change the rolls to always spawn a chip that is not discovered.

See the configuration section below.

[h1]Credits[/h1]

The "Always" mode is similar to functionality that is part of WarStalkeR's "Fight For Universe: Phase Shift" mod.  The ability to change the outcome of spawn rolls is his idea and replicated with permission.

[h1]Spawning vs Finding[/h1]

A chip spawned by a pity roll only guarantees that an undiscovered chip will spawn.  The player must still find the chip in the mission.

The pity roll only checks if the player [i]currently[/i] has discovered the chip.  Therefore, it is possible to get the same undiscovered chips for mission spawns and station rewards.  Even if the player has the chip in inventory and is locked.

Anytime an undiscovered chip is spawned, the pity roll counter is reset.

[h1]Configuration[/h1]

The configuration file will be created on the first game run and can be found at [i]%AppData%\..\LocalLow\Magnum Scriptum Ltd\Quasimorph\QM_PityUnlock\config.json[/i].
[table]
[tr]
[td]Name
[/td]
[td]Default
[/td]
[td]Description
[/td]
[/tr]
[tr]
[td]Mode
[/td]
[td]Hard
[/td]
[td]Determines the pity algorithm to use. See the Pity Modes section below.
[/td]
[/tr]
[tr]
[td]HardPityCount
[/td]
[td]1
[/td]
[td]Hard mode only setting.  The number of "failed" rolls before next roll is guaranteed to be undiscovered.
[/td]
[/tr]
[tr]
[td]PercentageMultiplier
[/td]
[td].1
[/td]
[td]Percentage mode only setting.  The multiplier for the increased chance of a pity roll, per duplicate roll. Ex: .1 is +10% per duplicate roll.
[/td]
[/tr]
[/table]

[h2]Pity Modes[/h2]

There are multiple modes for how the "pity" system works.
[table]
[tr]
[td]Mode
[/td]
[td]Description
[/td]
[/tr]
[tr]
[td]Always
[/td]
[td]Every spawned chip will be types that have not been discovered.
[/td]
[/tr]
[tr]
[td]Hard
[/td]
[td]Every X times an already discovered item is spawned, the next spawn is guaranteed to be undiscovered.
[/td]
[/tr]
[tr]
[td]Percentage
[/td]
[td]Increases chance of an undiscovered chip to spawn based on how many duplicates have been rolled. For example, if set to .10, three duplicate rolls would cause the next roll to have a 30% chance to spawn an item that is not discovered.
[/td]
[/tr]
[/table]

[h1]Support[/h1]

If you enjoy my mods and want to buy me a coffee, check out my [url=https://ko-fi.com/nbkredspy71915]Ko-Fi[/url] page.
Thanks!

[h1]Source Code[/h1]

Source code is available on GitHub at https://github.com/NBKRedSpy/QM_PityUnlock
