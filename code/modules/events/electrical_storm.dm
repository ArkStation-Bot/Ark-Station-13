/datum/round_event_control/electrical_storm
	name = "Electrical Storm"
	typepath = /datum/round_event/electrical_storm
	earliest_start = 10 MINUTES
	min_players = 5
	weight = 20
	category = EVENT_CATEGORY_ENGINEERING
	description = "Уничтожает все источники света на большой площади.."
	min_wizard_trigger_potency = 0
	max_wizard_trigger_potency = 4

/datum/round_event/electrical_storm
	var/lightsoutAmount = 1
	var/lightsoutRange = 25
	announce_when = 1

/datum/round_event/electrical_storm/announce(fake)
	priority_announce("В вашем районе обнаружена гроза, устраните возможную перегрузку электроники.", "Electrical Storm Alert", ANNOUNCER_ELECTRICALSTORM) //NOVA EDIT CHANGE


/datum/round_event/electrical_storm/start()
	var/list/epicentreList = list()

	for(var/i in 1 to lightsoutAmount)
		var/turf/T = find_safe_turf()
		if(istype(T))
			epicentreList += T

	if(!epicentreList.len)
		return

	for(var/centre in epicentreList)
		for(var/obj/machinery/power/apc/apc as anything in SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/power/apc))
			if(get_dist(centre, apc) <= lightsoutRange)
				apc.overload_lighting()
