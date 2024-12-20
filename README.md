# Quasimorph Pity Unlock

![thumbnail icon](media/thumbnail.png)

Tired of only getting chips for mercenaries, classes, or production items that have already been unlocked?

This mod adds a "pity" system which increases the chances of getting a chip that has not been unlocked.  The game's existing random chip spawn is still used for non "pity" rolls.

By default, this mod is configured to guarantee a chip that is not already unlocked after every unlocked chip found.

There are multiple pity algorithms and settings available such as "always locked", a "hard cap", and "increasing chance".  See the [Configuration](#configuration) section below for more information.

# Credits
The "Always" mode is similar to functionality that is part of WarStalkeR's "Fight For Universe: Phase Shift" mod. The ability to change the outcome of spawn rolls is his idea and replicated with permission.

# Glossary
|Term|Description|
|--|--|
|Pity Roll|A 100% chance of spawning an undiscovered item.  Replaces a single, random spawn chance every time the pity threshold is reached.|
|Chip|Class, merc, or production item chips|
|Discovered|Chips that have already been unlocked.|

# Spawning and Finding
The pity rolls occur at the time of a chip spawn, and the chips are chosen from the list of undiscovered chips at that point in time.  Therefore, it is possible for chips from pity rolls to occur multiple times in a mission or from station rewards.  

The player must still find chips from pity rolls as normal.

Anytime an undiscovered chip is spawned, the pity roll counter is reset.

# Configuration

## Example Configurations:
* Every roll guarantees an undiscovered chip.
* After X discovered chip rolls in a row.  Ex: 5 means that after 5 discovered rolls in a row, a pity roll will occur.
* For every discovered chip roll, adds an X% increased chance of a pity roll.  Ex: .1 means that after three discovered rolls, there is a 30% chance of a pity roll.

## Pity Options
The configuration file will be created on the first game run and can be found at `%AppData%\..\LocalLow\Magnum Scriptum Ltd\Quasimorph_ModConfigs\QM_PityUnlock\config.json`.

|Name|Default Value|Description|
|--|--|--|
|Mode|Hard|Determines the pity algorithm to use. See the [Pity Modes](#pity-modes) section below.|
|HardPityCount|1|Hard mode only setting.  The number of discovered rolls in a row before next roll is a pity roll.|
|PercentageMultiplier|.1|Percentage mode only setting.  The multiplier for the increased chance of a pity roll.  Ex: .1 is +10% per discovered roll.|

## Pity Modes

|Mode|Description|
|--|--|
|Always|Every spawned chip will be undiscovered.|
|Hard|Every X times in a row that an already discovered item is spawned, the next spawn is guaranteed to be undiscovered.|
|Percentage|An increasing chance of a pity roll per discovered chip roll.  For example, if set to .10, three discovered chip rolls in a row would cause the next roll to have a 30% chance to spawn an item that is not discovered.|

# Support
If you enjoy my mods and want to buy me a coffee, check out my [Ko-Fi](https://ko-fi.com/nbkredspy71915) page.
Thanks!

# Source Code
Source code is available on GitHub at https://github.com/NBKRedSpy/QM_PityUnlock

# Change Log
## 2.0.0
* Data is now saved per save slot.

## 1.2.0
* Moved config file directory.

## 1.1.0
Added production item chips.
