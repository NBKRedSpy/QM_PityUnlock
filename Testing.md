# Testing
Enable verbose console logging in the mod's config file.

Can test via `item` console command, or by changing the drops in the config_drops data.


console:
```
item merkUSB
item classUSB
```

# Spawn
Reward drops from station missions are created at the time the mission is created.
Mission drops are created when the mission is started.

# Data
Use the Simple Data Import mod to change all of the containers to only have USB items.
Data is in the config_drops data set.

It is best to have the build in debug mode to see the results in the log.

Example:
```
#itemdrop_poppycontainer			
TechLevel	ContentIds	Weight	Points
	classUSB	50	1
	merkUSB	50	1
#end			
```

## RegEx
Reg Ex to replace all of the item drops with only items

Search:
```regex
(#itemdrop_.*?\r\nTechLevel	ContentIds	Weight	Points\r\n)(\t.*?\r\n+)(#end)
```

Replace:
```
$1	itemChip	1	1
	mediumItemChip	1	1
	highItemChip	1	1
	RealWareItemChip	1	1
	SBNItemChip	1	1
	AncomItemChip	1	1
	DayDreamItemChip	1	1
	SunLightItemChip	1	1
	CoreItemChip	1	1
	PlanetBridgeItemChip	1	1
	GrassHopperItemChip	1	1
	ChurchItemChip	1	1
	FrancheItemChip	1	1
	DiltheyItemChip	1	1
	merkUSB	1	1
	classUSB	1	1
$3
```

