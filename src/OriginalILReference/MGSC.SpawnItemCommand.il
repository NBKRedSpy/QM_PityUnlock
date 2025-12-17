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
		// Method begins at RVA 0x67ae2
		// Header size: 1
		// Code size: 6 (0x6)
		.maxstack 8

		// return "Spawn item on floor or in ship cargo. Syntax: item <itemId>";
		IL_0000: ldstr "Spawn item on floor or in ship cargo. Syntax: item <itemId>"
		IL_0005: ret
	} // end of method SpawnItemCommand::Help

	.method public hidebysig 
		instance string Execute (
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x67aec
		// Header size: 12
		// Code size: 356 (0x164)
		.maxstack 5
		.locals init (
			[0] int32 num,
			[1] int32 result,
			[2] class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem> list,
			[3] class MGSC.Player player,
			[4] int32 i,
			[5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem> enumerator,
			[6] class MGSC.BasePickupItem item,
			[7] class MGSC.DatadiskRecord datadiskRecord,
			[8] class MGSC.ItemStorage itemStorage,
			[9] class MGSC.BasePickupItem item2,
			[10] class MGSC.BasePickupItem item3
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
		IL_001f: br.s IL_003b
		// loop start (head: IL_003b)
			IL_0021: ldloc.2
			IL_0022: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::get_Instance()
			IL_0027: ldarg.1
			IL_0028: ldc.i4.0
			IL_0029: ldelem.ref
			IL_002a: ldc.i4.0
			IL_002b: callvirt instance class MGSC.BasePickupItem MGSC.ItemFactory::CreateForInventory(string, bool)
			IL_0030: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::Add(!0)
			// for (int i = 0; i < num; i++)
			IL_0035: ldloc.s 4
			IL_0037: ldc.i4.1
			IL_0038: add
			IL_0039: stloc.s 4

			// for (int i = 0; i < num; i++)
			IL_003b: ldloc.s 4
			IL_003d: ldloc.0
			IL_003e: blt.s IL_0021
		// end loop

		// foreach (BasePickupItem item in list)
		IL_0040: ldloc.2
		IL_0041: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_0046: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item in list)
			IL_0048: br.s IL_008f
			// loop start (head: IL_008f)
				IL_004a: ldloca.s 5
				IL_004c: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_0051: stloc.s 6
				// if (item.Is<DatadiskRecord>())
				IL_0053: ldloc.s 6
				IL_0055: callvirt instance bool MGSC.BasePickupItem::Is<class MGSC.DatadiskRecord>()
				IL_005a: brfalse.s IL_008f

				// DatadiskComponent datadiskComponent = item.Comp<DatadiskComponent>();
				IL_005c: ldloc.s 6
				IL_005e: callvirt instance !!0 MGSC.BasePickupItem::Comp<class MGSC.DatadiskComponent>()
				// DatadiskRecord datadiskRecord = item.Record<DatadiskRecord>();
				IL_0063: ldloc.s 6
				IL_0065: callvirt instance !!0 MGSC.BasePickupItem::Record<class MGSC.DatadiskRecord>()
				IL_006a: stloc.s 7
				// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[Random.Range(0, datadiskRecord.UnlockIds.Count)]);
				IL_006c: ldloc.s 7
				IL_006e: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
				IL_0073: ldc.i4.0
				IL_0074: ldloc.s 7
				IL_0076: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
				IL_007b: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
				IL_0080: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
				IL_0085: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
				IL_008a: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)

				// foreach (BasePickupItem item in list)
				IL_008f: ldloca.s 5
				IL_0091: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_0096: brtrue.s IL_004a
			// end loop

			// (no C# code)
			IL_0098: leave.s IL_00a8
		} // end .try
		finally
		{
			IL_009a: ldloca.s 5
			IL_009c: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_00a2: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// if (SingletonMonoBehaviour<DungeonGameMode>.Instance == null)
			IL_00a7: endfinally
		} // end handler

		IL_00a8: call !0 class MGSC.SingletonMonoBehaviour`1<class MGSC.DungeonGameMode>::get_Instance()
		IL_00ad: ldnull
		IL_00ae: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_00b3: brfalse.s IL_0103

		// ItemStorage itemStorage = _magnumCargo.ShipCargo[0];
		IL_00b5: ldarg.0
		IL_00b6: ldfld class MGSC.MagnumCargo MGSC.SpawnItemCommand::_magnumCargo
		IL_00bb: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage> MGSC.MagnumCargo::ShipCargo
		IL_00c0: ldc.i4.0
		IL_00c1: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemStorage>::get_Item(int32)
		IL_00c6: stloc.s 8
		// foreach (BasePickupItem item2 in list)
		IL_00c8: ldloc.2
		IL_00c9: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_00ce: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item2 in list)
			IL_00d0: br.s IL_00e4
			// loop start (head: IL_00e4)
				IL_00d2: ldloca.s 5
				IL_00d4: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_00d9: stloc.s 9
				// itemStorage.AddItemAndReshuffleOptional(item2);
				IL_00db: ldloc.s 8
				IL_00dd: ldloc.s 9
				IL_00df: callvirt instance void MGSC.ItemStorage::AddItemAndReshuffleOptional(class MGSC.BasePickupItem)

				// foreach (BasePickupItem item2 in list)
				IL_00e4: ldloca.s 5
				IL_00e6: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_00eb: brtrue.s IL_00d2
			// end loop

			// (no C# code)
			IL_00ed: leave.s IL_00fd
		} // end .try
		finally
		{
			IL_00ef: ldloca.s 5
			IL_00f1: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_00f7: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// return "done!";
			IL_00fc: endfinally
		} // end handler

		IL_00fd: ldstr "done!"
		IL_0102: ret

		// Player player = _creatures.Player;
		IL_0103: ldarg.0
		IL_0104: ldfld class MGSC.Creatures MGSC.SpawnItemCommand::_creatures
		IL_0109: ldfld class MGSC.Player MGSC.Creatures::Player
		IL_010e: stloc.3
		// foreach (BasePickupItem item3 in list)
		IL_010f: ldloc.2
		IL_0110: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItem>::GetEnumerator()
		IL_0115: stloc.s 5
		.try
		{
			// foreach (BasePickupItem item3 in list)
			IL_0117: br.s IL_0145
			// loop start (head: IL_0145)
				IL_0119: ldloca.s 5
				IL_011b: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::get_Current()
				IL_0120: stloc.s 10
				// ItemOnFloorSystem.SpawnItem(_itemsOnFloor, _mapGrid, item3, player.CreatureData.Position);
				IL_0122: ldarg.0
				IL_0123: ldfld class MGSC.ItemsOnFloor MGSC.SpawnItemCommand::_itemsOnFloor
				IL_0128: ldarg.0
				IL_0129: ldfld class MGSC.MapGrid MGSC.SpawnItemCommand::_mapGrid
				IL_012e: ldloc.s 10
				IL_0130: ldloc.3
				IL_0131: ldfld class MGSC.CreatureData MGSC.Creature::CreatureData
				IL_0136: ldfld valuetype MGSC.CellPosition MGSC.CreatureData::Position
				IL_013b: ldc.r4 0.0
				IL_0140: call void MGSC.ItemOnFloorSystem::SpawnItem(class MGSC.ItemsOnFloor, class MGSC.MapGrid, class MGSC.BasePickupItem, valuetype MGSC.CellPosition, float32)

				// foreach (BasePickupItem item3 in list)
				IL_0145: ldloca.s 5
				IL_0147: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>::MoveNext()
				IL_014c: brtrue.s IL_0119
			// end loop

			// (no C# code)
			IL_014e: leave.s IL_015e
		} // end .try
		finally
		{
			IL_0150: ldloca.s 5
			IL_0152: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItem>
			IL_0158: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// return "done!";
			IL_015d: endfinally
		} // end handler

		IL_015e: ldstr "done!"
		IL_0163: ret
	} // end of method SpawnItemCommand::Execute

	.method public hidebysig static 
		class [mscorlib]System.Collections.Generic.List`1<string> FetchAutocompleteOptions (
			string command,
			string[] tokens
		) cil managed 
	{
		// Method begins at RVA 0x67c84
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
		// Method begins at RVA 0x67c87
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
		// Method begins at RVA 0x67c8a
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
		// Method begins at RVA 0x67c8d
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
