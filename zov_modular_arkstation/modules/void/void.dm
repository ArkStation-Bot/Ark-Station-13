/// Landmarks ///
// Teleport to Void
/obj/effect/landmark/voidspawn
	name = "voidteleport"
	icon_state = "x"

/obj/effect/landmark/voidspawn/Initialize(mapload)
	..()
	GLOB.void += loc
	return INITIALIZE_HINT_QDEL

// Walls spawn in Void
/obj/effect/landmark/voidspawn_wall
	name = "void_wall_spawn"
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "void-wall-spawner"

/obj/effect/landmark/voidspawn_wall/Initialize(mapload)
	..()
	new /turf/closed/indestructible/void(get_turf(src))
	return INITIALIZE_HINT_QDEL

// Void Floor
/turf/open/indestructible/void
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "void"
	name = "V̸̥͎̜̗̎̀̅̂̆̉̔O̷͖͚̩͚͒̎͌́̾I̷̭͙̗̝̫͈̞͙͙̖͇̊́͋̽͗̀̿͛̑̽̏̃D̸̮̣̬̝̙̠̜̟̘̯͚͇̩͖͙͌͗̈́̆̆̀̚"
	desc = "W҉̨̥̬̗̇̈́̀͞H҉̜̳̠̿͊͜͡A̵͈̯͎͒̕͜T̸̡͚̙͊̀͞ T҉̗͚̄̾͛̕͜H̸̪̤̤̐͜͞E҈̡͖̰̱͋̏͠ F̵̗҇̾͜U҉͇҇̋͌̑͢Ḉ̸̖͕̳͞K̷̨̛̜̤̙̀ I҉̢̠͗͠S҉̧̣̂͡ I҈̞̭͙̇͜͡T̸̨̤͑͡!̵̧̛͉̅̂ I҉̢̣͛͡ W҈̡͇̳̠҇͊A̷̘̬̤̓͜͠Ǹ̸̛̙͉̽̋͢ͅT̷̢͇͙͗̔̐͞ Ţ̸̛̦͙̠͐̾O҈̢̘̦͛̕ͅ S҈̰́̃͋͢͠C̷̢̠͑̕R̷̛͔̒̚͢Ȅ̶̡̞̬͡Å̵̡͔̠͔͠M̶̢̭͔̑͠!̴̡͍̖̀́̔͠"

/turf/open/indestructible/void/Initialize(mapload)
	. = ..()
	GLOB.void_door_or_monster_spawn += src

// Void Wall
/turf/closed/indestructible/void
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "void-wall"
	name = "V̸̥͎̜̗̎̀̅̂̆̉̔O̷͖͚̩͚͒̎͌́̾I̷̭͙̗̝̫͈̞͙͙̖͇̊́͋̽͗̀̿͛̑̽̏̃D̸̮̣̬̝̙̠̜̟̘̯͚͇̩͖͙͌͗̈́̆̆̀̚"
	desc = "W҉̨̥̬̗̇̈́̀͞H҉̜̳̠̿͊͜͡A̵͈̯͎͒̕͜T̸̡͚̙͊̀͞ T҉̗͚̄̾͛̕͜H̸̪̤̤̐͜͞E҈̡͖̰̱͋̏͠ F̵̗҇̾͜U҉͇҇̋͌̑͢Ḉ̸̖͕̳͞K̷̨̛̜̤̙̀ I҉̢̠͗͠S҉̧̣̂͡ I҈̞̭͙̇͜͡T̸̨̤͑͡!̵̧̛͉̅̂ I҉̢̣͛͡ W҈̡͇̳̠҇͊A̷̘̬̤̓͜͠Ǹ̸̛̙͉̽̋͢ͅT̷̢͇͙͗̔̐͞ Ţ̸̛̦͙̠͐̾O҈̢̘̦͛̕ͅ S҈̰́̃͋͢͠C̷̢̠͑̕R̷̛͔̒̚͢Ȅ̶̡̞̬͡Å̵̡͔̠͔͠M̶̢̭͔̑͠!̴̡͍̖̀́̔͠"

// Effects and trigger
/obj/effect/particle_effect/sparks/void_fissure
	name = "void"
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "fissure"
	light_color = LIGHT_COLOR_LAVENDER
	layer = ABOVE_ALL_MOB_LAYER

/obj/effect/particle_effect/sparks/void_fissure/LateInitialize()
	flick(icon_state, src)
	playsound(src, 'zov_modular_arkstation/modules/void/sound.ogg', 30, TRUE, SHORT_RANGE_SOUND_EXTRARANGE, use_reverb = TRUE)
	QDEL_IN(src, 30)

/obj/effect/step_trigger/void
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "step_trigger"
	mobs_only = TRUE

/obj/effect/step_trigger/void/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
		COMSIG_ATOM_EXITED = PROC_REF(on_exited),
	)
	AddElement(/datum/element/connect_loc, loc_connections)

/obj/effect/step_trigger/void/proc/on_exited(datum/source, H as mob|obj)
	if(ismob(H))
		var/mob/AM = H
		if(prob(40))
			activate_void(AM)

/obj/effect/step_trigger/void/proc/activate_void(mob/living/carbon/triggerer)
	var/obj/effect/particle_effect/sparks/void_fissure/void_hueta = new /obj/effect/particle_effect/sparks/void_fissure(src.loc)
	animate(void_hueta, pixel_z = 0, pixel_x = 0, time = 8, easing = LINEAR_EASING)
	if(!istype(triggerer, /mob/living/basic/void_monster) && prob(6))
		var/sound/sound = sound('zov_modular_arkstation/modules/void/trip_blast.wav')
		sound.environment = 23
		sound.volume = 100
		SEND_SOUND(triggerer.client, sound)
		triggerer.emote("agony")
		triggerer.overlay_fullscreen("screamers", /atom/movable/screen/fullscreen/screamers, rand(1, 23))
		triggerer.clear_fullscreen("screamers", rand(15, 60))

// Area
/area/misc/void
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	// static_lighting = FALSE
	// base_lighting_alpha = 255
	name = "void"
	icon_state = "test_room"
	ambient_buzz = 'zov_modular_arkstation/modules/void/void.ogg'

// Void Light
/obj/effect/light_emitter/void
	light_color = LIGHT_COLOR_LAVENDER
	set_cap = 1

// Safe Door for Escape
/obj/structure/void_safe_door
	name = "ESCAPE TO REALITY"
	desc = "∎∎∎∎∎"
	icon = 'zov_modular_arkstation/modules/goon-icons-port/goon-void.dmi'
	icon_state = "door"
	light_color = LIGHT_COLOR_FIRE

/obj/structure/void_safe_door/Initialize(mapload)
	. = ..()
	set_light(4, 1)

/obj/structure/void_safe_door/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	return attack_hand(user)

/obj/structure/void_safe_door/interact(mob/user)
	. = ..()
	if(ismob(user))
		if(user.client?.ckey)
			to_chat(user, span_narsiesmall("Lucky one. For first time. WAKE UP NOW."))
			user.forceMove(pick(GLOB.station_turfs))
			if(istype(user, /mob/living/carbon))
				var/mob/living/carbon/M = user
				M.AdjustParalyzed(60)
				M.adjustBruteLoss(30)
				var/sound/sound = sound('zov_modular_arkstation/modules/void/trip_blast.wav')
				sound.environment = 23
				sound.volume = 200
				SEND_SOUND(M.client, sound)
				INVOKE_ASYNC(M, TYPE_PROC_REF(/mob, emote), "agony")
				M.overlay_fullscreen("flash_void", /atom/movable/screen/fullscreen/flash/black)
				sleep(5 SECONDS)
				M.clear_fullscreen("flash_void", rand(15, 60))



// Warning // Screamers and Monster //

// Screamers
/atom/movable/screen/fullscreen/screamers
	icon = 'zov_modular_arkstation/modules/void/screamers.dmi'
	plane = SPLASHSCREEN_PLANE
	screen_loc = "CENTER-7,SOUTH"
	icon_state = ""

// Monster
/mob/living/basic/void_monster
	name = "The fuck?"
	desc = "Their eyes follow you."
	icon = 'zov_modular_arkstation/modules/void/babaika.dmi'
	icon_state = "babaika"
	health = 200000
	maxHealth = 200000
	ai_controller = /datum/ai_controller/basic_controller/void_monster
	var/pizdec

	hud_possible = list(ANTAG_HUD)

	lighting_cutoff_red = 15
	lighting_cutoff_green = 10
	lighting_cutoff_blue = 25

	sight = SEE_SELF|SEE_MOBS|SEE_OBJS|SEE_TURFS

	gender = NEUTER
	combat_mode = TRUE
	mob_biotypes = MOB_HUMANOID
	gold_core_spawnable = NO_SPAWN

	response_help_continuous = "touches"
	response_help_simple = "touch"
	response_disarm_continuous = "pushes"
	response_disarm_simple = "push"

	speed = 0.5
	maxHealth = 50000
	health = 50000
	obj_damage = 100
	melee_damage_lower = 30
	melee_damage_upper = 30
	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	attack_sound = 'sound/hallucinations/look_up2.ogg'
	attack_vis_effect = ATTACK_EFFECT_CLAW
	melee_attack_cooldown = 2 SECONDS

	faction = list(FACTION_STATUE)
	speak_emote = list("TURN AROUND!")
	death_message = "Uuugh... It's unreal..."
	unsuitable_atmos_damage = 0
	unsuitable_cold_damage = 0
	unsuitable_heat_damage = 0

/mob/living/basic/void_monster/examine(mob/user)
	. = ..()
	if(user.client.ckey)
		pizdec = user.client.ckey
	else
		pizdec = user.name
	name = pizdec
	desc = "It's me? [pizdec]???"
	death_message = "I will find you in the REALITY, [pizdec]!"

/mob/living/basic/void_monster/Initialize(mapload)
	. = ..()

	AddComponent(/datum/component/squeak, list('sound/hallucinations/radio_static.ogg' = 1), 100, extrarange = SHORT_RANGE_SOUND_EXTRARANGE)

/datum/ai_controller/basic_controller/void_monster
	blackboard = list(
		BB_TARGETING_STRATEGY = /datum/targeting_strategy/basic,
		BB_AGGRO_RANGE = 14,
	)

	ai_movement = /datum/ai_movement/jps //threat
	idle_behavior = /datum/idle_behavior/walk_near_target/void
	planning_subtrees = list(
		/datum/ai_planning_subtree/simple_find_target,
		/datum/ai_planning_subtree/run_emote,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
	)

/datum/idle_behavior/walk_near_target/void
	walk_chance = 50
	minimum_distance = 20
