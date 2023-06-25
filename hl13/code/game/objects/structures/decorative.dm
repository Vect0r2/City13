#define TREE_PIXEL_OFFSET -33

/obj/structure/fluff/pedestrian_pole
	name = "pedestrian pole"
	desc = "A black and white pedestrian pole."
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "pedestrian_pole"
	layer = ABOVE_OPEN_TURF_LAYER
	plane = GAME_PLANE_UPPER
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

/obj/structure/station_clock
	name = "train station clock"
	desc = "An analog clock. What does the time tell?"
	icon = 'hl13/icons/obj/station_clock.dmi'
	icon_state = "station_clock"
	density = TRUE
	anchored = TRUE
	layer = ABOVE_MOB_LAYER
	plane = GAME_PLANE_UPPER

/obj/structure/station_clock/examine(mob/user)
	. = ..()
	. += span_info("Worn hands tell you it is: [SSday_night.get_twentyfourhour_timestamp()]")

/obj/structure/tree
	name = "city tree"
	desc = "Autumn makes me melancholic.."
	icon = 'hl13/icons/obj/flora96x96.dmi'
	icon_state = "tree"
	base_pixel_x = TREE_PIXEL_OFFSET
	pixel_x = TREE_PIXEL_OFFSET
	density = TRUE
	anchored = TRUE
	layer = ABOVE_MOB_LAYER
	plane = GAME_PLANE_UPPER

/obj/structure/tree/thin
	icon = 'hl13/icons/obj/flora96x96.dmi'
	icon_state = "tree2"

/obj/structure/tree/concrete_large
	icon = 'hl13/icons/obj/flora96x96.dmi'
	icon_state = "tree_concrete"

/obj/structure/tree/concrete_thin
	icon = 'hl13/icons/obj/flora96x96.dmi'
	icon_state = "tree_concrete_2"

/obj/structure/shrub
	name = "shrub"
	desc = "Be careful! You could sting yourself!"
	icon = 'hl13/icons/obj/flora.dmi'
	icon_state = "shrub"
	density = FALSE
	anchored = TRUE
	layer = TURF_LAYER
	plane = GAME_PLANE

/obj/structure/leaves
	name = "leaves"
	desc = "Autumn makes me melancholic."
	icon = 'hl13/icons/obj/flora.dmi'
	icon_state = "leaves"
	density = FALSE
	anchored = TRUE
	layer = TURF_LAYER
	plane = GAME_PLANE

/obj/structure/trash
	name = "trash"
	desc = "The various rubbish of City 13."
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "trash"
	density = FALSE
	anchored = TRUE
	layer = TURF_LAYER
	plane = GAME_PLANE

/obj/structure/crosswalk
	name = "Crosswalk"
	desc = "a marked part of a road where pedestrians have right of way to cross."
	icon = 'hl13/icons/turf/floors/crosswalk.dmi'
	icon_state = "crosswalk1"
	density = FALSE
	anchored = TRUE
	layer = TURF_LAYER
	plane = GAME_PLANE
/obj/structure/crosswalk/sideways
	icon_state = "crosswalk2"
