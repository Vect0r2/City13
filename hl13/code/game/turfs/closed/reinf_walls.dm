/turf/closed/wall/r_wall/hl13/combine_wall
	name = "combine wall"
	desc = "A strange, blue-tinted otherworldy metal wall. Cold to the touch."
	icon = 'hl13/icons/turf/walls/combine_wall.dmi'
	base_icon_state = "combine"
	icon_state = "combine-0"
	sheet_type = /obj/item/stack/sheet/iron/hl13/combine
	girder_type = /obj/structure/girder/reinforced

/turf/closed/wall/r_wall/hl13/combine_wall/devastate_wall()
	new sheet_type(src, sheet_amount)
	new /obj/item/stack/sheet/iron/hl13/metal(src, 2)


