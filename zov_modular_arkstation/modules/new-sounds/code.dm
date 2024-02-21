/obj/item/gun
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/gun_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/gun_drop.ogg'

/obj/item/flashlight
	sound_on = 'zov_modular_arkstation/modules/new-sounds/sound/flashlight_on.ogg'
	sound_off = 'zov_modular_arkstation/modules/new-sounds/sound/flashlight_off.ogg'

/obj/item/gun/ballistic/shotgun
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/shotgun_pickup.ogg'

/obj/item/gun/ballistic/shotgun/boltaction
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/rifle_pickup.ogg'

/obj/item/coin
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/coin_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/coin_drop.ogg'

/obj/item/knife
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/knife_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/knife_drop.ogg'

/obj/item/stack/rods
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/scalpel
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/retractor
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/hemostat
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/cautery
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/circular_saw
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/surgicaldrill
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/surgery1_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/metal_drop.ogg'

/obj/item/surgical_drapes
	pickup_sound =  'zov_modular_arkstation/modules/new-sounds/sound/surgery2_pickup.ogg'

/obj/item/reagent_containers/cup
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/bottle_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/bottle_drop.ogg'

/obj/item/reagent_containers/cup/bottle
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/bottle_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/bottle_drop.ogg'

/obj/item/reagent_containers/cup/beaker
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/beaker_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/beaker_drop.ogg'

/obj/item/reagent_containers/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	playsound(src.loc, 'zov_modular_arkstation/modules/new-sounds/sound/watersplash.ogg', 40, 1)

/obj/item/shard/on_entered(datum/source, atom/movable/AM)
	if(isliving(AM))
		var/mob/living/L = AM
		if(!(L.movement_type & MOVETYPES_NOT_TOUCHING_GROUND) || L.buckled)
			playsound(src, 'zov_modular_arkstation/modules/new-sounds/sound/glass_step.ogg', HAS_TRAIT(L, TRAIT_LIGHT_STEP) ? 30 : 50, TRUE)

/obj/item
	equip_sound = list(
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_equip1.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_equip2.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_equip3.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_equip4.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_equip5.ogg',
	)
	///Sound used when picking the item up (into your hands)
	pickup_sound = list(
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_pickup1.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_pickup2.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_pickup3.ogg',
	)
	///Sound used when dropping the item.
	drop_sound = list(
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_drop1.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_drop2.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_drop3.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_drop4.ogg',
		'zov_modular_arkstation/modules/new-sounds/sound/generic/generic_drop5.ogg',
	)

/obj/item/clothing/shoes/jackboots
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/boots_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/boots_drop.ogg'

/obj/item/clothing/shoes/combat
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/boots_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/boots_drop.ogg'

/obj/item/clothing/shoes
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/shoes_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/shoes_drop.ogg'

/obj/item/storage/backpack
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/backpack_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/backpack_drop.ogg'
	equip_sound = 'zov_modular_arkstation/modules/new-sounds/sound/backpack_equip.ogg'

/obj/item/clothing/accessory
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/accessory_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/accessory_drop.ogg'

/obj/item/card
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/card_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/card_drop.ogg'

/obj/item/clothing/head/helmet
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/helmet_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/helmet_drop.ogg'

/obj/item/clothing/gloves/ring
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/ring_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/ring_drop.ogg'

/obj/item/storage/pill_bottle
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/pillbottle_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/pillbottle_drop.ogg'

/obj/item/phone
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/phone_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/phone_drop.ogg'

/obj/item/paper
	pickup_sound = 'zov_modular_arkstation/modules/new-sounds/sound/dosh_pickup.ogg'
	drop_sound = 'zov_modular_arkstation/modules/new-sounds/sound/dosh_drop.ogg'
