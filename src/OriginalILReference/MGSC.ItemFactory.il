.class public auto ansi beforefieldinit MGSC.ItemFactory
	extends class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>
{
	// Nested Types
	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass34_0'
		extends [mscorlib]System.ValueType
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public class MGSC.PickupItem initialItem
		.field public class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents

	} // end of class <>c__DisplayClass34_0

	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass35_0'
		extends [mscorlib]System.ValueType
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public class MGSC.PickupItem item
		.field public class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> itemComponents

	} // end of class <>c__DisplayClass35_0


	// Fields
	.field private class [UnityEngine.CoreModule]UnityEngine.Sprite _iconOneSlotPlaceholder
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	.field private class [UnityEngine.CoreModule]UnityEngine.Sprite _iconTwoSlotPlaceholder
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	.field private class [UnityEngine.CoreModule]UnityEngine.Sprite _smallIconPlaceholder
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
	.field private class [UnityEngine.CoreModule]UnityEngine.Sprite _shadowPlaceholder
	.custom instance void [UnityEngine.CoreModule]UnityEngine.SerializeField::.ctor() = (
		01 00 00 00
	)
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
	.field private float32 '<ArmorDurabilityMult>k__BackingField'
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
		// Method begins at RVA 0x56408
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// return <ConsumablesStackBonus>k__BackingField;
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
		// Method begins at RVA 0x56410
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// <ConsumablesStackBonus>k__BackingField = value;
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
		// Method begins at RVA 0x56419
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// return <WeaponDurabilityMult>k__BackingField;
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
		// Method begins at RVA 0x56421
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// <WeaponDurabilityMult>k__BackingField = value;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld float32 MGSC.ItemFactory::'<WeaponDurabilityMult>k__BackingField'
		// }
		IL_0007: ret
	} // end of method ItemFactory::set_WeaponDurabilityMult

	.method public hidebysig specialname 
		instance float32 get_ArmorDurabilityMult () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x5642a
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// return <ArmorDurabilityMult>k__BackingField;
		IL_0000: ldarg.0
		IL_0001: ldfld float32 MGSC.ItemFactory::'<ArmorDurabilityMult>k__BackingField'
		IL_0006: ret
	} // end of method ItemFactory::get_ArmorDurabilityMult

	.method private hidebysig specialname 
		instance void set_ArmorDurabilityMult (
			float32 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x56432
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// <ArmorDurabilityMult>k__BackingField = value;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld float32 MGSC.ItemFactory::'<ArmorDurabilityMult>k__BackingField'
		// }
		IL_0007: ret
	} // end of method ItemFactory::set_ArmorDurabilityMult

	.method public hidebysig 
		instance void SetConsumablesStackBonus (
			int32 consumablesStackBonus
		) cil managed 
	{
		// Method begins at RVA 0x5643b
		// Header size: 1
		// Code size: 9 (0x9)
		.maxstack 8

		// ConsumablesStackBonus = (short)consumablesStackBonus;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: conv.i2
		IL_0003: call instance void MGSC.ItemFactory::set_ConsumablesStackBonus(int16)
		// }
		IL_0008: ret
	} // end of method ItemFactory::SetConsumablesStackBonus

	.method public hidebysig 
		instance class [UnityEngine.CoreModule]UnityEngine.Sprite ResolveSmallIcon (
			class MGSC.ItemContentDescriptor desc
		) cil managed 
	{
		// Method begins at RVA 0x56445
		// Header size: 1
		// Code size: 28 (0x1c)
		.maxstack 8

		// if (!(desc.SmallIcon == null))
		IL_0000: ldarg.1
		IL_0001: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_SmallIcon()
		IL_0006: ldnull
		IL_0007: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_000c: brtrue.s IL_0015

		// return desc.SmallIcon;
		IL_000e: ldarg.1
		IL_000f: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_SmallIcon()
		IL_0014: ret

		// return _smallIconPlaceholder;
		IL_0015: ldarg.0
		IL_0016: ldfld class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemFactory::_smallIconPlaceholder
		IL_001b: ret
	} // end of method ItemFactory::ResolveSmallIcon

	.method public hidebysig 
		instance class [UnityEngine.CoreModule]UnityEngine.Sprite ResolveIcon (
			class MGSC.ItemContentDescriptor desc,
			int32 widthSize
		) cil managed 
	{
		// Method begins at RVA 0x56464
		// Header size: 12
		// Code size: 42 (0x2a)
		.maxstack 2
		.locals init (
			[0] class [UnityEngine.CoreModule]UnityEngine.Sprite
		)

		// Sprite result = ((widthSize > 1) ? _iconTwoSlotPlaceholder : _iconOneSlotPlaceholder);
		IL_0000: ldarg.2
		IL_0001: ldc.i4.1
		IL_0002: bgt.s IL_000c

		IL_0004: ldarg.0
		IL_0005: ldfld class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemFactory::_iconOneSlotPlaceholder
		IL_000a: br.s IL_0012

		// if (!(desc.Icon == null))
		IL_000c: ldarg.0
		IL_000d: ldfld class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemFactory::_iconTwoSlotPlaceholder

		IL_0012: stloc.0
		IL_0013: ldarg.1
		IL_0014: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_Icon()
		IL_0019: ldnull
		IL_001a: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_001f: brtrue.s IL_0028

		// return desc.Icon;
		IL_0021: ldarg.1
		IL_0022: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_Icon()
		IL_0027: ret

		// return result;
		IL_0028: ldloc.0
		IL_0029: ret
	} // end of method ItemFactory::ResolveIcon

	.method public hidebysig 
		instance class [UnityEngine.CoreModule]UnityEngine.Sprite ResolveShadowIcon (
			class MGSC.ItemContentDescriptor desc
		) cil managed 
	{
		// Method begins at RVA 0x5649a
		// Header size: 1
		// Code size: 28 (0x1c)
		.maxstack 8

		// if (!(desc.ShadowOnFloor == null))
		IL_0000: ldarg.1
		IL_0001: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_ShadowOnFloor()
		IL_0006: ldnull
		IL_0007: call bool [UnityEngine.CoreModule]UnityEngine.Object::op_Equality(class [UnityEngine.CoreModule]UnityEngine.Object, class [UnityEngine.CoreModule]UnityEngine.Object)
		IL_000c: brtrue.s IL_0015

		// return desc.ShadowOnFloor;
		IL_000e: ldarg.1
		IL_000f: callvirt instance class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemContentDescriptor::get_ShadowOnFloor()
		IL_0014: ret

		// return _shadowPlaceholder;
		IL_0015: ldarg.0
		IL_0016: ldfld class [UnityEngine.CoreModule]UnityEngine.Sprite MGSC.ItemFactory::_shadowPlaceholder
		IL_001b: ret
	} // end of method ItemFactory::ResolveShadowIcon

	.method public hidebysig 
		instance class MGSC.SpaceTime GetGameTimeNow () cil managed 
	{
		// Method begins at RVA 0x564b7
		// Header size: 1
		// Code size: 12 (0xc)
		.maxstack 8

		// return _state.Get<SpaceTime>();
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
		// Method begins at RVA 0x564c4
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// WeaponDurabilityMult = weaponDurabilityMult;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance void MGSC.ItemFactory::set_WeaponDurabilityMult(float32)
		// }
		IL_0007: ret
	} // end of method ItemFactory::SetWeaponDurabilityMult

	.method public hidebysig 
		instance int16 GetMaxStackSize (
			class MGSC.IStackableRecord stackable
		) cil managed 
	{
		// Method begins at RVA 0x564d0
		// Header size: 12
		// Code size: 88 (0x58)
		.maxstack 2
		.locals init (
			[0] class MGSC.Difficulty,
			[1] valuetype MGSC.ItemStacksSize
		)

		// Difficulty difficulty = _state.Get<Difficulty>();
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_0006: callvirt instance !!0 MGSC.State::Get<class MGSC.Difficulty>()
		IL_000b: stloc.0
		// if (stackable == null)
		IL_000c: ldarg.1
		IL_000d: brtrue.s IL_0011

		// return 1;
		IL_000f: ldc.i4.1
		IL_0010: ret

		// 	return difficulty.Preset.ItemsStackSize switch
		// 	{
		// 		ItemStacksSize.X2 => (short)(stackable.MaxStack * 2), 
		// 		ItemStacksSize.X3 => (short)(stackable.MaxStack * 3), 
		// 		ItemStacksSize.X4 => (short)(stackable.MaxStack * 4), 
		// 		_ => stackable.MaxStack, 
		// 	};
		IL_0011: ldloc.0
		IL_0012: callvirt instance class MGSC.DifficultyPreset MGSC.Difficulty::get_Preset()
		IL_0017: callvirt instance valuetype MGSC.ItemStacksSize MGSC.DifficultyPreset::get_ItemsStackSize()
		IL_001c: stloc.1
		// (no C# code)
		IL_001d: ldloc.1
		IL_001e: ldc.i4.1
		IL_001f: sub
		IL_0020: switch (IL_0033, IL_003d, IL_0047)

		IL_0031: br.s IL_0051

		IL_0033: ldarg.1
		IL_0034: callvirt instance int16 MGSC.IStackableRecord::get_MaxStack()
		IL_0039: ldc.i4.2
		IL_003a: mul
		IL_003b: conv.i2
		IL_003c: ret

		IL_003d: ldarg.1
		IL_003e: callvirt instance int16 MGSC.IStackableRecord::get_MaxStack()
		IL_0043: ldc.i4.3
		IL_0044: mul
		IL_0045: conv.i2
		IL_0046: ret

		IL_0047: ldarg.1
		IL_0048: callvirt instance int16 MGSC.IStackableRecord::get_MaxStack()
		IL_004d: ldc.i4.4
		IL_004e: mul
		IL_004f: conv.i2
		IL_0050: ret

		IL_0051: ldarg.1
		IL_0052: callvirt instance int16 MGSC.IStackableRecord::get_MaxStack()
		IL_0057: ret
	} // end of method ItemFactory::GetMaxStackSize

	.method public hidebysig 
		instance void SetArmorDurabilityMult (
			float32 armorDurabilityMult
		) cil managed 
	{
		// Method begins at RVA 0x56534
		// Header size: 1
		// Code size: 8 (0x8)
		.maxstack 8

		// ArmorDurabilityMult = armorDurabilityMult;
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance void MGSC.ItemFactory::set_ArmorDurabilityMult(float32)
		// }
		IL_0007: ret
	} // end of method ItemFactory::SetArmorDurabilityMult

	.method public hidebysig 
		instance class MGSC.ItemOnFloor CreateItemOnFloor () cil managed 
	{
		// Method begins at RVA 0x56540
		// Header size: 12
		// Code size: 31 (0x1f)
		.maxstack 2
		.locals init (
			[0] class MGSC.ItemOnFloor
		)

		// ItemOnFloor component = Object.Instantiate(_itemOnFloorPrefab).GetComponent<ItemOnFloor>();
		IL_0000: ldarg.0
		IL_0001: ldfld class [UnityEngine.CoreModule]UnityEngine.GameObject MGSC.ItemFactory::_itemOnFloorPrefab
		IL_0006: call !!0 [UnityEngine.CoreModule]UnityEngine.Object::Instantiate<class [UnityEngine.CoreModule]UnityEngine.GameObject>(!!0)
		IL_000b: callvirt instance !!0 [UnityEngine.CoreModule]UnityEngine.GameObject::GetComponent<class MGSC.ItemOnFloor>()
		IL_0010: stloc.0
		// _state.Resolve(component);
		IL_0011: ldarg.0
		IL_0012: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_0017: ldloc.0
		IL_0018: callvirt instance void MGSC.State::Resolve(object)
		// return component;
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
		// Method begins at RVA 0x5656b
		// Header size: 1
		// Code size: 16 (0x10)
		.maxstack 8

		// ItemOnFloor itemOnFloor = CreateItemOnFloor();
		IL_0000: ldarg.0
		IL_0001: call instance class MGSC.ItemOnFloor MGSC.ItemFactory::CreateItemOnFloor()
		// itemOnFloor.Initialize(x, y, visualDelay);
		IL_0006: dup
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: callvirt instance void MGSC.ItemOnFloor::Initialize(int32, int32, float32)
		// return itemOnFloor;
		IL_000f: ret
	} // end of method ItemFactory::CreateItemOnFloor

	.method public hidebysig 
		instance class MGSC.BasePickupItem CreateItemForObjectStorage (
			string itemId,
			class MGSC.MapObstacle mapObstacle
		) cil managed 
	{
		// Method begins at RVA 0x5657c
		// Header size: 12
		// Code size: 43 (0x2b)
		.maxstack 5
		.locals init (
			[0] class MGSC.BasePickupItem
		)

		// BasePickupItem basePickupItem = CreateForInventory(itemId, randomizeConditionAndCapacity: true);
		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.1
		IL_0003: ldc.i4.0
		IL_0004: call instance class MGSC.BasePickupItem MGSC.ItemFactory::CreateForInventory(string, bool, bool)
		IL_0009: stloc.0
		// mapObstacle.Store.storage.TryPutItem(basePickupItem, CellPosition.Zero);
		IL_000a: ldarg.2
		IL_000b: callvirt instance class MGSC.Store MGSC.MapObstacle::get_Store()
		IL_0010: ldfld class MGSC.ItemStorage MGSC.Store::'storage'
		IL_0015: ldloc.0
		IL_0016: ldsfld valuetype MGSC.CellPosition MGSC.CellPosition::Zero
		IL_001b: ldc.i4.0
		IL_001c: ldc.i4.1
		IL_001d: callvirt instance bool MGSC.ItemStorage::TryPutItem(class MGSC.BasePickupItem, valuetype MGSC.CellPosition, bool, bool)
		IL_0022: pop
		// mapObstacle.RefreshVisual();
		IL_0023: ldarg.2
		IL_0024: callvirt instance void MGSC.MapObstacle::RefreshVisual()
		// return basePickupItem;
		IL_0029: ldloc.0
		IL_002a: ret
	} // end of method ItemFactory::CreateItemForObjectStorage

	.method public hidebysig 
		instance void KillItem (
			class MGSC.ItemOnFloor view
		) cil managed 
	{
		// Method begins at RVA 0x565b3
		// Header size: 1
		// Code size: 12 (0xc)
		.maxstack 8

		// Object.Destroy(view.gameObject);
		IL_0000: ldarg.1
		IL_0001: callvirt instance class [UnityEngine.CoreModule]UnityEngine.GameObject [UnityEngine.CoreModule]UnityEngine.Component::get_gameObject()
		IL_0006: call void [UnityEngine.CoreModule]UnityEngine.Object::Destroy(class [UnityEngine.CoreModule]UnityEngine.Object)
		// }
		IL_000b: ret
	} // end of method ItemFactory::KillItem

	.method public hidebysig 
		instance class MGSC.BasePickupItem CreateForInventory (
			string itemId,
			[opt] bool randomizeConditionAndCapacity,
			[opt] bool isSingleItem
		) cil managed 
	{
		.param [2] = bool(false)
		.param [3] = bool(false)
		// Method begins at RVA 0x565c0
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

		// if (Data.Items.GetRecord(itemId, ignoreLog: false) is CompositeItemRecord compositeItemRecord)
		IL_0000: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0005: ldarg.1
		IL_0006: ldc.i4.0
		IL_0007: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.BasePickupItemRecord>::GetRecord(string, bool)
		IL_000c: isinst MGSC.CompositeItemRecord
		IL_0011: stloc.0
		// int inventoryWidthSize = ((ItemRecord)compositeItemRecord.PrimaryRecord).InventoryWidthSize;
		IL_0012: ldloc.0
		IL_0013: brfalse IL_00e6

		IL_0018: ldloc.0
		IL_0019: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
		IL_001e: castclass MGSC.ItemRecord
		IL_0023: callvirt instance int32 MGSC.ItemRecord::get_InventoryWidthSize()
		IL_0028: stloc.1
		// float weight = ((ItemRecord)compositeItemRecord.PrimaryRecord).Weight;
		IL_0029: ldloc.0
		IL_002a: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
		IL_002f: castclass MGSC.ItemRecord
		IL_0034: callvirt instance float32 MGSC.ItemRecord::get_Weight()
		IL_0039: stloc.2
		// PickupItem pickupItem = new PickupItem(itemId, inventoryWidthSize, weight);
		IL_003a: ldarg.1
		IL_003b: ldloc.1
		IL_003c: ldloc.2
		IL_003d: newobj instance void MGSC.PickupItem::.ctor(string, int32, float32)
		IL_0042: stloc.3
		// foreach (BasePickupItemRecord record in compositeItemRecord.Records)
		IL_0043: ldloc.0
		IL_0044: callvirt instance class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItemRecord> MGSC.CompositeItemRecord::get_Records()
		IL_0049: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.BasePickupItemRecord>::GetEnumerator()
		IL_004e: stloc.s 4
		.try
		{
			// foreach (BasePickupItemRecord record in compositeItemRecord.Records)
			IL_0050: br.s IL_00c0
			// loop start (head: IL_00c0)
				IL_0052: ldloca.s 4
				IL_0054: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.BasePickupItemRecord>::get_Current()
				IL_0059: stloc.s 5
				// CreateComponent(pickupItem, _componentsCache, record, randomizeConditionAndCapacity, compositeItemRecord.PrimaryRecord == record);
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
				// pickupItem.Add(record, compositeItemRecord.PrimaryRecord == record);
				IL_0075: ldloc.3
				IL_0076: ldloc.s 5
				IL_0078: ldloc.0
				IL_0079: callvirt instance class MGSC.BasePickupItemRecord MGSC.CompositeItemRecord::get_PrimaryRecord()
				IL_007e: ldloc.s 5
				IL_0080: ceq
				IL_0082: callvirt instance void MGSC.PickupItem::Add(class MGSC.BasePickupItemRecord, bool)
				// foreach (PickupItemComponent item in _componentsCache)
				IL_0087: ldarg.0
				IL_0088: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_008d: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
				IL_0092: stloc.s 6
				.try
				{
					// foreach (PickupItemComponent item in _componentsCache)
					IL_0094: br.s IL_00a7
					// loop start (head: IL_00a7)
						IL_0096: ldloca.s 6
						IL_0098: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
						IL_009d: stloc.s 7
						// pickupItem.Add(item);
						IL_009f: ldloc.3
						IL_00a0: ldloc.s 7
						IL_00a2: callvirt instance void MGSC.PickupItem::Add(class MGSC.PickupItemComponent)

						// foreach (PickupItemComponent item in _componentsCache)
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
					// foreach (BasePickupItemRecord record in compositeItemRecord.Records)
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
			// _componentsCache.Clear();
			IL_00d8: endfinally
		} // end handler

		IL_00d9: ldarg.0
		IL_00da: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_00df: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// return pickupItem;
		IL_00e4: ldloc.3
		IL_00e5: ret

		// Debug.LogError("Failed create item by record: '" + itemId.ToLog() + "'.");
		IL_00e6: ldstr "Failed create item by record: '"
		IL_00eb: ldarg.1
		IL_00ec: call string MGSC.FormatHelper::ToLog(string)
		IL_00f1: ldstr "'."
		IL_00f6: call string [mscorlib]System.String::Concat(string, string, string)
		IL_00fb: call void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
		// return null;
		IL_0100: ldnull
		IL_0101: ret
	} // end of method ItemFactory::CreateForInventory

	.method public hidebysig 
		instance class MGSC.BasePickupItem CopyItem (
			class MGSC.BasePickupItem initialItem
		) cil managed 
	{
		// Method begins at RVA 0x566ec
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

		// if (initialItem is PickupItem pickupItem)
		IL_0000: ldarg.1
		IL_0001: isinst MGSC.PickupItem
		IL_0006: stloc.0
		// PickupItem pickupItem2 = new PickupItem(initialItem.Id, initialItem.InventoryWidthSize, initialItem.SingleWeight);
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
		// foreach (PickupItemComponent component in pickupItem.Components)
		IL_0025: ldloc.0
		IL_0026: callvirt instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.PickupItemComponent> MGSC.PickupItem::get_Components()
		IL_002b: callvirt instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_0030: stloc.2
		.try
		{
			// foreach (PickupItemComponent component in pickupItem.Components)
			IL_0031: br.s IL_0081
			// loop start (head: IL_0081)
				IL_0033: ldloc.2
				IL_0034: callvirt instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class MGSC.PickupItemComponent>::get_Current()
				IL_0039: stloc.3
				// CopyComponent(pickupItem2, _componentsCache, component);
				IL_003a: ldarg.0
				IL_003b: ldloc.1
				IL_003c: ldarg.0
				IL_003d: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_0042: ldloc.3
				IL_0043: call instance void MGSC.ItemFactory::CopyComponent(class MGSC.PickupItem, class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>, class MGSC.PickupItemComponent)
				// foreach (PickupItemComponent item in _componentsCache)
				IL_0048: ldarg.0
				IL_0049: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
				IL_004e: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
				IL_0053: stloc.s 4
				.try
				{
					// foreach (PickupItemComponent item in _componentsCache)
					IL_0055: br.s IL_0068
					// loop start (head: IL_0068)
						IL_0057: ldloca.s 4
						IL_0059: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
						IL_005e: stloc.s 5
						// pickupItem2.Add(item);
						IL_0060: ldloc.1
						IL_0061: ldloc.s 5
						IL_0063: callvirt instance void MGSC.PickupItem::Add(class MGSC.PickupItemComponent)

						// foreach (PickupItemComponent item in _componentsCache)
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
					// foreach (PickupItemComponent component in pickupItem.Components)
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

			// _componentsCache.Clear();
			IL_0094: endfinally
		} // end handler

		IL_0095: ldarg.0
		IL_0096: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_009b: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// for (int i = 0; i < pickupItem.Records.Count; i++)
		IL_00a0: ldc.i4.0
		IL_00a1: stloc.s 6
		// pickupItem2.Add(pickupItem.Records[i], i == 0);
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
			// for (int i = 0; i < pickupItem.Records.Count; i++)
			IL_00bd: ldloc.s 6
			IL_00bf: ldc.i4.1
			IL_00c0: add
			IL_00c1: stloc.s 6

			// for (int i = 0; i < pickupItem.Records.Count; i++)
			IL_00c3: ldloc.s 6
			IL_00c5: ldloc.0
			IL_00c6: callvirt instance class [mscorlib]System.Collections.Generic.IReadOnlyList`1<class MGSC.BasePickupItemRecord> MGSC.PickupItem::get_Records()
			IL_00cb: callvirt instance int32 class [mscorlib]System.Collections.Generic.IReadOnlyCollection`1<class MGSC.BasePickupItemRecord>::get_Count()
			IL_00d0: blt.s IL_00a5
		// end loop

		// return pickupItem2;
		IL_00d2: ldloc.1
		IL_00d3: ret

		// Debug.LogError("Failed to copy item by record: '" + initialItem.Id + "'.");
		IL_00d4: ldstr "Failed to copy item by record: '"
		IL_00d9: ldarg.1
		IL_00da: callvirt instance string MGSC.BasePickupItem::get_Id()
		IL_00df: ldstr "'."
		IL_00e4: call string [mscorlib]System.String::Concat(string, string, string)
		IL_00e9: call void [UnityEngine.CoreModule]UnityEngine.Debug::LogError(object)
		// return null;
		IL_00ee: ldnull
		IL_00ef: ret
	} // end of method ItemFactory::CopyItem

	.method family hidebysig virtual 
		instance void Awake () cil managed 
	{
		// Method begins at RVA 0x56804
		// Header size: 1
		// Code size: 34 (0x22)
		.maxstack 8

		// base.Awake();
		IL_0000: ldarg.0
		IL_0001: call instance void class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::Awake()
		// LoadFromJSON.AddCustomActivator(typeof(ItemOnFloor), (Type t, JSONNode n) => CreateItemOnFloor());
		IL_0006: ldtoken MGSC.ItemOnFloor
		IL_000b: call class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
		IL_0010: ldarg.0
		IL_0011: ldftn instance object MGSC.ItemFactory::'<Awake>b__33_0'(class [mscorlib]System.Type, class [SimpleJSON]SimpleJSON.JSONNode)
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
		// Method begins at RVA 0x56828
		// Header size: 12
		// Code size: 534 (0x216)
		.maxstack 4
		.locals init (
			[0] valuetype MGSC.ItemFactory/'<>c__DisplayClass34_0',
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
		IL_0003: stfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass34_0'::initialItem
		// (no C# code)
		IL_0008: ldloca.s 0
		IL_000a: ldarg.2
		IL_000b: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		// itemComponents.Clear();
		IL_0010: ldloc.0
		IL_0011: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_0016: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// if (initialComponent is BreakableItemComponent breakableItemComponent)
		IL_001b: ldarg.3
		IL_001c: isinst MGSC.BreakableItemComponent
		IL_0021: stloc.1
		// 		BreakableItemComponent item = new BreakableItemComponent(new BreakableItemRecord
		// 		{
		// 			MaxDurability = breakableItemComponent.MaxDurability,
		// 			MinDurabilityAfterRepair = breakableItemComponent.MinDurabilityAfterRepair,
		// 			Unbreakable = breakableItemComponent.Unbreakable
		// 		});
		IL_0022: ldloc.1
		IL_0023: brfalse.s IL_0062

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
		IL_004e: newobj instance void MGSC.BreakableItemComponent::.ctor(class MGSC.BreakableItemRecord)
		IL_0053: stloc.s 7
		// itemComponents.Add(item);
		IL_0055: ldloc.0
		IL_0056: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_005b: ldloc.s 7
		IL_005d: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (initialComponent is UsableItemComponent usableItemComponent)
		IL_0062: ldarg.3
		IL_0063: isinst MGSC.UsableItemComponent
		IL_0068: stloc.2
		// UsableItemComponent item2 = new UsableItemComponent(usableItemComponent.MaxUsageValue, usableItemComponent.UsageCost, usableItemComponent.IsUsable);
		IL_0069: ldloc.2
		IL_006a: brfalse.s IL_0092

		IL_006c: ldloc.2
		IL_006d: callvirt instance int32 MGSC.UsableItemComponent::get_MaxUsageValue()
		IL_0072: ldloc.2
		IL_0073: callvirt instance int32 MGSC.UsableItemComponent::get_UsageCost()
		IL_0078: ldloc.2
		IL_0079: callvirt instance bool MGSC.UsableItemComponent::get_IsUsable()
		IL_007e: newobj instance void MGSC.UsableItemComponent::.ctor(int32, int32, bool)
		IL_0083: stloc.s 8
		// itemComponents.Add(item2);
		IL_0085: ldloc.0
		IL_0086: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_008b: ldloc.s 8
		IL_008d: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (initialComponent is AllowPutInVestItemComp && !HasCompOfType<AllowPutInVestItemComp>())
		IL_0092: ldarg.3
		IL_0093: isinst MGSC.AllowPutInVestItemComp
		IL_0098: brfalse.s IL_00b3

		IL_009a: ldloca.s 0
		IL_009c: call bool MGSC.ItemFactory::'<CopyComponent>g__HasCompOfType|34_0'<class MGSC.AllowPutInVestItemComp>(valuetype MGSC.ItemFactory/'<>c__DisplayClass34_0'&)
		IL_00a1: brtrue.s IL_00b3

		// itemComponents.Add(new AllowPutInVestItemComp());
		IL_00a3: ldloc.0
		IL_00a4: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_00a9: newobj instance void MGSC.AllowPutInVestItemComp::.ctor()
		IL_00ae: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (initialComponent is ExpireComponent expireComponent && !HasCompOfType<ExpireComponent>())
		IL_00b3: ldarg.3
		IL_00b4: isinst MGSC.ExpireComponent
		IL_00b9: stloc.3
		// (no C# code)
		IL_00ba: ldloc.3
		IL_00bb: brfalse.s IL_00e2

		IL_00bd: ldloca.s 0
		IL_00bf: call bool MGSC.ItemFactory::'<CopyComponent>g__HasCompOfType|34_0'<class MGSC.ExpireComponent>(valuetype MGSC.ItemFactory/'<>c__DisplayClass34_0'&)
		IL_00c4: brtrue.s IL_00e2

		// itemComponents.Add(new ExpireComponent(expireComponent.ExpireDate, expireComponent.IsStarted));
		IL_00c6: ldloc.0
		IL_00c7: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_00cc: ldloc.3
		IL_00cd: callvirt instance valuetype [mscorlib]System.DateTime MGSC.ExpireComponent::get_ExpireDate()
		IL_00d2: ldloc.3
		IL_00d3: callvirt instance bool MGSC.ExpireComponent::get_IsStarted()
		IL_00d8: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_00dd: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (initialComponent is StackableItemComponent stackableItemComponent)
		IL_00e2: ldarg.3
		IL_00e3: isinst MGSC.StackableItemComponent
		IL_00e8: stloc.s 4
		// StackableItemComponent stackableItemComponent2 = new StackableItemComponent(stackableItemComponent.Max);
		IL_00ea: ldloc.s 4
		IL_00ec: brfalse.s IL_0118

		IL_00ee: ldloc.s 4
		IL_00f0: callvirt instance int16 MGSC.StackableItemComponent::get_Max()
		IL_00f5: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_00fa: stloc.s 9
		// stackableItemComponent2.Count = stackableItemComponent.Count;
		IL_00fc: ldloc.s 9
		IL_00fe: ldloc.s 4
		IL_0100: callvirt instance int16 MGSC.StackableItemComponent::get_Count()
		IL_0105: callvirt instance void MGSC.StackableItemComponent::set_Count(int16)
		// itemComponents.Add(stackableItemComponent2);
		IL_010a: ldloc.0
		IL_010b: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_0110: ldloc.s 9
		IL_0112: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// if (initialComponent is WeaponComponent { WeaponRecord: var weaponRecord } weaponComponent)
		IL_0117: ret

		IL_0118: ldarg.3
		IL_0119: isinst MGSC.WeaponComponent
		IL_011e: stloc.s 5
		// (no C# code)
		IL_0120: ldloc.s 5
		IL_0122: brfalse IL_01cb

		// WeaponComponent weaponComponent2 = new WeaponComponent(weaponComponent.WeaponRecord);
		IL_0127: ldloc.s 5
		IL_0129: callvirt instance class MGSC.WeaponRecord MGSC.WeaponComponent::get_WeaponRecord()
		IL_012e: stloc.s 10
		IL_0130: ldloc.s 5
		IL_0132: callvirt instance class MGSC.WeaponRecord MGSC.WeaponComponent::get_WeaponRecord()
		IL_0137: newobj instance void MGSC.WeaponComponent::.ctor(class MGSC.BasePickupItemRecord)
		IL_013c: stloc.s 11
		// weaponComponent2.CurrentAmmoType = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.DefaultAmmoId);
		IL_013e: ldloc.s 11
		IL_0140: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0145: ldloc.s 10
		IL_0147: callvirt instance string MGSC.WeaponRecord::get_DefaultAmmoId()
		IL_014c: ldc.i4.1
		IL_014d: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_0152: callvirt instance void MGSC.WeaponComponent::set_CurrentAmmoType(class MGSC.AmmoRecord)
		// weaponComponent2.CurrentFireMode = Data.Firemodes.GetRecord(weaponRecord.Firemodes[0]);
		IL_0157: ldloc.s 11
		IL_0159: call class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord> MGSC.Data::get_Firemodes()
		IL_015e: ldloc.s 10
		IL_0160: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.WeaponRecord::get_Firemodes()
		IL_0165: ldc.i4.0
		IL_0166: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_016b: ldc.i4.1
		IL_016c: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord>::GetRecord(string, bool)
		IL_0171: callvirt instance void MGSC.WeaponComponent::set_CurrentFireMode(class MGSC.FireModeRecord)
		// _componentsCache.Add(weaponComponent2);
		IL_0176: ldarg.0
		IL_0177: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_017c: ldloc.s 11
		IL_017e: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// if (weaponRecord.WeaponClass == WeaponClass.GrenadeLauncher)
		IL_0183: ldloc.s 10
		IL_0185: callvirt instance valuetype MGSC.WeaponClass MGSC.WeaponRecord::get_WeaponClass()
		IL_018a: ldc.i4.s 31
		IL_018c: bne.un.s IL_01cb

		// LauncherComponent launcherComponent = new LauncherComponent();
		IL_018e: newobj instance void MGSC.LauncherComponent::.ctor()
		IL_0193: stloc.s 12
		// _componentsCache.Add(launcherComponent);
		IL_0195: ldarg.0
		IL_0196: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_019b: ldloc.s 12
		IL_019d: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
		IL_01a2: ldc.i4.0
		IL_01a3: stloc.s 13
		// launcherComponent.LoadedGrenadesIds.Add(weaponRecord.DefaultGrenadeId);
		IL_01a5: br.s IL_01c0
		// loop start (head: IL_01c0)
			IL_01a7: ldloc.s 12
			IL_01a9: ldfld class [mscorlib]System.Collections.Generic.List`1<string> MGSC.LauncherComponent::LoadedGrenadesIds
			IL_01ae: ldloc.s 10
			IL_01b0: callvirt instance string MGSC.WeaponRecord::get_DefaultGrenadeId()
			IL_01b5: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
			// for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
			IL_01ba: ldloc.s 13
			IL_01bc: ldc.i4.1
			IL_01bd: add
			IL_01be: stloc.s 13

			// for (int i = 0; i < weaponComponent2.CurrentAmmo; i++)
			IL_01c0: ldloc.s 13
			IL_01c2: ldloc.s 11
			IL_01c4: callvirt instance int16 MGSC.WeaponComponent::get_CurrentAmmo()
			IL_01c9: blt.s IL_01a7
		// end loop

		// if (initialComponent is DatadiskComponent datadiskComponent)
		IL_01cb: ldarg.3
		IL_01cc: isinst MGSC.DatadiskComponent
		IL_01d1: stloc.s 6
		// DatadiskComponent datadiskComponent2 = new DatadiskComponent();
		IL_01d3: ldloc.s 6
		IL_01d5: brfalse.s IL_01f9

		IL_01d7: newobj instance void MGSC.DatadiskComponent::.ctor()
		IL_01dc: stloc.s 14
		// datadiskComponent2.SetUnlockId(datadiskComponent.UnlockId);
		IL_01de: ldloc.s 14
		IL_01e0: ldloc.s 6
		IL_01e2: callvirt instance string MGSC.DatadiskComponent::get_UnlockId()
		IL_01e7: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)
		// _componentsCache.Add(datadiskComponent2);
		IL_01ec: ldarg.0
		IL_01ed: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_01f2: ldloc.s 14
		IL_01f4: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (initialComponent is SkullComponent)
		IL_01f9: ldarg.3
		IL_01fa: isinst MGSC.SkullComponent
		IL_01ff: brfalse.s IL_0215

		// SkullComponent item3 = new SkullComponent();
		IL_0201: newobj instance void MGSC.SkullComponent::.ctor()
		IL_0206: stloc.s 15
		// _componentsCache.Add(item3);
		IL_0208: ldarg.0
		IL_0209: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_020e: ldloc.s 15
		IL_0210: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// }
		IL_0215: ret
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
		// Method begins at RVA 0x56a4c
		// Header size: 12
		// Code size: 1047 (0x417)
		.maxstack 4
		.locals init (
			[0] valuetype MGSC.ItemFactory/'<>c__DisplayClass35_0',
			[1] class MGSC.BreakableItemRecord,
			[2] class MGSC.UsableItemRecord,
			[3] class MGSC.AugmentationRecord,
			[4] class MGSC.ItemRecord,
			[5] class MGSC.AmmoRecord,
			[6] class MGSC.IStackableRecord,
			[7] class MGSC.WeaponRecord,
			[8] class MGSC.DatadiskRecord,
			[9] class MGSC.BackpackRecord,
			[10] class MGSC.BreakableItemComponent,
			[11] class MGSC.UsableItemComponent,
			[12] class MGSC.AugmentationComponent,
			[13] class MGSC.ItemExpireRecord,
			[14] valuetype [mscorlib]System.DateTime,
			[15] int32,
			[16] class MGSC.StackableItemComponent,
			[17] int16,
			[18] class MGSC.StackableItemComponent,
			[19] class MGSC.WeaponComponent,
			[20] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>,
			[21] class MGSC.ItemTrait,
			[22] class MGSC.LauncherComponent,
			[23] int32,
			[24] class MGSC.DatadiskComponent,
			[25] class MGSC.SkullComponent,
			[26] int32,
			[27] class MGSC.ExtendedHeightComp,
			[28] valuetype MGSC.BackpackSize
		)

		// {
		IL_0000: ldloca.s 0
		IL_0002: ldarg.1
		IL_0003: stfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass35_0'::item
		// (no C# code)
		IL_0008: ldloca.s 0
		IL_000a: ldarg.2
		IL_000b: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		// itemComponents.Clear();
		IL_0010: ldloc.0
		IL_0011: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_0016: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Clear()
		// if (itemRecord is BreakableItemRecord record)
		IL_001b: ldarg.3
		IL_001c: isinst MGSC.BreakableItemRecord
		IL_0021: stloc.1
		// BreakableItemComponent breakableItemComponent = new BreakableItemComponent(record);
		IL_0022: ldloc.1
		IL_0023: brfalse.s IL_0091

		IL_0025: ldloc.1
		IL_0026: newobj instance void MGSC.BreakableItemComponent::.ctor(class MGSC.BreakableItemRecord)
		IL_002b: stloc.s 10
		// itemComponents.Add(breakableItemComponent);
		IL_002d: ldloc.0
		IL_002e: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_0033: ldloc.s 10
		IL_0035: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// if (itemRecord is WeaponRecord)
		IL_003a: ldarg.3
		IL_003b: isinst MGSC.WeaponRecord
		IL_0040: brfalse.s IL_005e

		// breakableItemComponent.SetMaxDurability(Mathf.RoundToInt((float)breakableItemComponent.MaxDurability * WeaponDurabilityMult), restoreDurability: true);
		IL_0042: ldloc.s 10
		IL_0044: ldloc.s 10
		IL_0046: callvirt instance int32 MGSC.BreakableItemComponent::get_MaxDurability()
		IL_004b: conv.r4
		IL_004c: ldarg.0
		IL_004d: call instance float32 MGSC.ItemFactory::get_WeaponDurabilityMult()
		IL_0052: mul
		IL_0053: call int32 [UnityEngine.CoreModule]UnityEngine.Mathf::RoundToInt(float32)
		IL_0058: ldc.i4.1
		IL_0059: callvirt instance void MGSC.BreakableItemComponent::SetMaxDurability(int32, bool)

		// if (itemRecord is IArmorRecord)
		IL_005e: ldarg.3
		IL_005f: isinst MGSC.IArmorRecord
		IL_0064: brfalse.s IL_0082

		// breakableItemComponent.SetMaxDurability(Mathf.RoundToInt((float)breakableItemComponent.MaxDurability * ArmorDurabilityMult), restoreDurability: true);
		IL_0066: ldloc.s 10
		IL_0068: ldloc.s 10
		IL_006a: callvirt instance int32 MGSC.BreakableItemComponent::get_MaxDurability()
		IL_006f: conv.r4
		IL_0070: ldarg.0
		IL_0071: call instance float32 MGSC.ItemFactory::get_ArmorDurabilityMult()
		IL_0076: mul
		IL_0077: call int32 [UnityEngine.CoreModule]UnityEngine.Mathf::RoundToInt(float32)
		IL_007c: ldc.i4.1
		IL_007d: callvirt instance void MGSC.BreakableItemComponent::SetMaxDurability(int32, bool)

		// if (randomizeConditionAndCapacity)
		IL_0082: ldarg.s randomizeConditionAndCapacity
		IL_0084: brfalse.s IL_0091

		// breakableItemComponent.RandomizeCondition(40);
		IL_0086: ldloc.s 10
		IL_0088: ldc.i4.s 40
		IL_008a: ldc.i4.s 100
		IL_008c: callvirt instance void MGSC.BreakableItemComponent::RandomizeCondition(int32, int32)

		// if (itemRecord is UsableItemRecord usableItemRecord)
		IL_0091: ldarg.3
		IL_0092: isinst MGSC.UsableItemRecord
		IL_0097: stloc.2
		// UsableItemComponent usableItemComponent = new UsableItemComponent(usableItemRecord.MaxUsage, usableItemRecord.UsageCost, usableItemRecord.IsUsable);
		IL_0098: ldloc.2
		IL_0099: brfalse.s IL_00d8

		IL_009b: ldloc.2
		IL_009c: callvirt instance int32 MGSC.UsableItemRecord::get_MaxUsage()
		IL_00a1: ldloc.2
		IL_00a2: callvirt instance int32 MGSC.UsableItemRecord::get_UsageCost()
		IL_00a7: ldloc.2
		IL_00a8: callvirt instance bool MGSC.UsableItemRecord::get_IsUsable()
		IL_00ad: newobj instance void MGSC.UsableItemComponent::.ctor(int32, int32, bool)
		IL_00b2: stloc.s 11
		// itemComponents.Add(usableItemComponent);
		IL_00b4: ldloc.0
		IL_00b5: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_00ba: ldloc.s 11
		IL_00bc: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// if (randomizeConditionAndCapacity)
		IL_00c1: ldarg.s randomizeConditionAndCapacity
		IL_00c3: brfalse.s IL_00d8

		// usableItemComponent.RandomizeCapacity(usableItemRecord.UsageCost, usableItemRecord.MaxUsage);
		IL_00c5: ldloc.s 11
		IL_00c7: ldloc.2
		IL_00c8: callvirt instance int32 MGSC.UsableItemRecord::get_UsageCost()
		IL_00cd: ldloc.2
		IL_00ce: callvirt instance int32 MGSC.UsableItemRecord::get_MaxUsage()
		IL_00d3: callvirt instance void MGSC.UsableItemComponent::RandomizeCapacity(int32, int32)

		// if (itemRecord is AugmentationRecord record2)
		IL_00d8: ldarg.3
		IL_00d9: isinst MGSC.AugmentationRecord
		IL_00de: stloc.3
		// AugmentationComponent augmentationComponent = new AugmentationComponent(record2);
		IL_00df: ldloc.3
		IL_00e0: brfalse.s IL_0100

		IL_00e2: ldloc.3
		IL_00e3: newobj instance void MGSC.AugmentationComponent::.ctor(class MGSC.BasePickupItemRecord)
		IL_00e8: stloc.s 12
		// itemComponents.Add(augmentationComponent);
		IL_00ea: ldloc.0
		IL_00eb: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_00f0: ldloc.s 12
		IL_00f2: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// augmentationComponent.SetImplantSockets(randomizeConditionAndCapacity);
		IL_00f7: ldloc.s 12
		IL_00f9: ldarg.s randomizeConditionAndCapacity
		IL_00fb: callvirt instance void MGSC.AugmentationComponent::SetImplantSockets(bool)

		// if (itemRecord is ItemRecord { CanPutInVest: not false } && !HasCompOfType<AllowPutInVestItemComp>())
		IL_0100: ldarg.3
		IL_0101: isinst MGSC.ItemRecord
		IL_0106: stloc.s 4
		// (no C# code)
		IL_0108: ldloc.s 4
		IL_010a: brfalse.s IL_012e

		IL_010c: ldloc.s 4
		IL_010e: callvirt instance bool MGSC.ItemRecord::get_CanPutInVest()
		IL_0113: brfalse.s IL_012e

		IL_0115: ldloca.s 0
		IL_0117: call bool MGSC.ItemFactory::'<CreateComponent>g__HasCompOfType|35_0'<class MGSC.AllowPutInVestItemComp>(valuetype MGSC.ItemFactory/'<>c__DisplayClass35_0'&)
		IL_011c: brtrue.s IL_012e

		// itemComponents.Add(new AllowPutInVestItemComp());
		IL_011e: ldloc.0
		IL_011f: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_0124: newobj instance void MGSC.AllowPutInVestItemComp::.ctor()
		IL_0129: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (itemRecord is IExpirableRecord && !HasCompOfType<ExpireComponent>())
		IL_012e: ldarg.3
		IL_012f: isinst MGSC.IExpirableRecord
		IL_0134: brfalse.s IL_019d

		IL_0136: ldloca.s 0
		IL_0138: call bool MGSC.ItemFactory::'<CreateComponent>g__HasCompOfType|35_0'<class MGSC.ExpireComponent>(valuetype MGSC.ItemFactory/'<>c__DisplayClass35_0'&)
		IL_013d: brtrue.s IL_019d

		// ItemExpireRecord record3 = Data.ItemExpire.GetRecord(itemRecord.Id);
		IL_013f: call class MGSC.ConfigRecordCollection`1<class MGSC.ItemExpireRecord> MGSC.Data::get_ItemExpire()
		IL_0144: ldarg.3
		IL_0145: callvirt instance string MGSC.ConfigTableRecord::get_Id()
		IL_014a: ldc.i4.1
		IL_014b: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.ItemExpireRecord>::GetRecord(string, bool)
		IL_0150: stloc.s 13
		// DateTime time = _state.Get<SpaceTime>().Time;
		IL_0152: ldarg.0
		IL_0153: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_0158: callvirt instance !!0 MGSC.State::Get<class MGSC.SpaceTime>()
		IL_015d: ldfld valuetype [mscorlib]System.DateTime MGSC.SpaceTime::Time
		IL_0162: stloc.s 14
		// if (record3 != null)
		IL_0164: ldloc.s 13
		IL_0166: brfalse.s IL_018a

		// itemComponents.Add(new ExpireComponent(time.AddHours(record3.ExpiresAfterHours), isStarted: true));
		IL_0168: ldloc.0
		IL_0169: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_016e: ldloca.s 14
		IL_0170: ldloc.s 13
		IL_0172: callvirt instance float32 MGSC.ItemExpireRecord::get_ExpiresAfterHours()
		IL_0177: conv.r8
		IL_0178: call instance valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::AddHours(float64)
		IL_017d: ldc.i4.1
		IL_017e: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_0183: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// (no C# code)
		IL_0188: br.s IL_019d

		// itemComponents.Add(new ExpireComponent(time, isStarted: false));
		IL_018a: ldloc.0
		IL_018b: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_0190: ldloc.s 14
		IL_0192: ldc.i4.0
		IL_0193: newobj instance void MGSC.ExpireComponent::.ctor(valuetype [mscorlib]System.DateTime, bool)
		IL_0198: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (itemRecord is AmmoRecord ammoRecord)
		IL_019d: ldarg.3
		IL_019e: isinst MGSC.AmmoRecord
		IL_01a3: stloc.s 5
		// int num = UnityEngine.Random.Range(ammoRecord.MinAmmoAmount, ammoRecord.MaxAmmoAmount + 1);
		IL_01a5: ldloc.s 5
		IL_01a7: brfalse.s IL_01eb

		IL_01a9: ldloc.s 5
		IL_01ab: callvirt instance int32 MGSC.AmmoRecord::get_MinAmmoAmount()
		IL_01b0: ldloc.s 5
		IL_01b2: callvirt instance int32 MGSC.AmmoRecord::get_MaxAmmoAmount()
		IL_01b7: ldc.i4.1
		IL_01b8: add
		IL_01b9: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
		IL_01be: stloc.s 15
		// StackableItemComponent stackableItemComponent = new StackableItemComponent(GetMaxStackSize(ammoRecord));
		IL_01c0: ldarg.0
		IL_01c1: ldloc.s 5
		IL_01c3: call instance int16 MGSC.ItemFactory::GetMaxStackSize(class MGSC.IStackableRecord)
		IL_01c8: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_01cd: stloc.s 16
		// if (randomizeConditionAndCapacity)
		IL_01cf: ldarg.s randomizeConditionAndCapacity
		IL_01d1: brfalse.s IL_01dd

		// stackableItemComponent.Count = (short)num;
		IL_01d3: ldloc.s 16
		IL_01d5: ldloc.s 15
		IL_01d7: conv.i2
		IL_01d8: callvirt instance void MGSC.StackableItemComponent::set_Count(int16)

		// itemComponents.Add(stackableItemComponent);
		IL_01dd: ldloc.0
		IL_01de: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_01e3: ldloc.s 16
		IL_01e5: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// IStackableRecord stackableRecord = itemRecord as IStackableRecord;
		IL_01ea: ret

		IL_01eb: ldarg.3
		IL_01ec: isinst MGSC.IStackableRecord
		IL_01f1: stloc.s 6
		// if (stackableRecord != null && isPrimary)
		IL_01f3: ldloc.s 6
		IL_01f5: ldnull
		IL_01f6: cgt.un
		IL_01f8: ldarg.s isPrimary
		IL_01fa: and
		IL_01fb: brfalse.s IL_0251

		// short num2 = GetMaxStackSize(stackableRecord);
		IL_01fd: ldarg.0
		IL_01fe: ldloc.s 6
		IL_0200: call instance int16 MGSC.ItemFactory::GetMaxStackSize(class MGSC.IStackableRecord)
		IL_0205: stloc.s 17
		// if (itemRecord is ConsumableRecord || itemRecord is FixationMedicineRecord || itemRecord is RepairRecord || itemRecord is PlaceableDeviceRecord)
		IL_0207: ldarg.3
		IL_0208: isinst MGSC.ConsumableRecord
		IL_020d: brtrue.s IL_0227

		IL_020f: ldarg.3
		IL_0210: isinst MGSC.FixationMedicineRecord
		IL_0215: brtrue.s IL_0227

		// (no C# code)
		IL_0217: ldarg.3
		IL_0218: isinst MGSC.RepairRecord
		IL_021d: brtrue.s IL_0227

		// num2 += ConsumablesStackBonus;
		IL_021f: ldarg.3
		IL_0220: isinst MGSC.PlaceableDeviceRecord
		IL_0225: brfalse.s IL_0233

		IL_0227: ldloc.s 17
		IL_0229: ldarg.0
		IL_022a: call instance int16 MGSC.ItemFactory::get_ConsumablesStackBonus()
		IL_022f: add
		IL_0230: conv.i2
		IL_0231: stloc.s 17

		// StackableItemComponent stackableItemComponent2 = new StackableItemComponent(num2);
		IL_0233: ldloc.s 17
		IL_0235: newobj instance void MGSC.StackableItemComponent::.ctor(int16)
		IL_023a: stloc.s 18
		// stackableItemComponent2.Count = 1;
		IL_023c: ldloc.s 18
		IL_023e: ldc.i4.1
		IL_023f: callvirt instance void MGSC.StackableItemComponent::set_Count(int16)
		// itemComponents.Add(stackableItemComponent2);
		IL_0244: ldloc.0
		IL_0245: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_024a: ldloc.s 18
		IL_024c: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (itemRecord is WeaponRecord weaponRecord)
		IL_0251: ldarg.3
		IL_0252: isinst MGSC.WeaponRecord
		IL_0257: stloc.s 7
		// WeaponComponent weaponComponent = new WeaponComponent(weaponRecord);
		IL_0259: ldloc.s 7
		IL_025b: brfalse IL_0346

		IL_0260: ldloc.s 7
		IL_0262: newobj instance void MGSC.WeaponComponent::.ctor(class MGSC.BasePickupItemRecord)
		IL_0267: stloc.s 19
		// weaponComponent.CurrentAmmoType = Data.Items.GetSimpleRecord<AmmoRecord>(weaponRecord.DefaultAmmoId);
		IL_0269: ldloc.s 19
		IL_026b: call class MGSC.ItemsCollection MGSC.Data::get_Items()
		IL_0270: ldloc.s 7
		IL_0272: callvirt instance string MGSC.WeaponRecord::get_DefaultAmmoId()
		IL_0277: ldc.i4.1
		IL_0278: callvirt instance !!0 MGSC.ItemsCollection::GetSimpleRecord<class MGSC.AmmoRecord>(string, bool)
		IL_027d: callvirt instance void MGSC.WeaponComponent::set_CurrentAmmoType(class MGSC.AmmoRecord)
		// weaponComponent.CurrentFireMode = Data.Firemodes.GetRecord(weaponRecord.Firemodes[0]);
		IL_0282: ldloc.s 19
		IL_0284: call class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord> MGSC.Data::get_Firemodes()
		IL_0289: ldloc.s 7
		IL_028b: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.WeaponRecord::get_Firemodes()
		IL_0290: ldc.i4.0
		IL_0291: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_0296: ldc.i4.1
		IL_0297: callvirt instance !0 class MGSC.ConfigRecordCollection`1<class MGSC.FireModeRecord>::GetRecord(string, bool)
		IL_029c: callvirt instance void MGSC.WeaponComponent::set_CurrentFireMode(class MGSC.FireModeRecord)
		// foreach (string trait in weaponRecord.Traits)
		IL_02a1: ldloc.s 7
		IL_02a3: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.WeaponRecord::get_Traits()
		IL_02a8: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<string>::GetEnumerator()
		IL_02ad: stloc.s 20
		.try
		{
			// foreach (string trait in weaponRecord.Traits)
			IL_02af: br.s IL_02cd
			// loop start (head: IL_02cd)
				IL_02b1: ldloca.s 20
				IL_02b3: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
				// ItemTrait item2 = ItemTraitSystem.CreateItemTrait(trait);
				IL_02b8: call class MGSC.ItemTrait MGSC.ItemTraitSystem::CreateItemTrait(string)
				IL_02bd: stloc.s 21
				// weaponComponent.Traits.Add(item2);
				IL_02bf: ldloc.s 19
				IL_02c1: callvirt instance class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemTrait> MGSC.WeaponComponent::get_Traits()
				IL_02c6: ldloc.s 21
				IL_02c8: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.ItemTrait>::Add(!0)

				// foreach (string trait in weaponRecord.Traits)
				IL_02cd: ldloca.s 20
				IL_02cf: call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
				IL_02d4: brtrue.s IL_02b1
			// end loop

			// (no C# code)
			IL_02d6: leave.s IL_02e6
		} // end .try
		finally
		{
			IL_02d8: ldloca.s 20
			IL_02da: constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<string>
			IL_02e0: callvirt instance void [mscorlib]System.IDisposable::Dispose()
			// if (randomizeConditionAndCapacity)
			IL_02e5: endfinally
		} // end handler

		IL_02e6: ldarg.s randomizeConditionAndCapacity
		IL_02e8: brfalse.s IL_02f1

		// weaponComponent.RandomizeCapacity();
		IL_02ea: ldloc.s 19
		IL_02ec: callvirt instance void MGSC.WeaponComponent::RandomizeCapacity()

		// _componentsCache.Add(weaponComponent);
		IL_02f1: ldarg.0
		IL_02f2: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_02f7: ldloc.s 19
		IL_02f9: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// if (weaponRecord.WeaponClass == WeaponClass.GrenadeLauncher)
		IL_02fe: ldloc.s 7
		IL_0300: callvirt instance valuetype MGSC.WeaponClass MGSC.WeaponRecord::get_WeaponClass()
		IL_0305: ldc.i4.s 31
		IL_0307: bne.un.s IL_0346

		// LauncherComponent launcherComponent = new LauncherComponent();
		IL_0309: newobj instance void MGSC.LauncherComponent::.ctor()
		IL_030e: stloc.s 22
		// _componentsCache.Add(launcherComponent);
		IL_0310: ldarg.0
		IL_0311: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0316: ldloc.s 22
		IL_0318: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)
		// for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
		IL_031d: ldc.i4.0
		IL_031e: stloc.s 23
		// launcherComponent.LoadedGrenadesIds.Add(weaponRecord.DefaultGrenadeId);
		IL_0320: br.s IL_033b
		// loop start (head: IL_033b)
			IL_0322: ldloc.s 22
			IL_0324: ldfld class [mscorlib]System.Collections.Generic.List`1<string> MGSC.LauncherComponent::LoadedGrenadesIds
			IL_0329: ldloc.s 7
			IL_032b: callvirt instance string MGSC.WeaponRecord::get_DefaultGrenadeId()
			IL_0330: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
			// for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
			IL_0335: ldloc.s 23
			IL_0337: ldc.i4.1
			IL_0338: add
			IL_0339: stloc.s 23

			// for (int i = 0; i < weaponComponent.CurrentAmmo; i++)
			IL_033b: ldloc.s 23
			IL_033d: ldloc.s 19
			IL_033f: callvirt instance int16 MGSC.WeaponComponent::get_CurrentAmmo()
			IL_0344: blt.s IL_0322
		// end loop

		// if (itemRecord is DatadiskRecord datadiskRecord)
		IL_0346: ldarg.3
		IL_0347: isinst MGSC.DatadiskRecord
		IL_034c: stloc.s 8
		// DatadiskComponent datadiskComponent = new DatadiskComponent();
		IL_034e: ldloc.s 8
		IL_0350: brfalse.s IL_038b

		IL_0352: newobj instance void MGSC.DatadiskComponent::.ctor()
		IL_0357: stloc.s 24
		// datadiskComponent.SetUnlockId(datadiskRecord.UnlockIds[UnityEngine.Random.Range(0, datadiskRecord.UnlockIds.Count)]);
		IL_0359: ldloc.s 24
		IL_035b: ldloc.s 8
		IL_035d: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_0362: ldc.i4.0
		IL_0363: ldloc.s 8
		IL_0365: callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> MGSC.DatadiskRecord::get_UnlockIds()
		IL_036a: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<string>::get_Count()
		IL_036f: call int32 [UnityEngine.CoreModule]UnityEngine.Random::Range(int32, int32)
		IL_0374: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<string>::get_Item(int32)
		IL_0379: callvirt instance void MGSC.DatadiskComponent::SetUnlockId(string)
		// _componentsCache.Add(datadiskComponent);
		IL_037e: ldarg.0
		IL_037f: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_0384: ldloc.s 24
		IL_0386: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (itemRecord is SkullRecord)
		IL_038b: ldarg.3
		IL_038c: isinst MGSC.SkullRecord
		IL_0391: brfalse.s IL_03a7

		// SkullComponent item3 = new SkullComponent();
		IL_0393: newobj instance void MGSC.SkullComponent::.ctor()
		IL_0398: stloc.s 25
		// _componentsCache.Add(item3);
		IL_039a: ldarg.0
		IL_039b: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_03a0: ldloc.s 25
		IL_03a2: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// if (itemRecord is BackpackRecord backpackRecord)
		IL_03a7: ldarg.3
		IL_03a8: isinst MGSC.BackpackRecord
		IL_03ad: stloc.s 9
		// Difficulty difficulty = _state.Get<Difficulty>();
		IL_03af: ldloc.s 9
		IL_03b1: brfalse.s IL_0416

		IL_03b3: ldarg.0
		IL_03b4: ldfld class MGSC.State MGSC.ItemFactory::_state
		IL_03b9: callvirt instance !!0 MGSC.State::Get<class MGSC.Difficulty>()
		// int num3 = backpackRecord.Height;
		IL_03be: ldloc.s 9
		IL_03c0: callvirt instance int32 MGSC.BackpackRecord::get_Height()
		IL_03c5: stloc.s 26
		// switch (difficulty.Preset.BackpacksSize)
		IL_03c7: callvirt instance class MGSC.DifficultyPreset MGSC.Difficulty::get_Preset()
		IL_03cc: callvirt instance valuetype MGSC.BackpackSize MGSC.DifficultyPreset::get_BackpacksSize()
		IL_03d1: stloc.s 28
		// (no C# code)
		IL_03d3: ldloc.s 28
		IL_03d5: ldc.i4.1
		IL_03d6: sub
		IL_03d7: switch (IL_03ea, IL_03f2, IL_03fa)

		// num3 *= 2;
		IL_03e8: br.s IL_0400

		IL_03ea: ldloc.s 26
		IL_03ec: ldc.i4.2
		IL_03ed: mul
		IL_03ee: stloc.s 26
		// break;
		IL_03f0: br.s IL_0400

		// num3 *= 3;
		IL_03f2: ldloc.s 26
		IL_03f4: ldc.i4.3
		IL_03f5: mul
		IL_03f6: stloc.s 26
		// break;
		IL_03f8: br.s IL_0400

		// num3 *= 4;
		IL_03fa: ldloc.s 26
		IL_03fc: ldc.i4.4
		IL_03fd: mul
		IL_03fe: stloc.s 26

		// ExtendedHeightComp item4 = new ExtendedHeightComp(num3);
		IL_0400: ldloc.s 26
		IL_0402: newobj instance void MGSC.ExtendedHeightComp::.ctor(int32)
		IL_0407: stloc.s 27
		// _componentsCache.Add(item4);
		IL_0409: ldarg.0
		IL_040a: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		IL_040f: ldloc.s 27
		IL_0411: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::Add(!0)

		// }
		IL_0416: ret
	} // end of method ItemFactory::CreateComponent

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x56e80
		// Header size: 1
		// Code size: 40 (0x28)
		.maxstack 8

		// {
		IL_0000: ldarg.0
		IL_0001: newobj instance void class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::.ctor()
		IL_0006: stfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory::_componentsCache
		// (no C# code)
		IL_000b: ldarg.0
		IL_000c: ldc.r4 1
		IL_0011: stfld float32 MGSC.ItemFactory::'<WeaponDurabilityMult>k__BackingField'
		IL_0016: ldarg.0
		IL_0017: ldc.r4 1
		IL_001c: stfld float32 MGSC.ItemFactory::'<ArmorDurabilityMult>k__BackingField'
		IL_0021: ldarg.0
		// }
		IL_0022: call instance void class MGSC.SingletonMonoBehaviour`1<class MGSC.ItemFactory>::.ctor()
		IL_0027: ret
	} // end of method ItemFactory::.ctor

	.method private hidebysig 
		instance object '<Awake>b__33_0' (
			class [mscorlib]System.Type t,
			class [SimpleJSON]SimpleJSON.JSONNode n
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x56ea9
		// Header size: 1
		// Code size: 7 (0x7)
		.maxstack 8

		// return CreateItemOnFloor();
		IL_0000: ldarg.0
		IL_0001: call instance class MGSC.ItemOnFloor MGSC.ItemFactory::CreateItemOnFloor()
		IL_0006: ret
	} // end of method ItemFactory::'<Awake>b__33_0'

	.method assembly hidebysig static 
		bool '<CopyComponent>g__HasCompOfType|34_0'<(MGSC.PickupItemComponent) T> (
			valuetype MGSC.ItemFactory/'<>c__DisplayClass34_0'& ''
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x56eb4
		// Header size: 12
		// Code size: 81 (0x51)
		.maxstack 1
		.locals init (
			[0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[1] bool
		)

		// if (P_0.initialItem.Comp<T>() != null)
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass34_0'::initialItem
		IL_0006: callvirt instance !!0 MGSC.PickupItem::Comp<!!T>()
		IL_000b: box !!T
		IL_0010: brfalse.s IL_0014

		// return true;
		IL_0012: ldc.i4.1
		IL_0013: ret

		// foreach (PickupItemComponent item in P_0.itemComponents)
		IL_0014: ldarg.0
		IL_0015: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass34_0'::itemComponents
		IL_001a: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_001f: stloc.0
		.try
		{
			// foreach (PickupItemComponent item in P_0.itemComponents)
			IL_0020: br.s IL_0034
			// loop start (head: IL_0034)
				IL_0022: ldloca.s 0
				IL_0024: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
				// if (item is T)
				IL_0029: isinst !!T
				IL_002e: brfalse.s IL_0034

				// return true;
				IL_0030: ldc.i4.1
				IL_0031: stloc.1
				// foreach (PickupItemComponent item in P_0.itemComponents)
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
			// return false;
			IL_004c: endfinally
		} // end handler

		IL_004d: ldc.i4.0
		IL_004e: ret

		// (no C# code)
		IL_004f: ldloc.1
		IL_0050: ret
	} // end of method ItemFactory::'<CopyComponent>g__HasCompOfType|34_0'

	.method assembly hidebysig static 
		bool '<CreateComponent>g__HasCompOfType|35_0'<(MGSC.PickupItemComponent) T> (
			valuetype MGSC.ItemFactory/'<>c__DisplayClass35_0'& ''
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x56f24
		// Header size: 12
		// Code size: 81 (0x51)
		.maxstack 1
		.locals init (
			[0] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>,
			[1] bool
		)

		// if (P_0.item.Comp<T>() != null)
		IL_0000: ldarg.0
		IL_0001: ldfld class MGSC.PickupItem MGSC.ItemFactory/'<>c__DisplayClass35_0'::item
		IL_0006: callvirt instance !!0 MGSC.PickupItem::Comp<!!T>()
		IL_000b: box !!T
		IL_0010: brfalse.s IL_0014

		// return true;
		IL_0012: ldc.i4.1
		IL_0013: ret

		// foreach (PickupItemComponent item in P_0.itemComponents)
		IL_0014: ldarg.0
		IL_0015: ldfld class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent> MGSC.ItemFactory/'<>c__DisplayClass35_0'::itemComponents
		IL_001a: callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class MGSC.PickupItemComponent>::GetEnumerator()
		IL_001f: stloc.0
		.try
		{
			// foreach (PickupItemComponent item in P_0.itemComponents)
			IL_0020: br.s IL_0034
			// loop start (head: IL_0034)
				IL_0022: ldloca.s 0
				IL_0024: call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class MGSC.PickupItemComponent>::get_Current()
				// if (item is T)
				IL_0029: isinst !!T
				IL_002e: brfalse.s IL_0034

				// return true;
				IL_0030: ldc.i4.1
				IL_0031: stloc.1
				// foreach (PickupItemComponent item in P_0.itemComponents)
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
			// return false;
			IL_004c: endfinally
		} // end handler

		IL_004d: ldc.i4.0
		IL_004e: ret

		// (no C# code)
		IL_004f: ldloc.1
		IL_0050: ret
	} // end of method ItemFactory::'<CreateComponent>g__HasCompOfType|35_0'

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
	.property instance float32 ArmorDurabilityMult()
	{
		.get instance float32 MGSC.ItemFactory::get_ArmorDurabilityMult()
		.set instance void MGSC.ItemFactory::set_ArmorDurabilityMult(float32)
	}

} // end of class MGSC.ItemFactory
