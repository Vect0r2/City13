/obj/structure/stairs/city_stairs
	icon = 'hl13/icons/obj/stairs.dmi'

/obj/structure/stairs/city_stairs/wooden_stairs
	name = "wooden stairs"
	base_icon_state = "wooden_stairs"
	icon_state = "wooden_stairs"

/obj/structure/stairs/city_stairs/wooden_stairs/north
	dir = NORTH

/obj/structure/stairs/city_stairs/wooden_stairs/south
	dir = SOUTH

/obj/structure/stairs/city_stairs/wooden_stairs/east
	dir = EAST

/obj/structure/stairs/city_stairs/wooden_stairs/west
	dir = WEST

/obj/structure/stairs/city_stairs/concrete_stairs
	name = "concrete stairs"
	base_icon_state = "concrete_stairs"
	icon_state = "concrete_stairs"

/obj/structure/stairs/city_stairs/concrete_stairs/north
	dir = NORTH

/obj/structure/stairs/city_stairs/concrete_stairs/south
	dir = SOUTH

/obj/structure/stairs/city_stairs/concrete_stairs/east
	dir = EAST

/obj/structure/stairs/city_stairs/concrete_stairs/west
	dir = WEST

/obj/structure/stairs/city_stairs/combine_stairs
	name = "combine stairs"
	base_icon_state = "combine_stairs"
	icon_state = "combine_stairs"

/obj/structure/stairs/city_stairs/combine_stairs/north
	dir = NORTH

/obj/structure/stairs/city_stairs/combine_stairs/south
	dir = SOUTH

/obj/structure/stairs/city_stairs/combine_stairs/east
	dir = EAST

/obj/structure/stairs/city_stairs/combine_stairs/west
	dir = WEST


/obj/structure/stairs/city_stairs/update_icon_state()
	icon_state = "[base_icon_state][isTerminator() ? "_t" : null]"
	return ..()
