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
		// Method begins at RVA 0x6eb9d
		// Header size: 1
		// Code size: 6 (0x6)
		.maxstack 8

		// return "Spawn item on floor or in ship cargo. Syntax: item <itemId> <count (optional)>";
		IL_0000: ldstr "Spawn item on floor or in ship cargo. Syntax: item <itemId> <count (optional)>"
		IL_0005: ret
	} // end of method SpawnItemCommand::Help

	.method public hidebysig 
		instance string Execute (
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x6eba4
		// Header size: 12
		// Code size: 357 (0x165)
		.maxstack 5
		.locals init (
			[0] int32,
			[1] int32,
			[2] class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>,
			[3] class MGSC.Player,
			[4] int32,
			[5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>,
			[6] class MGSC.BasePickupItem,
			[7] class MGSC.DatadiskRecord,
			[8] class MGSC.ItemStorage,
			[9] class MGSC.BasePickupItem,
			[10] class MGSC.BasePickupItem
		)

		// int num = 1;
		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		// if (tokens.Length >= 2 && int.TryParse(tokens[1], out var result))
		IL_0002: ldarg.1
		IL_0003: ldlen
		IL_0004: conv.i4
		IL_0005: ldc.i4.2
		IL_0006: blt.s IL_0016

		IL_0008: ldarg.1
		IL_0009: ldc.i4.1
		IL_000a: ldelem.ref
		IL_000b: ldloca.s 1
		IL_000d: call bool [mscorlib]System.Int32::TryParse(string, int32&)
		IL_0012: brfalse.s IL_0016

		// num = result;
		IL_0014: ldloc.1
		IL_0015: stloc.0

		// List<BasePickupItem> list = new List<BasePickupItem>();
		IL_0016: newobj instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::.ctor()
		IL_001b: stloc.2
		// for (int i = 0; i < num; i++)
		IL_001c: ldc.i4.0
		IL_001d: stloc.s 4
		// list.Add(SingletonMonoBehaviour<ItemFactory>.Instance.CreateForInventory(tokens[0]));
		IL_001f: br.s IL_003c
		// loop start (head: IL_003c)
			IL_0021: ldloc.2
			IL_0022: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::get_Instance()
			IL_0027: ldarg.1
			IL_0028: ldc.i4.0
			IL_0029: ldelem.ref
			IL_002a: ldc.i4.0
			IL_002b: ldc.i4.0
			IL_002c: callvirt instance class MGSC.BasePickupItem MGSC.ItemFactory::CreateForInventory(string, bool, bool)
			IL_0031: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::Add(!0)
			// for (int i = 0; i < num; i++)
			IL_0036: ldloc.s 4
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: stloc.s 4

			// for (int i = 0; i < num; i++)
			IL_003c: ldloc.s 4
			IL_003e: ldloc.0
			IL_003f: blt.s IL_0021
		// end loop

		// foreach (BasePickupItem item in list)
		IL_0041: ldloc.2
		IL_0042: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_0047: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item in list)
			IL_0049: br.s IL_0090
			// loop start (head: IL_0090)
				IL_004b: ldloca.s 5
				IL_004d: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_0052: stloc.s 6
				// if (item.Is<DatadiskRecord>())
				IL_0054: ldloc.s 6
				IL_0056: callvirt instance bool MGSC.BasePickupItem::Is<class MGSC.DatadiskRecord>()
				IL_005b: brfalse.s IL_0090

				// DatadiskComponent datadiskComponent = item.Comp<DatadiskComponent>();
				IL_005d: ldloc.s 6
				IL_005f: callvirt instance !!0 MGSC.BasePickupItem::Comp<class MGSC.DatadiskComponent>()
				// DatadiskRecord datadiskRecord = item.Record<DatadiskRecord>();
				IL_0064: ldloc.s 6
				IL_0066: callvirt instance !!0 MGSC.BasePickupItem::Record<class MGSC.DatadiskRecord>()
				IL_006b: stloc.s 7
				// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[Random.Range(0, datadiskRecord.UnlockIds.Count)]);
				IL_006d: ldloc.s 7
				IL_006f: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
				IL_0074: ldc.i4.0
				IL_0075: ldloc.s 7
				IL_0077: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
				IL_007c: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
				IL_0081: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
				IL_0086: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
				IL_008b: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)

				// foreach (BasePickupItem item in list)
				IL_0090: ldloca.s 5
				IL_0092: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_0097: brtrue.s IL_004b
			// end loop

			// (no C# code)
			IL_0099: leave.s IL_00a9
		} // end .try
		finally
		{
			IL_009b: ldloca.s 5
			IL_009d: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_00a3: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// if (SingletonMonoBehaviour<DungeonGameMode>.Instance == null)
			IL_00a8: endfinally
		} // end handler

		IL_00a9: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.DungeonGameMode>::get_Instance()
		IL_00ae: ldnull
		IL_00af: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_00b4: brfalse.s IL_0104

		// ItemStorage itemStorage = _magnumCargo.ShipCargo[0];
		IL_00b6: ldarg.0
		IL_00b7: ldfld class MGSC.MagnumCargo MGSC.SpawnItemCommand::_magnumCargo
		IL_00bc: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage> MGSC.MagnumCargo::ShipCargo
		IL_00c1: ldc.i4.0
		IL_00c2: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage>::get_Item(int32)
		IL_00c7: stloc.s 8
		// foreach (BasePickupItem item2 in list)
		IL_00c9: ldloc.2
		IL_00ca: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_00cf: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item2 in list)
			IL_00d1: br.s IL_00e5
			// loop start (head: IL_00e5)
				IL_00d3: ldloca.s 5
				IL_00d5: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_00da: stloc.s 9
				// itemStorage.AddItemAndReshuffleOptional(item2);
				IL_00dc: ldloc.s 8
				IL_00de: ldloc.s 9
				IL_00e0: callvirt instance void MGSC.ItemStorage::AddItemAndReshuffleOptional(class MGSC.BasePickupItem)

				// foreach (BasePickupItem item2 in list)
				IL_00e5: ldloca.s 5
				IL_00e7: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_00ec: brtrue.s IL_00d3
			// end loop

			// (no C# code)
			IL_00ee: leave.s IL_00fe
		} // end .try
		finally
		{
			IL_00f0: ldloca.s 5
			IL_00f2: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_00f8: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// return "done!";
			IL_00fd: endfinally
		} // end handler

		IL_00fe: ldstr "done!"
		IL_0103: ret

		// Player player = _creatures.Player;
		IL_0104: ldarg.0
		IL_0105: ldfld class MGSC.Creatures MGSC.SpawnItemCommand::_creatures
		IL_010a: ldfld class MGSC.Player MGSC.Creatures::Player
		IL_010f: stloc.3
		// foreach (BasePickupItem item3 in list)
		IL_0110: ldloc.2
		IL_0111: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_0116: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item3 in list)
			IL_0118: br.s IL_0146
			// loop start (head: IL_0146)
				IL_011a: ldloca.s 5
				IL_011c: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_0121: stloc.s 10
				// ItemOnFloorSystem.SpawnItem(_itemsOnFloor, _mapGrid, item3, player.CreatureData.Position);
				IL_0123: ldarg.0
				IL_0124: ldfld class MGSC.ItemsOnFloor MGSC.SpawnItemCommand::_itemsOnFloor
				IL_0129: ldarg.0
				IL_012a: ldfld class MGSC.MapGrid MGSC.SpawnItemCommand::_mapGrid
				IL_012f: ldloc.s 10
				IL_0131: ldloc.3
				IL_0132: ldfld class MGSC.CreatureData MGSC.Creature::CreatureData
				IL_0137: ldfld valuetype MGSC.CellPosition MGSC.CreatureData::Position
				IL_013c: ldc.r4 0.0
				IL_0141: call void MGSC.ItemOnFloorSystem::SpawnItem(class MGSC.ItemsOnFloor, class MGSC.MapGrid, class MGSC.BasePickupItem, valuetype MGSC.CellPosition, float32)

				// foreach (BasePickupItem item3 in list)
				IL_0146: ldloca.s 5
				IL_0148: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_014d: brtrue.s IL_011a
			// end loop

			// (no C# code)
			IL_014f: leave.s IL_015f
		} // end .try
		finally
		{
			IL_0151: ldloca.s 5
			IL_0153: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_0159: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// return "done!";
			IL_015e: endfinally
		} // end handler

		IL_015f: ldstr "done!"
		IL_0164: ret
	} // end of method SpawnItemCommand::Execute

	.method public hidebysig static 
		class [mscorlib]System.Collections.Generic.List`1<string> FetchAutocompleteOptions (
			string command,
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x6ed40
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// return null;
		IL_0000: ldnull
		IL_0001: ret
	} // end of method SpawnItemCommand::FetchAutocompleteOptions

	.method public hidebysig static 
		bool IsAvailable () cil managed 
	{
		// Method begins at RVA 0x6ed43
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// return true;
		IL_0000: ldc.i4.1
		IL_0001: ret
	} // end of method SpawnItemCommand::IsAvailable

	.method public hidebysig static 
		bool ShowInHelpAndAutocomplete () cil managed 
	{
		// Method begins at RVA 0x6ed46
		// Header size: 1
		// Code size: 2 (0x2)
		.maxstack 8

		// return true;
		IL_0000: ldc.i4.1
		IL_0001: ret
	} // end of method SpawnItemCommand::ShowInHelpAndAutocomplete

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x6ed49
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
