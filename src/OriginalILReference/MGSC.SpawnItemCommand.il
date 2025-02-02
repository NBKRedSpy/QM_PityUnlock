.class public auto ansi beforefieldinit MGSC.SpawnItemCommand
	extends [mscorlib]System.Object
{
	.custom instance void MGSC.ConsoleCommandAttribute::.ctor(string[]) = (
		01 00 01 00 00 00 04 69 74 65 6d 00 00
	)
	// Fields
	.field private initonly class MGSC.MagnumCargo _magnumCargo
	.custom instance void MGSC.Inject::.ctor(bool) = (
		01 00 00 00 00
	)
	.field private initonly class MGSC.MapGrid _mapGrid
	.custom instance void MGSC.Inject::.ctor(bool) = (
		01 00 00 01 00 53 02 09 41 6c 6c 6f 77 4e 75 6c
		6c 01
	)
	.field private initonly class MGSC.Creatures _creatures
	.custom instance void MGSC.Inject::.ctor(bool) = (
		01 00 00 01 00 53 02 09 41 6c 6c 6f 77 4e 75 6c
		6c 01
	)
	.field private initonly class MGSC.ItemsOnFloor _itemsOnFloor
	.custom instance void MGSC.Inject::.ctor(bool) = (
		01 00 00 01 00 53 02 09 41 6c 6c 6f 77 4e 75 6c
		6c 01
	)

	// Methods
	.method public hidebysig static 
		string Help (
			string command,
			bool verbose
		) cil managed 
	{
		// Method begins at RVA 0x428a4
		// Header size: 1
		// Code size: 6 (0x6)
		.maxstack 8

		// 	return "Spawn item on floor or in ship cargo. Syntax: item <itemId>";
		IL_0000: ldstr "Spawn item on floor or in ship cargo. Syntax: item <itemId>"
		IL_0005: ret
	} // end of method SpawnItemCommand::Help

	.method public hidebysig 
		instance string Execute (
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x428ac
		// Header size: 12
		// Code size: 157 (0x9d)
		.maxstack 4
		.locals init (
			[0] class MGSC.BasePickupItem,
			[1] class MGSC.Player,
			[2] class MGSC.DatadiskRecord
		)

		// 	BasePickupItem basePickupItem = SingletonMonoBehaviour<ItemFactory>.Instance.CreateForInventory(tokens[0]);
		IL_0000: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::get_Instance()
		IL_0005: ldarg.1
		IL_0006: ldc.i4.0
		IL_0007: ldelem.ref
		IL_0008: ldc.i4.0
		IL_0009: callvirt instance class MGSC.BasePickupItem MGSC.ItemFactory::CreateForInventory(string, bool)
		IL_000e: stloc.0
		// 	if (basePickupItem.Is<DatadiskRecord>())
		IL_000f: ldloc.0
		IL_0010: callvirt instance bool MGSC.BasePickupItem::Is<class MGSC.DatadiskRecord>()
		IL_0015: brfalse.s IL_0045

		// 		DatadiskComponent datadiskComponent = basePickupItem.Comp<DatadiskComponent>();
		IL_0017: ldloc.0
		IL_0018: callvirt instance !!0 MGSC.BasePickupItem::Comp<class MGSC.DatadiskComponent>()
		// 		DatadiskRecord datadiskRecord = basePickupItem.Record<DatadiskRecord>();
		IL_001d: ldloc.0
		IL_001e: callvirt instance !!0 MGSC.BasePickupItem::Record<class MGSC.DatadiskRecord>()
		IL_0023: stloc.2
		// 		datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[Random.Range(0, datadiskRecord.UnlockIds.Count)]);
		IL_0024: ldloc.2
		IL_0025: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_002a: ldc.i4.0
		IL_002b: ldloc.2
		IL_002c: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_0031: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
		IL_0036: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
		IL_003b: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_0040: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)

		// 	if (SingletonMonoBehaviour<DungeonGameMode>.Instance == null)
		IL_0045: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.DungeonGameMode>::get_Instance()
		IL_004a: ldnull
		IL_004b: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_0050: brfalse.s IL_006f

		// 		_magnumCargo.ShipCargo[0].AddItemAndReshuffleOptional(basePickupItem);
		IL_0052: ldarg.0
		IL_0053: ldfld class MGSC.MagnumCargo MGSC.SpawnItemCommand::_magnumCargo
		IL_0058: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage> MGSC.MagnumCargo::ShipCargo
		IL_005d: ldc.i4.0
		IL_005e: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage>::get_Item(int32)
		IL_0063: ldloc.0
		IL_0064: callvirt instance void MGSC.ItemStorage::AddItemAndReshuffleOptional(class MGSC.BasePickupItem)
		// 		return "done!";
		IL_0069: ldstr "done!"
		IL_006e: ret

		// 	Player player = _creatures.Player;
		IL_006f: ldarg.0
		IL_0070: ldfld class MGSC.Creatures MGSC.SpawnItemCommand::_creatures
		IL_0075: ldfld class MGSC.Player MGSC.Creatures::Player
		IL_007a: stloc.1
		// 	ItemOnFloorSystem.SpawnItem(_itemsOnFloor, basePickupItem, player.CreatureData.Position);
		IL_007b: ldarg.0
		IL_007c: ldfld class MGSC.ItemsOnFloor MGSC.SpawnItemCommand::_itemsOnFloor
		IL_0081: ldloc.0
		IL_0082: ldloc.1
		IL_0083: ldfld class MGSC.CreatureData MGSC.Creature::CreatureData
		IL_0088: ldfld valuetype MGSC.CellPosition MGSC.CreatureData::Position
		IL_008d: ldc.r4 0.0
		IL_0092: call void MGSC.ItemOnFloorSystem::SpawnItem(class MGSC.ItemsOnFloor, class MGSC.BasePickupItem, valuetype MGSC.CellPosition, float32)
		// 	return "done!";
		IL_0097: ldstr "done!"
		IL_009c: ret
	} // end of method SpawnItemCommand::Execute

	.method public hidebysig static 
		class [mscorlib]System.Collections.Generic.List`1<string> FetchAutocompleteOptions (
			string command,
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x42955
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// 	return null;
		IL_0000: ldnull
		IL_0001: ret
	} // end of method SpawnItemCommand::FetchAutocompleteOptions

	.method public hidebysig static 
		bool IsAvailable () cil managed 
	{
		// Method begins at RVA 0x42958
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// 	return true;
		IL_0000: ldc.i4.1
		IL_0001: ret
	} // end of method SpawnItemCommand::IsAvailable

	.method public hidebysig static 
		bool ShowInHelpAndAutocomplete () cil managed 
	{
		// Method begins at RVA 0x4295b
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// 	return true;
		IL_0000: ldc.i4.1
		IL_0001: ret
	} // end of method SpawnItemCommand::ShowInHelpAndAutocomplete

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x4295e
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// {
		IL_0000: ldarg.0
		// }
		IL_0001: call instance void [mscorlib]System.Object::.ctor()
		IL_0006: ret
	} // end of method SpawnItemCommand::.ctor

} // end of class MGSC.SpawnItemCommand
