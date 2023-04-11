/obj/item/poster/hl13/random_combine
	name = "random combine poster"
	poster_type = /obj/structure/sign/poster/hl13/combine/random
	icon_state = "rolled_legit"

/obj/item/poster/hl13/random_resistance
	name = "random resistance poster"
	desc = "not used yet"
	icon_state = "rolled_contraband"

/obj/structure/sign/poster/hl13
	icon = 'hl13/icons/obj/posters.dmi'
	icon_state = "poster_unset"

/obj/structure/sign/poster/hl13/combine/random
	name = "random poster"
	icon_state = "random_anything"
	never_random = TRUE
	random_basetype = /obj/structure/sign/poster/hl13/combine

/obj/structure/sign/poster/hl13/combine/directional //due to the mapping directional helper creating directions where not needed
	never_random = TRUE

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/hl13/combine/random, 32)


/obj/structure/sign/poster/hl13/combine/black_propaganda_dove
	name = "Combine Propaganda"
	desc = "A white dove flying above the logo of the Combine."
	icon_state = "poster_1"
	poster_item_placing_animation = "poster_1_set"
	poster_ruined_icon_state = "poster_1_ripped"

/obj/structure/sign/poster/hl13/combine/yellow_propaganda_cmb
	name = "Combine Propaganda"
	desc = "The logo of the Combine, with 'CMB' written in black in the lower right corner."
	icon_state = "poster_2"
	poster_item_placing_animation = "poster_2_set"
	poster_ruined_icon_state = "poster_2_ripped"

/obj/structure/sign/poster/hl13/combine/propaganda_collection_cmb
	name = "Combine Propaganda"
	desc = "A collection of Combine propaganda posters."
	icon_state = "poster_3"
	poster_item_placing_animation = "poster_3_set"
	poster_ruined_icon_state = "poster_3_ripped"

/obj/structure/sign/poster/hl13/combine/propaganda_collection_dove
	name = "Combine Propaganda"
	desc = "A collection of Combine propaganda posters."
	icon_state = "poster_4"
	poster_item_placing_animation = "poster_4_set"
	poster_ruined_icon_state = "poster_4_ripped"

/obj/structure/sign/poster/hl13/combine/yellow_propaganda_admin
	name = "Combine Propaganda"
	desc = "A portrait of our city administrator. They look proud."
	icon_state = "poster_5"
	poster_item_placing_animation = "poster_5_set"
	poster_ruined_icon_state = "poster_5_ripped"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/poster/hl13/combine, 32)
