[h1]Quasimorph QM_PityUnlock[/h1]


Tired of only getting chips for mercenaries and class that have already been unlocked?

This mod adds a "pity" system which increases the chances of getting a class/merc that has not been unlocked.
It also has a mode to always drop merc/class chips that the player has not unlocked.

By default, the mod guarantees that if an already unlocked class/merc is spawned, the next spawn will be one that is not unlocked.
Use the "Always" mode in the configuration file to ensure every spawn is not unlocked.

See the configuration section below.

[h1]Credits[/h1]

The "Always" mode is similar to functionality that is part of WarStalkeR's "Fight For Universe: Phase Shift".

[h1]Spawning vs Finding[/h1]

A pity roll only guarantees that an item that is not unlocked will spawn.  The user must still find the chip just like any chip.

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
[td]Determines the pity algorithm to use. See the Pity Modes section below
[/td]
[/tr]
[tr]
[td]HardPityCount
[/td]
[td]1
[/td]
[td]Hard mode setting.  The number of "failed" rolls before a roll is guaranteed to not be unlocked
[/td]
[/tr]
[tr]
[td]PercentageMultiplier
[/td]
[td].1
[/td]
[td]Percentage mode setting.  The increased chance for a pity roll for each dupe roll.
[/td]
[/tr]
[/table]

[h2]Pity Modes[/h2]

There are several options for how the "pity" system works.
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
[td]Every spawned merc/class chip will types that have not been unlocked.
[/td]
[/tr]
[tr]
[td]Hard
[/td]
[td]Every X times an already unlocked item is spawned, the spawn is guaranteed to not be unlocked
[/td]
[/tr]
[tr]
[td]Percentage
[/td]
[td]Increases chance of not unlocked spawn based on how many dupes have been rolled. For example, if set to .10, three duplicate rolls would cause the next roll to have a 30% chance to spawn item that is not unlocked
[/td]
[/tr]
[/table]

[h1]Support[/h1]

If you enjoy my mods and want to buy me a coffee, check out my [url=https://ko-fi.com/nbkredspy71915]Ko-Fi[/url] page.
Thanks!

[h1]Source Code[/h1]

Source code is available on GitHub at https://github.com/NBKRedSpy/QM_PityUnlock
