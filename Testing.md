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
