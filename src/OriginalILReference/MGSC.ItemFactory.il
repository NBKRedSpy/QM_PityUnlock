.class public auto ansi beforefieldinit MGSC.ItemFactory
	extends class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>
{
	// Nested Types
	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass21_0'
		extends [mscorlib]System.ValueType
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public class MGSC.PickupItem initialItem
		.field public class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents

	} // end of class <>c__DisplayClass21_0

	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass22_0'
		extends [mscorlib]System.ValueType
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public class MGSC.PickupItem item
		.field public class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents

	} // end of class <>c__DisplayClass22_0


	// Fields
	.field private class [UnityEngine.CoreModule]UnityEngine.GameObject _itemOnFloorPrefab
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	.field private initonly class MGSC.State _state
	.custom instance void MGSC.InjectState::.ctor() = (
		01 00 00 00
	)
	.field private initonly class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> _componentsCache
	.field private int16 '<ConsumablesStackBonus>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	.field private float32 '<WeaponDurabilityMult>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method public hidebysig specialname 
		instance int16 get_ConsumablesStackBonus () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x342dc
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// 	return <ConsumablesStackBonus>k__BackingField;
		IL_0000: ldarg.0
		IL_0001: ldfld int16 MGSC.ItemFactory::'<ConsumablesStackBonus>k__BackingField'
		IL_0006: ret
	} // end of method ItemFactory::get_ConsumablesStackBonus

	.method private hidebysig specialname 
		instance void set_ConsumablesStackBonus (
			int16 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x342e4
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// 	<ConsumablesStackBonus>k__BackingField = value;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld int16 MGSC.ItemFactory::'<ConsumablesStackBonus>k__BackingField'
		// }
		IL_0007: ret
	} // end of method ItemFactory::set_ConsumablesStackBonus

	.method public hidebysig specialname 
		instance float32 get_WeaponDurabilityMult () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x342ed
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// 	return <WeaponDurabilityMult>k__BackingField;
		IL_0000: ldarg.0
		IL_0001: ldfld float32 MGSC.ItemFactory::'<WeaponDurabilityMult>k__BackingField'
		IL_0006: ret
	} // end of method ItemFactory::get_WeaponDurabilityMult

	.method private hidebysig specialname 
		instance void set_WeaponDurabilityMult (
			float32 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x342f5
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// 	<WeaponDurabilityMult>k__BackingField = value;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld float32 MGSC.ItemFactory::'<WeaponDurabilityMult>k__BackingField'
		// }
		IL_0007: ret
	} // end of method ItemFactory::set_WeaponDurabilityMult

	.method public hidebysig 
		instance void SetConsumablesStackBonus (
			int32 consumablesStackBonus
		) cil managed 
	{
		// Method begins at RVA 0x342fe
		// Header size: 1
		// Code size: 9 (0x9)
		.maxstack 8

		// 	ConsumablesStackBonus = (short)consumablesStackBonus;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: conv.i2
		IL_0003: call instance void MGSC.ItemFactory::set_ConsumablesStackBonus(int16)
		// }
		IL_0008: ret
	} // end of method ItemFactory::SetConsumablesStackBonus

	.method public hidebysig 
		instance class MGSC.SpaceTime GetGameTimeNow () cil managed 
	{
		// Method begins at RVA 0x34308
		// Header size: 1
		// Code size: 12 (0xc)
		.maxstack 8

		// 	return _state.Get<SpaceTime>();
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_0006: callvirt instance !!0 MGSC.State::Get<class MGSC.SpaceTime>()
		IL_000b: ret
	} // end of method ItemFactory::GetGameTimeNow

	.method public hidebysig 
		instance void SetWeaponDurabilityMult (
			float32 weaponDurabilityMult
		) cil managed 
	{
		// Method begins at RVA 0x34315
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// 	WeaponDurabilityMult = weaponDurabilityMult;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance void MGSC.ItemFactory::set_WeaponDurabilityMult(float32)
		// }
		IL_0007: ret
	} // end of method ItemFactory::SetWeaponDurabilityMult

	.method public hidebysig 
		instance class MGSC.ItemOnFloor CreateItemOnFloor () cil managed 
	{
		// Method begins at RVA 0x34320
		// Header size: 12
		// Code size: 31 (0x1f)
		.maxstack 2
		.locals init (
			[0] class MGSC.ItemOnFloor
		)

		// 	ItemOnFloor component = Object.Instantiate(_itemOnFloorPrefab).GetComponent<ItemOnFloor>();
		IL_0000: ldarg.0
		IL_0001: ldfld class [UnityEngine.CoreModule]UnityEngine.GameObject MGSC.ItemFactory::_itemOnFloorPrefab
		IL_0006: call !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0)
		IL_000b: callvirt instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class MGSC.ItemOnFloor>()
		IL_0010: stloc.0
		// 	_state.Resolve(component);
		IL_0011: ldarg.0
		IL_0012: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_0017: ldloc.0
		IL_0018: callvirt instance void MGSC.State::Resolve(object)
		// 	return component;
		IL_001d: ldloc.0
		IL_001e: ret
	} // end of method ItemFactory::CreateItemOnFloor

	.method public hidebysig 
		instance class MGSC.ItemOnFloor CreateItemOnFloor (
			int32 x,
			int32 y,
			float32 visualDelay
		) cil managed 
	{
		// Method begins at RVA 0x3434b
		// Header size: 1
		// Code size: 16 (0x10)
		.maxstack 8

		// 	ItemOnFloor itemOnFloor = CreateItemOnFloor();
		IL_0000: ldarg.0
		IL_0001: call instance class MGSC.ItemOnFloor MGSC.ItemFactory::CreateItemOnFloor()
		// 	itemOnFloor.Initialize(x, y, visualDelay);
		IL_0006: dup
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: callvirt instance void MGSC.ItemOnFloor::Initialize(int32, int32, float32)
		// 	return itemOnFloor;
		IL_000f: ret
	} // end of method ItemFactory::CreateItemOnFloor

	.method public hidebysig 
		instance class MGSC.BasePickupItem CreateItemForObjectStorage (
			string itemId,
			class MGSC.MapObstacle mapObstacle
		) cil managed 
	{
		// Method begins at RVA 0x3435c
		// Header size: 12
		// Code size: 42 (0x2a)
		.maxstack 5
		.locals init (
			[0] class MGSC.BasePickupItem
		)

		// 	BasePickupItem basePickupItem = CreateForInventory(itemId, randomizeConditionAndCapacity: true);
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.1
		IL_0003: call instance class MGSC.BasePickupItem MGSC.ItemFactory::CreateForInventory(string, bool)
		IL_0008: stloc.0
		// 	mapObstacle.Store.storage.TryPutItem(basePickupItem, CellPosition.Zero);
		IL_0009: ldarg.2
		IL_000a: callvirt instance class MGSC.Store MGSC.MapObstacle::get_Store()
		IL_000f: ldfld class MGSC.ItemStorage MGSC.Store::'storage'
		IL_0014: ldloc.0
		IL_0015: ldsfld valuetype MGSC.CellPosition MGSC.CellPosition::Zero
		IL_001a: ldc.i4.0
		IL_001b: ldc.i4.1
		IL_001c: callvirt instance bool MGSC.ItemStorage::TryPutItem(class MGSC.BasePickupItem, valuetype MGSC.CellPosition, bool, bool)
		IL_0021: pop
		// 	mapObstacle.RefreshVisual();
		IL_0022: ldarg.2
		IL_0023: callvirt instance void MGSC.MapObstacle::RefreshVisual()
		// 	return basePickupItem;
		IL_0028: ldloc.0
		IL_0029: ret
	} // end of method ItemFactory::CreateItemForObjectStorage

	.method public hidebysig 
		instance void KillItem (
			class MGSC.ItemOnFloor view
		) cil managed 
	{
		// Method begins at RVA 0x34392
		// Header size: 1
		// Code size: 12 (0xc)
		.maxstack 8

		// 	Object.Destroy(view.gameObject);
		IL_0000: ldarg.1
		IL_0001: callvirt instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
		IL_0006: call void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
		// }
		IL_000b: ret
	} // end of method ItemFactory::KillItem

	.method public hidebysig 
		instance class MGSC.BasePickupItem CreateForInventory (
			string itemId,
			[opt] bool randomizeConditionAndCapacity
		) cil managed 
	{
		.param [2] = bool(false)
		// Method begins at RVA 0x343a0
		// Header size: 12
		// Code size: 258 (0x102)
		.maxstack 7
		.locals init (
			[0] class MGSC.CompositeItemRecord,
			[1] int32,
			[2] float32,
			[3] class MGSC.PickupItem,
			[4] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItemRecord>,
			[5] class MGSC.BasePickupItemRecord,
			[6] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[7] class MGSC.PickupItemComponent
		)

		// 	if (Data.Items.GetRecord(itemId, ignoreLog: false) is CompositeItemRecord compositeItemRecord)
		IL_0000: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0005: ldarg.1
		IL_0006: ldc.i4.0
		IL_0007: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.BasePickupItemRecord>::GetRecord(string, bool)
		IL_000c: isinst MGSC.CompositeItemRecord
		IL_0011: stloc.0
		// 		int inventoryWidthSize = ((ItemRecord)compositeItemRecord.PrimaryRecord).InventoryWidthSize;
		IL_0012: ldloc.0
		IL_0013: brfalse IL_00e6

		IL_0018: ldloc.0
		IL_0019: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
		IL_001e: castclass MGSC.ItemRecord
		IL_0023: callvirt instance int32 MGSC.ItemRecord::get_InventoryWidthSize()
		IL_0028: stloc.1
		// 		float weight = ((ItemRecord)compositeItemRecord.PrimaryRecord).Weight;
		IL_0029: ldloc.0
		IL_002a: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
		IL_002f: castclass MGSC.ItemRecord
		IL_0034: callvirt instance float32 MGSC.ItemRecord::get_Weight()
		IL_0039: stloc.2
		// 		PickupItem pickupItem = new PickupItem(itemId, inventoryWidthSize, weight);
		IL_003a: ldarg.1
		IL_003b: ldloc.1
		IL_003c: ldloc.2
		IL_003d: newobj instance void MGSC.PickupItem::.ctor(string, int32, float32)
		IL_0042: stloc.3
		// 		foreach (BasePickupItemRecord record in compositeItemRecord.Records)
		IL_0043: ldloc.0
		IL_0044: callvirt instance class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItemRecord> MGSC.CompositeItemRecord::get_Records()
		IL_0049: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItemRecord>::GetEnumerator()
		IL_004e: stloc.s 4
		.try
		{
			// 		foreach (BasePickupItemRecord record in compositeItemRecord.Records)
			IL_0050: br.s IL_00c0
			// loop start (head: IL_00c0)
				IL_0052: ldloca.s 4
				IL_0054: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItemRecord>::get_Current()
				IL_0059: stloc.s 5
				// 			CreateComponent(pickupItem, _componentsCache, record, randomizeConditionAndCapacity, compositeItemRecord.PrimaryRecord == record);
				IL_005b: ldarg.0
				IL_005c: ldloc.3
				IL_005d: ldarg.0
				IL_005e: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_0063: ldloc.s 5
				IL_0065: ldarg.2
				IL_0066: ldloc.0
				IL_0067: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
				IL_006c: ldloc.s 5
				IL_006e: ceq
				IL_0070: call instance void MGSC.ItemFactory::CreateComponent(class MGSC.PickupItem, class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>, class MGSC.BasePickupItemRecord, bool, bool)
				// 			pickupItem.Add(record, compositeItemRecord.PrimaryRecord == record);
				IL_0075: ldloc.3
				IL_0076: ldloc.s 5
				IL_0078: ldloc.0
				IL_0079: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
				IL_007e: ldloc.s 5
				IL_0080: ceq
				IL_0082: callvirt instance void MGSC.PickupItem::Add(class MGSC.BasePickupItemRecord, bool)
				// 			foreach (PickupItemComponent item in _componentsCache)
				IL_0087: ldarg.0
				IL_0088: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_008d: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
				IL_0092: stloc.s 6
				.try
				{
					// 			foreach (PickupItemComponent item in _componentsCache)
					IL_0094: br.s IL_00a7
					// loop start (head: IL_00a7)
						IL_0096: ldloca.s 6
						IL_0098: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
						IL_009d: stloc.s 7
						// 				pickupItem.Add(item);
						IL_009f: ldloc.3
						IL_00a0: ldloc.s 7
						IL_00a2: callvirt instance void MGSC.PickupItem::Add(class MGSC.PickupItemComponent)

						// 			foreach (PickupItemComponent item in _componentsCache)
						IL_00a7: ldloca.s 6
						IL_00a9: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::MoveNext()
						IL_00ae: brtrue.s IL_0096
					// end loop

					// (no C# code)
					IL_00b0: leave.s IL_00c0
				} // end .try
				finally
				{
					IL_00b2: ldloca.s 6
					IL_00b4: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>
					IL_00ba: callvirt instance void [mscorlib]System.IDisposable::Dispose()
					// 		foreach (BasePickupItemRecord record in compositeItemRecord.Records)
					IL_00bf: endfinally
				} // end handler

				IL_00c0: ldloca.s 4
				IL_00c2: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItemRecord>::MoveNext()
				IL_00c7: brtrue.s IL_0052
			// end loop

			// (no C# code)
			IL_00c9: leave.s IL_00d9
		} // end .try
		finally
		{
			IL_00cb: ldloca.s 4
			IL_00cd: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItemRecord>
			IL_00d3: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// 		_componentsCache.Clear();
			IL_00d8: endfinally
		} // end handler

		IL_00d9: ldarg.0
		IL_00da: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_00df: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// 		return pickupItem;
		IL_00e4: ldloc.3
		IL_00e5: ret

		// 	Debug.LogError("Failed create item by record: '" + itemId.ToLog() + "'.");
		IL_00e6: ldstr "Failed create item by record: '"
		IL_00eb: ldarg.1
		IL_00ec: call string MGSC.FormatHelper::ToLog(string)
		IL_00f1: ldstr "'."
		IL_00f6: call string [mscorlib]System.String::Concat(string, string, string)
		IL_00fb: call void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
		// 	return null;
		IL_0100: ldnull
		IL_0101: ret
	} // end of method ItemFactory::CreateForInventory

	.method public hidebysig 
		instance class MGSC.BasePickupItem CopyItem (
			class MGSC.BasePickupItem initialItem
		) cil managed 
	{
		// Method begins at RVA 0x344cc
		// Header size: 12
		// Code size: 240 (0xf0)
		.maxstack 4
		.locals init (
			[0] class MGSC.PickupItem,
			[1] class MGSC.PickupItem,
			[2] class [mscorlib]System.Collections.Generic.IEnumerator`1<class MGSC.PickupItemComponent>,
			[3] class MGSC.PickupItemComponent,
			[4] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[5] class MGSC.PickupItemComponent,
			[6] int32
		)

		// 	if (initialItem is PickupItem pickupItem)
		IL_0000: ldarg.1
		IL_0001: isinst MGSC.PickupItem
		IL_0006: stloc.0
		// 		PickupItem pickupItem2 = new PickupItem(initialItem.Id, initialItem.InventoryWidthSize, initialItem.SingleWeight);
		IL_0007: ldloc.0
		IL_0008: brfalse IL_00d4

		IL_000d: ldarg.1
		IL_000e: callvirt instance string MGSC.BasePickupItem::get_Id()
		IL_0013: ldarg.1
		IL_0014: callvirt instance int32 MGSC.BasePickupItem::get_InventoryWidthSize()
		IL_0019: ldarg.1
		IL_001a: callvirt instance float32 MGSC.BasePickupItem::get_SingleWeight()
		IL_001f: newobj instance void MGSC.PickupItem::.ctor(string, int32, float32)
		IL_0024: stloc.1
		// 		foreach (PickupItemComponent component in pickupItem.Components)
		IL_0025: ldloc.0
		IL_0026: callvirt instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.PickupItemComponent> MGSC.PickupItem::get_Components()
		IL_002b: callvirt instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_0030: stloc.2
		.try
		{
			// 		foreach (PickupItemComponent component in pickupItem.Components)
			IL_0031: br.s IL_0081
			// loop start (head: IL_0081)
				IL_0033: ldloc.2
				IL_0034: callvirt instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class MGSC.PickupItemComponent>::get_Current()
				IL_0039: stloc.3
				// 			CopyComponent(pickupItem2, _componentsCache, component);
				IL_003a: ldarg.0
				IL_003b: ldloc.1
				IL_003c: ldarg.0
				IL_003d: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_0042: ldloc.3
				IL_0043: call instance void MGSC.ItemFactory::CopyComponent(class MGSC.PickupItem, class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>, class MGSC.PickupItemComponent)
				// 			foreach (PickupItemComponent item in _componentsCache)
				IL_0048: ldarg.0
				IL_0049: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_004e: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
				IL_0053: stloc.s 4
				.try
				{
					// 			foreach (PickupItemComponent item in _componentsCache)
					IL_0055: br.s IL_0068
					// loop start (head: IL_0068)
						IL_0057: ldloca.s 4
						IL_0059: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
						IL_005e: stloc.s 5
						// 				pickupItem2.Add(item);
						IL_0060: ldloc.1
						IL_0061: ldloc.s 5
						IL_0063: callvirt instance void MGSC.PickupItem::Add(class MGSC.PickupItemComponent)

						// 			foreach (PickupItemComponent item in _componentsCache)
						IL_0068: ldloca.s 4
						IL_006a: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::MoveNext()
						IL_006f: brtrue.s IL_0057
					// end loop

					// (no C# code)
					IL_0071: leave.s IL_0081
				} // end .try
				finally
				{
					IL_0073: ldloca.s 4
					IL_0075: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>
					IL_007b: callvirt instance void [mscorlib]System.IDisposable::Dispose()
					// 		foreach (PickupItemComponent component in pickupItem.Components)
					IL_0080: endfinally
				} // end handler

				IL_0081: ldloc.2
				IL_0082: callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
				IL_0087: brtrue.s IL_0033
			// end loop

			// (no C# code)
			IL_0089: leave.s IL_0095
		} // end .try
		finally
		{
			IL_008b: ldloc.2
			IL_008c: brfalse.s IL_0094

			IL_008e: ldloc.2
			IL_008f: callvirt instance void [mscorlib]System.IDisposable::Dispose()

			// 		_componentsCache.Clear();
			IL_0094: endfinally
		} // end handler

		IL_0095: ldarg.0
		IL_0096: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_009b: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// 		for (int i = 0; i < pickupItem.Records.Count; i++)
		IL_00a0: ldc.i4.0
		IL_00a1: stloc.s 6
		// 			pickupItem2.Add(pickupItem.Records[i], i == 0);
		IL_00a3: br.s IL_00c3
		// loop start (head: IL_00c3)
			IL_00a5: ldloc.1
			IL_00a6: ldloc.0
			IL_00a7: callvirt instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.BasePickupItemRecord> MGSC.PickupItem::get_Records()
			IL_00ac: ldloc.s 6
			IL_00ae: callvirt instance !0 class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.BasePickupItemRecord>::get_Item(int32)
			IL_00b3: ldloc.s 6
			IL_00b5: ldc.i4.0
			IL_00b6: ceq
			IL_00b8: callvirt instance void MGSC.PickupItem::Add(class MGSC.BasePickupItemRecord, bool)
			// 		for (int i = 0; i < pickupItem.Records.Count; i++)
			IL_00bd: ldloc.s 6
			IL_00bf: ldc.i4.1
			IL_00c0: add
			IL_00c1: stloc.s 6

			// 		for (int i = 0; i < pickupItem.Records.Count; i++)
			IL_00c3: ldloc.s 6
			IL_00c5: ldloc.0
			IL_00c6: callvirt instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.BasePickupItemRecord> MGSC.PickupItem::get_Records()
			IL_00cb: callvirt instance int32 class [mscorlib]System.Collections.Generic.IReadOnlyCollection`1<class MGSC.BasePickupItemRecord>::get_Count()
			IL_00d0: blt.s IL_00a5
		// end loop

		// 		return pickupItem2;
		IL_00d2: ldloc.1
		IL_00d3: ret

		// 	Debug.LogError("Failed to copy item by record: '" + initialItem.Id + "'.");
		IL_00d4: ldstr "Failed to copy item by record: '"
		IL_00d9: ldarg.1
		IL_00da: callvirt instance string MGSC.BasePickupItem::get_Id()
		IL_00df: ldstr "'."
		IL_00e4: call string [mscorlib]System.String::Concat(string, string, string)
		IL_00e9: call void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
		// 	return null;
		IL_00ee: ldnull
		IL_00ef: ret
	} // end of method ItemFactory::CopyItem

	.method family hidebysig virtual 
		instance void Awake () cil managed 
	{
		// Method begins at RVA 0x345e4
		// Header size: 1
		// Code size: 34 (0x22)
		.maxstack 8

		// 	base.Awake();
		IL_0000: ldarg.0
		IL_0001: call instance void class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::Awake()
		// 	LoadFromJSON.AddCustomActivator(typeof(ItemOnFloor), (Type t, JSONNode n) => CreateItemOnFloor());
		IL_0006: ldtoken MGSC.ItemOnFloor
		IL_000b: call class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
		IL_0010: ldarg.0
		IL_0011: ldftn instance object MGSC.ItemFactory::'<Awake>b__20_0'(class [mscorlib]System.Type, class [SimpleJSON]SimpleJSON.JSONNode)
		IL_0017: newobj instance void class [mscorlib]System.Func`3<class [mscorlib]System.Type, class [SimpleJSON]SimpleJSON.JSONNode, object>::.ctor(object, native int)
		// }
		IL_001c: call void MGSC.LoadFromJSON::AddCustomActivator(class [mscorlib]System.Type, class [mscorlib]System.Func`3<class [mscorlib]System.Type, class [SimpleJSON]SimpleJSON.JSONNode, object>)
		IL_0021: ret
	} // end of method ItemFactory::Awake

	.method private hidebysig 
		instance void CopyComponent (
			class MGSC.PickupItem initialItem,
			class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents,
			class MGSC.PickupItemComponent initialComponent
		) cil managed 
	{
		// Method begins at RVA 0x34608
		// Header size: 12
		// Code size: 598 (0x256)
		.maxstack 4
		.locals init (
			[0] valuetype MGSC.ItemFactory/'<>c__DisplayClass21_0',
			[1] class MGSC.BreakableItemComponent,
			[2] class MGSC.UsableItemComponent,
			[3] class MGSC.ExpireComponent,
			[4] class MGSC.StackableItemComponent,
			[5] class MGSC.WeaponComponent,
			[6] class MGSC.DatadiskComponent,
			[7] class MGSC.BreakableItemComponent,
			[8] class MGSC.UsableItemComponent,
			[9] class MGSC.StackableItemComponent,
			[10] class MGSC.WeaponRecord,
			[11] class MGSC.WeaponComponent,
			[12] class MGSC.LauncherComponent,
			[13] int32,
			[14] class MGSC.DatadiskComponent,
			[15] class MGSC.SkullComponent
		)

		// {
		IL_0000: ldloca.s 0
		IL_0002: ldarg.1
		IL_0003: stfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass21_0'::initialItem
		// (no C# code)
		IL_0008: ldloca.s 0
		IL_000a: ldarg.2
		IL_000b: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		// 	itemComponents.Clear();
		IL_0010: ldloc.0
		IL_0011: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_0016: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// 	if (initialComponent is BreakableItemComponent breakableItemComponent)
		IL_001b: ldarg.3
		IL_001c: isinst MGSC.BreakableItemComponent
		IL_0021: stloc.1
		// 		BreakableItemComponent item = new BreakableItemComponent(new BreakableItemRecord
		// 		{
		// 			MaxDurability = breakableItemComponent.MaxDurability,
		// 			MinDurabilityAfterRepair = breakableItemComponent.MinDurabilityAfterRepair,
		// 			Unbreakable = breakableItemComponent.Unbreakable,
		// 			RepairCategory = breakableItemComponent.RepairCategory
		// 		});
		IL_0022: ldloc.1
		IL_0023: brfalse.s IL_006e

		IL_0025: newobj instance void MGSC.BreakableItemRecord::.ctor()
		IL_002a: dup
		IL_002b: ldloc.1
		IL_002c: callvirt instance int32 MGSC.BreakableItemComponent::get_MaxDurability()
		IL_0031: callvirt instance void MGSC.BreakableItemRecord::set_MaxDurability(int32)
		IL_0036: dup
		IL_0037: ldloc.1
		IL_0038: callvirt instance int32 MGSC.BreakableItemComponent::get_MinDurabilityAfterRepair()
		IL_003d: callvirt instance void MGSC.BreakableItemRecord::set_MinDurabilityAfterRepair(int32)
		IL_0042: dup
		IL_0043: ldloc.1
		IL_0044: callvirt instance bool MGSC.BreakableItemComponent::get_Unbreakable()
		IL_0049: callvirt instance void MGSC.BreakableItemRecord::set_Unbreakable(bool)
		IL_004e: dup
		IL_004f: ldloc.1
		IL_0050: callvirt instance string MGSC.BreakableItemComponent::get_RepairCategory()
		IL_0055: callvirt instance void MGSC.BreakableItemRecord::set_RepairCategory(string)
		IL_005a: newobj instance void MGSC.BreakableItemComponent::.ctor(class MGSC.BreakableItemRecord)
		IL_005f: stloc.s 7
		// 		itemComponents.Add(item);
		IL_0061: ldloc.0
		IL_0062: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_0067: ldloc.s 7
		IL_0069: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (initialComponent is UsableItemComponent usableItemComponent)
		IL_006e: ldarg.3
		IL_006f: isinst MGSC.UsableItemComponent
		IL_0074: stloc.2
		// 		UsableItemComponent item2 = new UsableItemComponent(new UsableItemRecord
		// 		{
		// 			MaxUsage = usableItemComponent.MaxUsageValue,
		// 			UsageCost = usableItemComponent.UsageCost
		// 		});
		IL_0075: ldloc.2
		IL_0076: brfalse.s IL_00a9

		IL_0078: newobj instance void MGSC.UsableItemRecord::.ctor()
		IL_007d: dup
		IL_007e: ldloc.2
		IL_007f: callvirt instance int32 MGSC.UsableItemComponent::get_MaxUsageValue()
		IL_0084: callvirt instance void MGSC.UsableItemRecord::set_MaxUsage(int32)
		IL_0089: dup
		IL_008a: ldloc.2
		IL_008b: callvirt instance int32 MGSC.UsableItemComponent::get_UsageCost()
		IL_0090: callvirt instance void MGSC.UsableItemRecord::set_UsageCost(int32)
		IL_0095: newobj instance void MGSC.UsableItemComponent::.ctor(class MGSC.UsableItemRecord)
		IL_009a: stloc.s 8
		// 		itemComponents.Add(item2);
		IL_009c: ldloc.0
		IL_009d: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_00a2: ldloc.s 8
		IL_00a4: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (initialComponent is AllowPutInVestItemComp && !HasCompOfType<AllowPutInVestItemComp>())
		IL_00a9: ldarg.3
		IL_00aa: isinst MGSC.AllowPutInVestItemComp
		IL_00af: brfalse.s IL_00ca

		IL_00b1: ldloca.s 0
		IL_00b3: call bool MGSC.ItemFactory::'<CopyComponent>g__HasCompOfType|21_0'<class MGSC.AllowPutInVestItemComp>(valuetype MGSC.ItemFactory/'<>c__DisplayClass21_0'&)
		IL_00b8: brtrue.s IL_00ca

		// 		itemComponents.Add(new AllowPutInVestItemComp());
		IL_00ba: ldloc.0
		IL_00bb: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_00c0: newobj instance void MGSC.AllowPutInVestItemComp::.ctor()
		IL_00c5: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (initialComponent is ExpireComponent expireComponent && !HasCompOfType<ExpireComponent>())
		IL_00ca: ldarg.3
		IL_00cb: isinst MGSC.ExpireComponent
		IL_00d0: stloc.3
		// (no C# code)
		IL_00d1: ldloc.3
		IL_00d2: brfalse.s IL_00f9

		IL_00d4: ldloca.s 0
		IL_00d6: call bool MGSC.ItemFactory::'<CopyComponent>g__HasCompOfType|21_0'<class MGSC.ExpireComponent>(valuetype MGSC.ItemFactory/'<>c__DisplayClass21_0'&)
		IL_00db: brtrue.s IL_00f9

		// 		itemComponents.Add(new ExpireComponent(expireComponent.ExpireDate, expireComponent.IsStarted));
		IL_00dd: ldloc.0
		IL_00de: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_00e3: ldloc.3
		IL_00e4: callvirt instance valuetype [mscorlib]System.DateTime MGSC.ExpireComponent::get_ExpireDate()
		IL_00e9: ldloc.3
		IL_00ea: callvirt instance bool MGSC.ExpireComponent::get_IsStarted()
		IL_00ef: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_00f4: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (initialComponent is StackableItemComponent stackableItemComponent)
		IL_00f9: ldarg.3
		IL_00fa: isinst MGSC.StackableItemComponent
		IL_00ff: stloc.s 4
		// 		StackableItemComponent item3 = new StackableItemComponent(stackableItemComponent.Max);
		IL_0101: ldloc.s 4
		IL_0103: brfalse.s IL_0121

		IL_0105: ldloc.s 4
		IL_0107: callvirt instance int16 MGSC.StackableItemComponent::get_Max()
		IL_010c: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_0111: stloc.s 9
		// 		itemComponents.Add(item3);
		IL_0113: ldloc.0
		IL_0114: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_0119: ldloc.s 9
		IL_011b: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 	if (initialComponent is WeaponComponent { WeaponRecord: var weaponRecord } weaponComponent)
		IL_0120: ret

		IL_0121: ldarg.3
		IL_0122: isinst MGSC.WeaponComponent
		IL_0127: stloc.s 5
		// (no C# code)
		IL_0129: ldloc.s 5
		IL_012b: brfalse IL_020b

		// 		WeaponComponent weaponComponent2 = new WeaponComponent(weaponComponent.WeaponRecord);
		IL_0130: ldloc.s 5
		IL_0132: callvirt instance class MGSC.WeaponRecord MGSC.WeaponComponent::get_WeaponRecord()
		IL_0137: stloc.s 10
		IL_0139: ldloc.s 5
		IL_013b: callvirt instance class MGSC.WeaponRecord MGSC.WeaponComponent::get_WeaponRecord()
		IL_0140: newobj instance void MGSC.WeaponComponent::.ctor(class MGSC.BasePickupItemRecord)
		IL_0145: stloc.s 11
		// 		weaponComponent2.CurrentAmmoType = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.DefaultAmmoId);
		IL_0147: ldloc.s 11
		IL_0149: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_014e: ldloc.s 10
		IL_0150: callvirt instance string MGSC.WeaponRecord::get_DefaultAmmoId()
		IL_0155: ldc.i4.1
		IL_0156: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_015b: callvirt instance void MGSC.WeaponComponent::set_CurrentAmmoType(class MGSC.AmmoRecord)
		// 		weaponComponent2.CurrentFireMode = Data.Firemodes.GetRecord(weaponRecord.Firemodes[0]);
		IL_0160: ldloc.s 11
		IL_0162: call class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord> MGSC.Data::get_Firemodes()
		IL_0167: ldloc.s 10
		IL_0169: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.WeaponRecord::get_Firemodes()
		IL_016e: ldc.i4.0
		IL_016f: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_0174: ldc.i4.1
		IL_0175: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord>::GetRecord(string, bool)
		IL_017a: callvirt instance void MGSC.WeaponComponent::set_CurrentFireMode(class MGSC.FireModeRecord)
		// 		if (!string.IsNullOrEmpty(weaponRecord.OverrideAmmo))
		IL_017f: ldloc.s 10
		IL_0181: callvirt instance string MGSC.WeaponRecord::get_OverrideAmmo()
		IL_0186: call bool [mscorlib]System.String::IsNullOrEmpty(string)
		IL_018b: brtrue.s IL_01a8

		// 			weaponComponent2.OverridenAmmo = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.OverrideAmmo);
		IL_018d: ldloc.s 11
		IL_018f: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0194: ldloc.s 10
		IL_0196: callvirt instance string MGSC.WeaponRecord::get_OverrideAmmo()
		IL_019b: ldc.i4.1
		IL_019c: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_01a1: callvirt instance void MGSC.WeaponComponent::set_OverridenAmmo(class MGSC.AmmoRecord)
		// 			weaponComponent2.OverridenAmmo = weaponComponent2.CurrentAmmoType;
		IL_01a6: br.s IL_01b6

		IL_01a8: ldloc.s 11
		IL_01aa: ldloc.s 11
		IL_01ac: callvirt instance class MGSC.AmmoRecord MGSC.WeaponComponent::get_CurrentAmmoType()
		IL_01b1: callvirt instance void MGSC.WeaponComponent::set_OverridenAmmo(class MGSC.AmmoRecord)

		// 		_componentsCache.Add(weaponComponent2);
		IL_01b6: ldarg.0
		IL_01b7: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_01bc: ldloc.s 11
		IL_01be: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 		if (weaponRecord.WeaponClass == WeaponClass.GrenadeLauncher)
		IL_01c3: ldloc.s 10
		IL_01c5: callvirt instance valuetype MGSC.WeaponClass MGSC.WeaponRecord::get_WeaponClass()
		IL_01ca: ldc.i4.s 31
		IL_01cc: bne.un.s IL_020b

		// 			LauncherComponent launcherComponent = new LauncherComponent();
		IL_01ce: newobj instance void MGSC.LauncherComponent::.ctor()
		IL_01d3: stloc.s 12
		// 			_componentsCache.Add(launcherComponent);
		IL_01d5: ldarg.0
		IL_01d6: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_01db: ldloc.s 12
		IL_01dd: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 			for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
		IL_01e2: ldc.i4.0
		IL_01e3: stloc.s 13
		// 				launcherComponent.LoadedGrenadesIds.Add(weaponRecord.DefaultGrenadeId);
		IL_01e5: br.s IL_0200
		// loop start (head: IL_0200)
			IL_01e7: ldloc.s 12
			IL_01e9: ldfld class [mscorlib]System.Collections.Generic.List`1<string> MGSC.LauncherComponent::LoadedGrenadesIds
			IL_01ee: ldloc.s 10
			IL_01f0: callvirt instance string MGSC.WeaponRecord::get_DefaultGrenadeId()
			IL_01f5: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
			// 			for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
			IL_01fa: ldloc.s 13
			IL_01fc: ldc.i4.1
			IL_01fd: add
			IL_01fe: stloc.s 13

			// 			for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
			IL_0200: ldloc.s 13
			IL_0202: ldloc.s 11
			IL_0204: callvirt instance int16 MGSC.WeaponComponent::get_CurrentAmmo()
			IL_0209: blt.s IL_01e7
		// end loop

		// 	if (initialComponent is DatadiskComponent datadiskComponent)
		IL_020b: ldarg.3
		IL_020c: isinst MGSC.DatadiskComponent
		IL_0211: stloc.s 6
		// 		DatadiskComponent datadiskComponent2 = new DatadiskComponent();
		IL_0213: ldloc.s 6
		IL_0215: brfalse.s IL_0239

		IL_0217: newobj instance void MGSC.DatadiskComponent::.ctor()
		IL_021c: stloc.s 14
		// 		datadiskComponent2.SetUnlockId(datadiskComponent.UnlockId);
		IL_021e: ldloc.s 14
		IL_0220: ldloc.s 6
		IL_0222: callvirt instance string MGSC.DatadiskComponent::get_UnlockId()
		IL_0227: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)
		// 		_componentsCache.Add(datadiskComponent2);
		IL_022c: ldarg.0
		IL_022d: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0232: ldloc.s 14
		IL_0234: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (initialComponent is SkullComponent)
		IL_0239: ldarg.3
		IL_023a: isinst MGSC.SkullComponent
		IL_023f: brfalse.s IL_0255

		// 		SkullComponent item4 = new SkullComponent();
		IL_0241: newobj instance void MGSC.SkullComponent::.ctor()
		IL_0246: stloc.s 15
		// 		_componentsCache.Add(item4);
		IL_0248: ldarg.0
		IL_0249: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_024e: ldloc.s 15
		IL_0250: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// }
		IL_0255: ret
	} // end of method ItemFactory::CopyComponent

	.method private hidebysig 
		instance void CreateComponent (
			class MGSC.PickupItem item,
			class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents,
			class MGSC.BasePickupItemRecord itemRecord,
			bool randomizeConditionAndCapacity,
			bool isPrimary
		) cil managed 
	{
		// Method begins at RVA 0x3486c
		// Header size: 12
		// Code size: 809 (0x329)
		.maxstack 4
		.locals init (
			[0] valuetype MGSC.ItemFactory/'<>c__DisplayClass22_0',
			[1] class MGSC.BreakableItemRecord,
			[2] class MGSC.UsableItemRecord,
			[3] class MGSC.AmmoRecord,
			[4] class MGSC.IStackableRecord,
			[5] class MGSC.WeaponRecord,
			[6] class MGSC.DatadiskRecord,
			[7] class MGSC.BreakableItemComponent,
			[8] class MGSC.UsableItemComponent,
			[9] class MGSC.ItemExpireRecord,
			[10] valuetype [mscorlib]System.DateTime,
			[11] int32,
			[12] class MGSC.StackableItemComponent,
			[13] int16,
			[14] class MGSC.StackableItemComponent,
			[15] class MGSC.WeaponComponent,
			[16] class MGSC.LauncherComponent,
			[17] int32,
			[18] class MGSC.DatadiskComponent,
			[19] class MGSC.SkullComponent
		)

		// {
		IL_0000: ldloca.s 0
		IL_0002: ldarg.1
		IL_0003: stfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass22_0'::item
		// (no C# code)
		IL_0008: ldloca.s 0
		IL_000a: ldarg.2
		IL_000b: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		// 	itemComponents.Clear();
		IL_0010: ldloc.0
		IL_0011: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0016: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// 	if (itemRecord is BreakableItemRecord record)
		IL_001b: ldarg.3
		IL_001c: isinst MGSC.BreakableItemRecord
		IL_0021: stloc.1
		// 		BreakableItemComponent breakableItemComponent = new BreakableItemComponent(record);
		IL_0022: ldloc.1
		IL_0023: brfalse.s IL_006d

		IL_0025: ldloc.1
		IL_0026: newobj instance void MGSC.BreakableItemComponent::.ctor(class MGSC.BreakableItemRecord)
		IL_002b: stloc.s 7
		// 		itemComponents.Add(breakableItemComponent);
		IL_002d: ldloc.0
		IL_002e: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0033: ldloc.s 7
		IL_0035: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 		if (itemRecord is WeaponRecord)
		IL_003a: ldarg.3
		IL_003b: isinst MGSC.WeaponRecord
		IL_0040: brfalse.s IL_005e

		// 			breakableItemComponent.SetMaxDurability(Mathf.RoundToInt((float)breakableItemComponent.MaxDurability * WeaponDurabilityMult), restoreDurability: true);
		IL_0042: ldloc.s 7
		IL_0044: ldloc.s 7
		IL_0046: callvirt instance int32 MGSC.BreakableItemComponent::get_MaxDurability()
		IL_004b: conv.r4
		IL_004c: ldarg.0
		IL_004d: call instance float32 MGSC.ItemFactory::get_WeaponDurabilityMult()
		IL_0052: mul
		IL_0053: call int32 [UnityEngine.CoreModule]UnityEngine.Mathf::RoundToInt(float32)
		IL_0058: ldc.i4.1
		IL_0059: callvirt instance void MGSC.BreakableItemComponent::SetMaxDurability(int32, bool)

		// 		if (randomizeConditionAndCapacity)
		IL_005e: ldarg.s randomizeConditionAndCapacity
		IL_0060: brfalse.s IL_006d

		// 			breakableItemComponent.RandomizeCondition(40);
		IL_0062: ldloc.s 7
		IL_0064: ldc.i4.s 40
		IL_0066: ldc.i4.s 100
		IL_0068: callvirt instance void MGSC.BreakableItemComponent::RandomizeCondition(int32, int32)

		// 	if (itemRecord is UsableItemRecord usableItemRecord)
		IL_006d: ldarg.3
		IL_006e: isinst MGSC.UsableItemRecord
		IL_0073: stloc.2
		// 		UsableItemComponent usableItemComponent = new UsableItemComponent(usableItemRecord);
		IL_0074: ldloc.2
		IL_0075: brfalse.s IL_00a3

		IL_0077: ldloc.2
		IL_0078: newobj instance void MGSC.UsableItemComponent::.ctor(class MGSC.UsableItemRecord)
		IL_007d: stloc.s 8
		// 		itemComponents.Add(usableItemComponent);
		IL_007f: ldloc.0
		IL_0080: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0085: ldloc.s 8
		IL_0087: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 		if (randomizeConditionAndCapacity)
		IL_008c: ldarg.s randomizeConditionAndCapacity
		IL_008e: brfalse.s IL_00a3

		// 			usableItemComponent.RandomizeCapacity(usableItemRecord.UsageCost, usableItemRecord.MaxUsage);
		IL_0090: ldloc.s 8
		IL_0092: ldloc.2
		IL_0093: callvirt instance int32 MGSC.UsableItemRecord::get_UsageCost()
		IL_0098: ldloc.2
		IL_0099: callvirt instance int32 MGSC.UsableItemRecord::get_MaxUsage()
		IL_009e: callvirt instance void MGSC.UsableItemComponent::RandomizeCapacity(int32, int32)

		// 	if (itemRecord is IAllowInVestRecord && !HasCompOfType<AllowPutInVestItemComp>())
		IL_00a3: ldarg.3
		IL_00a4: isinst MGSC.IAllowInVestRecord
		IL_00a9: brfalse.s IL_00c4

		IL_00ab: ldloca.s 0
		IL_00ad: call bool MGSC.ItemFactory::'<CreateComponent>g__HasCompOfType|22_0'<class MGSC.AllowPutInVestItemComp>(valuetype MGSC.ItemFactory/'<>c__DisplayClass22_0'&)
		IL_00b2: brtrue.s IL_00c4

		// 		itemComponents.Add(new AllowPutInVestItemComp());
		IL_00b4: ldloc.0
		IL_00b5: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_00ba: newobj instance void MGSC.AllowPutInVestItemComp::.ctor()
		IL_00bf: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (itemRecord is IExpirableRecord && !HasCompOfType<ExpireComponent>())
		IL_00c4: ldarg.3
		IL_00c5: isinst MGSC.IExpirableRecord
		IL_00ca: brfalse.s IL_0133

		IL_00cc: ldloca.s 0
		IL_00ce: call bool MGSC.ItemFactory::'<CreateComponent>g__HasCompOfType|22_0'<class MGSC.ExpireComponent>(valuetype MGSC.ItemFactory/'<>c__DisplayClass22_0'&)
		IL_00d3: brtrue.s IL_0133

		// 		ItemExpireRecord record2 = Data.ItemExpire.GetRecord(itemRecord.Id);
		IL_00d5: call class MGSC.ConfigRecordCollection`1<class MGSC.ItemExpireRecord> MGSC.Data::get_ItemExpire()
		IL_00da: ldarg.3
		IL_00db: callvirt instance string MGSC.ConfigTableRecord::get_Id()
		IL_00e0: ldc.i4.1
		IL_00e1: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.ItemExpireRecord>::GetRecord(string, bool)
		IL_00e6: stloc.s 9
		// 		DateTime time = _state.Get<SpaceTime>().Time;
		IL_00e8: ldarg.0
		IL_00e9: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_00ee: callvirt instance !!0 MGSC.State::Get<class MGSC.SpaceTime>()
		IL_00f3: ldfld valuetype [mscorlib]System.DateTime MGSC.SpaceTime::Time
		IL_00f8: stloc.s 10
		// 		if (record2 != null)
		IL_00fa: ldloc.s 9
		IL_00fc: brfalse.s IL_0120

		// 			itemComponents.Add(new ExpireComponent(time.AddHours(record2.ExpiresAfterHours), isStarted: true));
		IL_00fe: ldloc.0
		IL_00ff: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0104: ldloca.s 10
		IL_0106: ldloc.s 9
		IL_0108: callvirt instance float32 MGSC.ItemExpireRecord::get_ExpiresAfterHours()
		IL_010d: conv.r8
		IL_010e: call instance valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::AddHours(float64)
		IL_0113: ldc.i4.1
		IL_0114: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_0119: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// (no C# code)
		IL_011e: br.s IL_0133

		// 			itemComponents.Add(new ExpireComponent(time, isStarted: false));
		IL_0120: ldloc.0
		IL_0121: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0126: ldloc.s 10
		IL_0128: ldc.i4.0
		IL_0129: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_012e: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (itemRecord is AmmoRecord ammoRecord)
		IL_0133: ldarg.3
		IL_0134: isinst MGSC.AmmoRecord
		IL_0139: stloc.3
		// 		int num = UnityEngine.Random.Range(ammoRecord.MinAmmoAmount, ammoRecord.MaxAmmoAmount + 1);
		IL_013a: ldloc.3
		IL_013b: brfalse.s IL_017b

		IL_013d: ldloc.3
		IL_013e: callvirt instance int32 MGSC.AmmoRecord::get_MinAmmoAmount()
		IL_0143: ldloc.3
		IL_0144: callvirt instance int32 MGSC.AmmoRecord::get_MaxAmmoAmount()
		IL_0149: ldc.i4.1
		IL_014a: add
		IL_014b: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
		IL_0150: stloc.s 11
		// 		StackableItemComponent stackableItemComponent = new StackableItemComponent(ammoRecord.MaxStack);
		IL_0152: ldloc.3
		IL_0153: callvirt instance int16 MGSC.AmmoRecord::get_MaxStack()
		IL_0158: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_015d: stloc.s 12
		// 		if (randomizeConditionAndCapacity)
		IL_015f: ldarg.s randomizeConditionAndCapacity
		IL_0161: brfalse.s IL_016d

		// 			stackableItemComponent.Count = (short)num;
		IL_0163: ldloc.s 12
		IL_0165: ldloc.s 11
		IL_0167: conv.i2
		IL_0168: callvirt instance void MGSC.StackableItemComponent::set_Count(int16)

		// 		itemComponents.Add(stackableItemComponent);
		IL_016d: ldloc.0
		IL_016e: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_0173: ldloc.s 12
		IL_0175: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 	IStackableRecord stackableRecord = itemRecord as IStackableRecord;
		IL_017a: ret

		IL_017b: ldarg.3
		IL_017c: isinst MGSC.IStackableRecord
		IL_0181: stloc.s 4
		// 	if (stackableRecord != null && isPrimary)
		IL_0183: ldloc.s 4
		IL_0185: ldnull
		IL_0186: cgt.un
		IL_0188: ldarg.s isPrimary
		IL_018a: and
		IL_018b: brfalse.s IL_01e0

		// 		short num2 = stackableRecord.MaxStack;
		IL_018d: ldloc.s 4
		IL_018f: callvirt instance int16 MGSC.IStackableRecord::get_MaxStack()
		IL_0194: stloc.s 13
		// 		if (itemRecord is ConsumableRecord || itemRecord is FixationMedicineRecord || itemRecord is RepairRecord || itemRecord is PlaceableDeviceRecord)
		IL_0196: ldarg.3
		IL_0197: isinst MGSC.ConsumableRecord
		IL_019c: brtrue.s IL_01b6

		IL_019e: ldarg.3
		IL_019f: isinst MGSC.FixationMedicineRecord
		IL_01a4: brtrue.s IL_01b6

		// (no C# code)
		IL_01a6: ldarg.3
		IL_01a7: isinst MGSC.RepairRecord
		IL_01ac: brtrue.s IL_01b6

		// 			num2 += ConsumablesStackBonus;
		IL_01ae: ldarg.3
		IL_01af: isinst MGSC.PlaceableDeviceRecord
		IL_01b4: brfalse.s IL_01c2

		IL_01b6: ldloc.s 13
		IL_01b8: ldarg.0
		IL_01b9: call instance int16 MGSC.ItemFactory::get_ConsumablesStackBonus()
		IL_01be: add
		IL_01bf: conv.i2
		IL_01c0: stloc.s 13

		// 		StackableItemComponent stackableItemComponent2 = new StackableItemComponent(num2);
		IL_01c2: ldloc.s 13
		IL_01c4: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_01c9: stloc.s 14
		// 		stackableItemComponent2.Count = 1;
		IL_01cb: ldloc.s 14
		IL_01cd: ldc.i4.1
		IL_01ce: callvirt instance void MGSC.StackableItemComponent::set_Count(int16)
		// 		itemComponents.Add(stackableItemComponent2);
		IL_01d3: ldloc.0
		IL_01d4: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_01d9: ldloc.s 14
		IL_01db: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (itemRecord is WeaponRecord weaponRecord)
		IL_01e0: ldarg.3
		IL_01e1: isinst MGSC.WeaponRecord
		IL_01e6: stloc.s 5
		// 		WeaponComponent weaponComponent = new WeaponComponent(weaponRecord);
		IL_01e8: ldloc.s 5
		IL_01ea: brfalse IL_02c7

		IL_01ef: ldloc.s 5
		IL_01f1: newobj instance void MGSC.WeaponComponent::.ctor(class MGSC.BasePickupItemRecord)
		IL_01f6: stloc.s 15
		// 		weaponComponent.CurrentAmmoType = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.DefaultAmmoId);
		IL_01f8: ldloc.s 15
		IL_01fa: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_01ff: ldloc.s 5
		IL_0201: callvirt instance string MGSC.WeaponRecord::get_DefaultAmmoId()
		IL_0206: ldc.i4.1
		IL_0207: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_020c: callvirt instance void MGSC.WeaponComponent::set_CurrentAmmoType(class MGSC.AmmoRecord)
		// 		weaponComponent.CurrentFireMode = Data.Firemodes.GetRecord(weaponRecord.Firemodes[0]);
		IL_0211: ldloc.s 15
		IL_0213: call class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord> MGSC.Data::get_Firemodes()
		IL_0218: ldloc.s 5
		IL_021a: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.WeaponRecord::get_Firemodes()
		IL_021f: ldc.i4.0
		IL_0220: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_0225: ldc.i4.1
		IL_0226: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord>::GetRecord(string, bool)
		IL_022b: callvirt instance void MGSC.WeaponComponent::set_CurrentFireMode(class MGSC.FireModeRecord)
		// 		if (!string.IsNullOrEmpty(weaponRecord.OverrideAmmo))
		IL_0230: ldloc.s 5
		IL_0232: callvirt instance string MGSC.WeaponRecord::get_OverrideAmmo()
		IL_0237: call bool [mscorlib]System.String::IsNullOrEmpty(string)
		IL_023c: brtrue.s IL_0259

		// 			weaponComponent.OverridenAmmo = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.OverrideAmmo);
		IL_023e: ldloc.s 15
		IL_0240: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0245: ldloc.s 5
		IL_0247: callvirt instance string MGSC.WeaponRecord::get_OverrideAmmo()
		IL_024c: ldc.i4.1
		IL_024d: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_0252: callvirt instance void MGSC.WeaponComponent::set_OverridenAmmo(class MGSC.AmmoRecord)
		// 			weaponComponent.OverridenAmmo = weaponComponent.CurrentAmmoType;
		IL_0257: br.s IL_0267

		IL_0259: ldloc.s 15
		IL_025b: ldloc.s 15
		IL_025d: callvirt instance class MGSC.AmmoRecord MGSC.WeaponComponent::get_CurrentAmmoType()
		IL_0262: callvirt instance void MGSC.WeaponComponent::set_OverridenAmmo(class MGSC.AmmoRecord)

		// 		if (randomizeConditionAndCapacity)
		IL_0267: ldarg.s randomizeConditionAndCapacity
		IL_0269: brfalse.s IL_0272

		// 			weaponComponent.RandomizeCapacity();
		IL_026b: ldloc.s 15
		IL_026d: callvirt instance void MGSC.WeaponComponent::RandomizeCapacity()

		// 		_componentsCache.Add(weaponComponent);
		IL_0272: ldarg.0
		IL_0273: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0278: ldloc.s 15
		IL_027a: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 		if (weaponRecord.WeaponClass == WeaponClass.GrenadeLauncher)
		IL_027f: ldloc.s 5
		IL_0281: callvirt instance valuetype MGSC.WeaponClass MGSC.WeaponRecord::get_WeaponClass()
		IL_0286: ldc.i4.s 31
		IL_0288: bne.un.s IL_02c7

		// 			LauncherComponent launcherComponent = new LauncherComponent();
		IL_028a: newobj instance void MGSC.LauncherComponent::.ctor()
		IL_028f: stloc.s 16
		// 			_componentsCache.Add(launcherComponent);
		IL_0291: ldarg.0
		IL_0292: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0297: ldloc.s 16
		IL_0299: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// 			for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
		IL_029e: ldc.i4.0
		IL_029f: stloc.s 17
		// 				launcherComponent.LoadedGrenadesIds.Add(weaponRecord.DefaultGrenadeId);
		IL_02a1: br.s IL_02bc
		// loop start (head: IL_02bc)
			IL_02a3: ldloc.s 16
			IL_02a5: ldfld class [mscorlib]System.Collections.Generic.List`1<string> MGSC.LauncherComponent::LoadedGrenadesIds
			IL_02aa: ldloc.s 5
			IL_02ac: callvirt instance string MGSC.WeaponRecord::get_DefaultGrenadeId()
			IL_02b1: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
			// 			for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
			IL_02b6: ldloc.s 17
			IL_02b8: ldc.i4.1
			IL_02b9: add
			IL_02ba: stloc.s 17

			// 			for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
			IL_02bc: ldloc.s 17
			IL_02be: ldloc.s 15
			IL_02c0: callvirt instance int16 MGSC.WeaponComponent::get_CurrentAmmo()
			IL_02c5: blt.s IL_02a3
		// end loop

		// 	if (itemRecord is DatadiskRecord datadiskRecord)
		IL_02c7: ldarg.3
		IL_02c8: isinst MGSC.DatadiskRecord
		IL_02cd: stloc.s 6
		// 		DatadiskComponent datadiskComponent = new DatadiskComponent();
		IL_02cf: ldloc.s 6
		IL_02d1: brfalse.s IL_030c

		IL_02d3: newobj instance void MGSC.DatadiskComponent::.ctor()
		IL_02d8: stloc.s 18
		// 		datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
		IL_02da: ldloc.s 18
		IL_02dc: ldloc.s 6
		IL_02de: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_02e3: ldc.i4.0
		IL_02e4: ldloc.s 6
		IL_02e6: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_02eb: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
		IL_02f0: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
		IL_02f5: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_02fa: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)
		// 		_componentsCache.Add(datadiskComponent);
		IL_02ff: ldarg.0
		IL_0300: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0305: ldloc.s 18
		IL_0307: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// 	if (itemRecord is SkullRecord)
		IL_030c: ldarg.3
		IL_030d: isinst MGSC.SkullRecord
		IL_0312: brfalse.s IL_0328

		// 		SkullComponent item2 = new SkullComponent();
		IL_0314: newobj instance void MGSC.SkullComponent::.ctor()
		IL_0319: stloc.s 19
		// 		_componentsCache.Add(item2);
		IL_031b: ldarg.0
		IL_031c: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0321: ldloc.s 19
		IL_0323: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// }
		IL_0328: ret
	} // end of method ItemFactory::CreateComponent

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x34ba1
		// Header size: 1
		// Code size: 29 (0x1d)
		.maxstack 8

		// 	_componentsCache = new List<PickupItemComponent>();
		IL_0000: ldarg.0
		IL_0001: newobj instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::.ctor()
		IL_0006: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		// 	WeaponDurabilityMult = 1f;
		IL_000b: ldarg.0
		IL_000c: ldc.r4 1
		IL_0011: stfld float32 MGSC.ItemFactory::'<WeaponDurabilityMult>k__BackingField'
		// 	base..ctor();
		IL_0016: ldarg.0
		IL_0017: call instance void class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::.ctor()
		// }
		IL_001c: ret
	} // end of method ItemFactory::.ctor

	.method private hidebysig 
		instance object '<Awake>b__20_0' (
			class [mscorlib]System.Type t,
			class [SimpleJSON]SimpleJSON.JSONNode n
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x34bbf
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// 	return CreateItemOnFloor();
		IL_0000: ldarg.0
		IL_0001: call instance class MGSC.ItemOnFloor MGSC.ItemFactory::CreateItemOnFloor()
		IL_0006: ret
	} // end of method ItemFactory::'<Awake>b__20_0'

	.method assembly hidebysig static 
		bool '<CopyComponent>g__HasCompOfType|21_0'<(MGSC.PickupItemComponent) T> (
			valuetype MGSC.ItemFactory/'<>c__DisplayClass21_0'& ''
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x34bc8
		// Header size: 12
		// Code size: 81 (0x51)
		.maxstack 1
		.locals init (
			[0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[1] bool
		)

		// 	if (P_0.initialItem.Comp<T>() != null)
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass21_0'::initialItem
		IL_0006: callvirt instance !!0 MGSC.PickupItem::Comp<!!T>()
		IL_000b: box !!T
		IL_0010: brfalse.s IL_0014

		// 		return true;
		IL_0012: ldc.i4.1
		IL_0013: ret

		// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
		IL_0014: ldarg.0
		IL_0015: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass21_0'::itemComponents
		IL_001a: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_001f: stloc.0
		.try
		{
			// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
			IL_0020: br.s IL_0034
			// loop start (head: IL_0034)
				IL_0022: ldloca.s 0
				IL_0024: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
				// 		if (itemComponent is T)
				IL_0029: isinst !!T
				IL_002e: brfalse.s IL_0034

				// 			return true;
				IL_0030: ldc.i4.1
				IL_0031: stloc.1
				// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
				IL_0032: leave.s IL_004f

				IL_0034: ldloca.s 0
				IL_0036: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::MoveNext()
				IL_003b: brtrue.s IL_0022
			// end loop

			// (no C# code)
			IL_003d: leave.s IL_004d
		} // end .try
		finally
		{
			IL_003f: ldloca.s 0
			IL_0041: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>
			IL_0047: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// 	return false;
			IL_004c: endfinally
		} // end handler

		IL_004d: ldc.i4.0
		IL_004e: ret

		// (no C# code)
		IL_004f: ldloc.1
		IL_0050: ret
	} // end of method ItemFactory::'<CopyComponent>g__HasCompOfType|21_0'

	.method assembly hidebysig static 
		bool '<CreateComponent>g__HasCompOfType|22_0'<(MGSC.PickupItemComponent) T> (
			valuetype MGSC.ItemFactory/'<>c__DisplayClass22_0'& ''
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x34c38
		// Header size: 12
		// Code size: 81 (0x51)
		.maxstack 1
		.locals init (
			[0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[1] bool
		)

		// 	if (P_0.item.Comp<T>() != null)
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass22_0'::item
		IL_0006: callvirt instance !!0 MGSC.PickupItem::Comp<!!T>()
		IL_000b: box !!T
		IL_0010: brfalse.s IL_0014

		// 		return true;
		IL_0012: ldc.i4.1
		IL_0013: ret

		// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
		IL_0014: ldarg.0
		IL_0015: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass22_0'::itemComponents
		IL_001a: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_001f: stloc.0
		.try
		{
			// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
			IL_0020: br.s IL_0034
			// loop start (head: IL_0034)
				IL_0022: ldloca.s 0
				IL_0024: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
				// 		if (itemComponent is T)
				IL_0029: isinst !!T
				IL_002e: brfalse.s IL_0034

				// 			return true;
				IL_0030: ldc.i4.1
				IL_0031: stloc.1
				// 	foreach (PickupItemComponent itemComponent in P_0.itemComponents)
				IL_0032: leave.s IL_004f

				IL_0034: ldloca.s 0
				IL_0036: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::MoveNext()
				IL_003b: brtrue.s IL_0022
			// end loop

			// (no C# code)
			IL_003d: leave.s IL_004d
		} // end .try
		finally
		{
			IL_003f: ldloca.s 0
			IL_0041: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>
			IL_0047: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// 	return false;
			IL_004c: endfinally
		} // end handler

		IL_004d: ldc.i4.0
		IL_004e: ret

		// (no C# code)
		IL_004f: ldloc.1
		IL_0050: ret
	} // end of method ItemFactory::'<CreateComponent>g__HasCompOfType|22_0'

	// Properties
	.property instance int16 ConsumablesStackBonus()
	{
		.get instance int16 MGSC.ItemFactory::get_ConsumablesStackBonus()
		.set instance void MGSC.ItemFactory::set_ConsumablesStackBonus(int16)
	}
	.property instance float32 WeaponDurabilityMult()
	{
		.get instance float32 MGSC.ItemFactory::get_WeaponDurabilityMult()
		.set instance void MGSC.ItemFactory::set_WeaponDurabilityMult(float32)
	}

} // end of class MGSC.ItemFactory
