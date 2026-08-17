[h1]Quasimorph Pity Unlock![/h1]


Tired of only getting chips for mercenaries, classes, or production items that have already been unlocked?  This mod adds a "pity" system where the user has an increased chance to get a chip that will unlock something new.

The default config of this mod will always roll a "locked" chip after each already "unlocked" chip of that type was found.

There are multiple options to tailor the pity roll conditions to taste.  The settings are found in the Main Menu -> Mods -> Pity Unlock.  Hover over the setting name on the left to see the setting's description.

See the Configuration section below for more information on the settings.

[h1]I See Dupe Chips Even With Always Mode![/h1]

This mod works by changing the results of the game's rolls for chip unlocks.  The rolls occur when the chips are [i]created[/i] by the game, not when bought or picked up.  This can cause the player to possibly get the same locked chips since they didn't have them when the chips were rolled.

Chips are created at these times:
[list]
[*]When a mission is started, all chips are generated for that mission.
[*]When stations refresh their inventory.
[*]When a user buys more than one chip of the same type at the same station, the chips beyond the first are generated.
[/list]

I would like to change this to be at purchase or pickup, but this is currently a low priority.  The GitHub source is linked below if anyone would like to contribute.

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

[h1]Diagnostics[/h1]

As per the mod's documentation, the chip is chosen when the chip is created, not when the user finds or unlocks the chip. It is expected that sometimes  exact same unlocked chip will be found twice in a raid or at stations.

The first step is to do a Steam File Verification to force the mods to update.

If the mod appears to not be working, the testing steps can be found at https://github.com/NBKRedSpy/QM_PityUnlock/blob/main/Testing.md .

[h1]Credits[/h1]

Huge thanks to Crynano for their Mod Configuration Menu which adds the mod configuration screen.

The "Always" mode is similar to functionality that is part of WarStalkeR's "Fight For Universe: Phase Shift" mod. The ability to change the outcome of spawn rolls is his idea and replicated with permission.

[h1]Support[/h1]

If you enjoy my mods and want to buy me a coffee, check out my [url=https://ko-fi.com/nbkredspy71915]Ko-Fi[/url] page.
Thanks!

[h1]Source Code[/h1]

Source code is available on GitHub at https://github.com/NBKRedSpy/QM_PityUnlock

[h1]Change Log[/h1]

[h2]2.4.6[/h2]
[list]
[*]Updated to support 1.0 version number
[/list]

[h2]2.4.5[/h2]
[list]
[*]Fixed MCM being required
[/list]

[h2]2.4.4[/h2]
[list]
[*]UNSTABLE BETA.501 compatibility
[/list]

[h2]2.4.3[/h2]
[list]
[*]0.9.8.2 compatibility.
[/list]

[h2]2.4.2[/h2]
[list]
[*]MCM Integration
[/list]

[h2]2.4.1[/h2]
[list]
[*]Multiple version support.
[/list]

[h2]2.4.0[/h2]
[list]
[*]Version 0.9.6 compatibility
[/list]
