[h1]Quasimorph Pity Unlock![/h1]


Tired of only getting chips for mercenaries, classes, or production items that have already been unlocked?

This mod adds a "pity" system which increases the chances of getting a chip that has not been unlocked.  The game's existing random chip spawn is still used for non "pity" rolls.

By default, this mod is configured to guarantee a chip that is not already unlocked after every unlocked chip found.

There are multiple pity algorithms and settings available such as "always locked", a "hard cap", and "increasing chance".  See the Configuration section below for more information.

[h1]Credits[/h1]

The "Always" mode is similar to functionality that is part of WarStalkeR's "Fight For Universe: Phase Shift" mod. The ability to change the outcome of spawn rolls is his idea and replicated with permission.

[h1]Glossary[/h1]
[table]
[tr]
[td]Term
[/td]
[td]Description
[/td]
[/tr]
[tr]
[td]Pity Roll
[/td]
[td]A 100% chance of spawning an undiscovered item.  Replaces a single, random spawn chance every time the pity threshold is reached.
[/td]
[/tr]
[tr]
[td]Chip
[/td]
[td]Class, merc, or production item chips
[/td]
[/tr]
[tr]
[td]Discovered
[/td]
[td]Chips that have already been unlocked.
[/td]
[/tr]
[/table]

[h1]Spawning and Finding[/h1]

The pity rolls occur at the time of a chip spawn, and the chips are chosen from the list of undiscovered chips at that point in time.  Therefore, it is possible for chips from pity rolls to occur multiple times in a mission or from station rewards.

The player must still find chips from pity rolls as normal.

Anytime an undiscovered chip is spawned, the pity roll counter is reset.

[h1]Configuration[/h1]

[h2]Example Configurations:[/h2]
[list]
[*]Every roll guarantees an undiscovered chip.
[*]After X discovered chip rolls in a row.  Ex: 5 means that after 5 discovered rolls in a row, a pity roll will occur.
[*]For every discovered chip roll, adds an X% increased chance of a pity roll.  Ex: .1 means that after three discovered rolls, there is a 30% chance of a pity roll.
[/list]

[h2]Pity Options[/h2]

The configuration file will be created on the first game run and can be found at [i]%AppData%\..\LocalLow\Magnum Scriptum Ltd\Quasimorph_ModConfigs\QM_PityUnlock\config.json[/i].
[table]
[tr]
[td]Name
[/td]
[td]Default Value
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
[td]Hard mode only setting.  The number of discovered rolls in a row before next roll is a pity roll.
[/td]
[/tr]
[tr]
[td]PercentageMultiplier
[/td]
[td].1
[/td]
[td]Percentage mode only setting.  The multiplier for the increased chance of a pity roll.  Ex: .1 is +10% per discovered roll.
[/td]
[/tr]
[/table]

[h2]Pity Modes[/h2]
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
[td]Every spawned chip will be undiscovered.
[/td]
[/tr]
[tr]
[td]Hard
[/td]
[td]Every X times in a row that an already discovered item is spawned, the next spawn is guaranteed to be undiscovered.
[/td]
[/tr]
[tr]
[td]Percentage
[/td]
[td]An increasing chance of a pity roll per discovered chip roll.  For example, if set to .10, three discovered chip rolls in a row would cause the next roll to have a 30% chance to spawn an item that is not discovered.
[/td]
[/tr]
[/table]

[h1]Support[/h1]

If you enjoy my mods and want to buy me a coffee, check out my [url=https://ko-fi.com/nbkredspy71915]Ko-Fi[/url] page.
Thanks!

[h1]Source Code[/h1]

Source code is available on GitHub at https://github.com/NBKRedSpy/QM_PityUnlock

[h1]Change Log[/h1]

[h2]2.3.1[/h2]
[list]
[*]Version 0.9.1 compatibility
[/list]

[h2]2.3.0[/h2]
[list]
[*]Version 0.8.7 compatibility
[/list]

[h2]2.2.0[/h2]
[list]
[*]Version 0.8.5 Compatibility
[*]Fixed debug command [i]item[/i] to use the Pity Unlock logic for easier debugging.
[/list]

[h2]2.1.0[/h2]
[list]
[*]Changed debug log to be a config setting.
[*]Changed debug log text to a count instead of an "unlocked" list
[/list]

[h2]2.0.0[/h2]
[list]
[*]Data is now saved per save slot.
[/list]
