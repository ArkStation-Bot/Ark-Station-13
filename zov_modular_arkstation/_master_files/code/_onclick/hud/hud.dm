// ARK STATION EDIT - Extra inventory

GLOBAL_LIST_INIT(extra_inventory_ui_styles, list(
	'icons/hud/screen_midnight.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_midnight.dmi',
	'icons/hud/screen_retro.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_retro.dmi',
	'icons/hud/screen_plasmafire.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_plasmafire.dmi',
	'icons/hud/screen_slimecore.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_slimecore.dmi',
	'icons/hud/screen_operative.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_operative.dmi',
	'icons/hud/screen_clockwork.dmi' = 'zov_modular_arkstation/_master_files/icons/hud/screen_clockwork.dmi',
))


/proc/extra_inventory_ui_style(ui_style)
	return GLOB.extra_inventory_ui_styles[ui_style] || GLOB.extra_inventory_ui_styles[GLOB.extra_inventory_ui_styles[1]]

/datum/hud
	// Extra inventory
	var/extra_shown = FALSE
	var/list/extra_inventory = list()

/datum/hud/proc/extra_inventory_update()
	return
