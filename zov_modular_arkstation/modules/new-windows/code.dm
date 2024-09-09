// New Icons (Shiptest Style)

/obj/structure/window/fulltile
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/window.dmi'

/obj/structure/window/reinforced/fulltile
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/reinforced_window.dmi'

/obj/structure/window/plasma/reinforced/plastitanium
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/plastitanium_window.dmi'

/obj/structure/window/reinforced/tinted/fulltile
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/reinforced_window.dmi'
	color = "#000000"
	icon_state = "reinforced_window-0"
	base_icon_state = "reinforced_window"

/obj/structure/window/plasma/fulltile
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/plasma_window.dmi'
	icon_state = "plasma_window-0"
	base_icon_state = "plasma_window"

/obj/structure/window/reinforced/plasma/fulltile
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/rplasma_window.dmi'
	icon_state = "rplasma_window-0"
	base_icon_state = "rplasma_window"

/turf/closed/indestructible/opsglass
	name = "window"
	icon = 'zov_modular_arkstation/modules/new-windows/shiptest/plastitanium_window.dmi'

// New-Old Icons (Ark Style)
/obj/structure/window/fulltile/old
	icon = 'zov_modular_arkstation/modules/new-windows/window.dmi'

/obj/structure/window/reinforced/fulltile/old
	icon = 'zov_modular_arkstation/modules/new-windows/r_window.dmi'

/obj/structure/window/reinforced/tinted/fulltile/old
	icon = 'zov_modular_arkstation/modules/new-windows/r_window_tined.dmi'
	icon_state = "reinforced_window-0"
	base_icon_state = "reinforced_window"

/obj/structure/window/plasma/fulltile/old
	icon = 'zov_modular_arkstation/modules/new-windows/window_plasma.dmi'
	icon_state = "window-0"
	base_icon_state = "window"

/obj/structure/window/reinforced/plasma/fulltile/old
	icon = 'zov_modular_arkstation/modules/new-windows/r_window_plasma.dmi'
	icon_state = "reinforced_window-0"
	base_icon_state = "reinforced_window"

// Spawners
/obj/effect/spawner/structure/window/old
	spawn_list = list(/obj/structure/grille, /obj/structure/window/fulltile/old)

/obj/effect/spawner/structure/window/reinforced/old
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/fulltile/old)

/obj/effect/spawner/structure/window/reinforced/tinted/old
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/tinted/fulltile/old)

/obj/effect/spawner/structure/window/plasma/old
	spawn_list = list(/obj/structure/grille, /obj/structure/window/plasma/fulltile/old)

/obj/effect/spawner/structure/window/reinforced/plasma/old
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/fulltile/old)
