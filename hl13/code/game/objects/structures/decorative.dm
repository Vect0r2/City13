/obj/structure/fluff/pedestrian_pole
	name = "pedestrian pole"
	desc = "A black and white pedestrian pole."
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "pedestrian_pole"
	layer = ABOVE_OPEN_TURF_LAYER
	plane = FLOOR_PLANE
	deconstructible = FALSE
	density = 0
	anchored = 1


/obj/structure/fluff/phone_booth
	name = "phone booth"
	desc = "A relic from another time."
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "public_phone"
	layer = ABOVE_OPEN_TURF_LAYER
	plane = FLOOR_PLANE
	deconstructible = FALSE
	density = 1
	anchored = 1

/obj/structure/sign/wall_clock
	name = "\improper Wall Clock"
	desc = "An analog clock. What does the time tell?"
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "clock"
	is_editable = FALSE
	buildable_sign = FALSE


/obj/structure/sign/wall_clock/examine(mob/user)
	. = ..()
	. += span_info("Worn hands tell you it is: [SSday_night.get_twentyfourhour_timestamp()]")
