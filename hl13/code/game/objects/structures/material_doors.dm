/obj/structure/mineral_door/material_door
	icon_state = null
	openSound = null
	closeSound = null

/obj/structure/mineral_door/material_door/Open()
	isSwitchingStates = TRUE
	playsound(src, openSound, 100, TRUE)
	set_opacity(FALSE)
	set_density(FALSE)
	door_opened = TRUE
	layer = OPEN_DOOR_LAYER
	air_update_turf(TRUE, FALSE)
	update_appearance()
	isSwitchingStates = FALSE

	if(close_delay != -1)
		addtimer(CALLBACK(src, .proc/Close), close_delay)

/obj/structure/mineral_door/material_door/Close()
	if(isSwitchingStates || !door_opened)
		return
	var/turf/T = get_turf(src)
	for(var/mob/living/L in T)
		return
	isSwitchingStates = TRUE
	playsound(src, closeSound, 100, TRUE)
	set_density(TRUE)
	set_opacity(TRUE)
	door_opened = FALSE
	layer = initial(layer)
	air_update_turf(TRUE, TRUE)
	update_appearance()
	isSwitchingStates = FALSE

/obj/structure/mineral_door/material_door/metal_door
	icon = 'hl13/icons/obj/doors/metal_door.dmi'
	openSound = null
	closeSound = null

/obj/structure/mineral_door/material_door/metal_door/north
	icon_state = "metaldoor"

/obj/structure/mineral_door/material_door/metal_door/east
	icon_state = "metaldoore"

/obj/structure/mineral_door/material_door/metal_door/west
	icon_state = "metaldoorw"
/obj/structure/mineral_door/material_door/wooden_door
	icon = 'hl13/icons/obj/doors/wooden_door.dmi'
	openSound = null
	closeSound = null

/obj/structure/mineral_door/material_door/wooden_door/north
	icon_state = "woodendoor"

/obj/structure/mineral_door/material_door/wooden_door/south
	icon_state = "woodendoors"

/obj/structure/mineral_door/material_door/wooden_door/east
	icon_state = "woodendoore"

/obj/structure/mineral_door/material_door/wooden_door/west
	icon_state = "woodendoorw"

