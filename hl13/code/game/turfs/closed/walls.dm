/turf/closed/wall/hl13
	girder_type = /obj/structure/girder/hl13

/turf/closed/wall/hl13/devastate_wall()
	new sheet_type(src, sheet_amount)
	if(girder_type)
		new /obj/item/stack/sheet/iron/hl13/metal(src)

/turf/closed/wall/hl13/concrete_wall
	name = "concrete wall"
	desc = "A boring old yellow concrete wall. Remnants of a dead civilization, but protection against the weather."
	icon = 'hl13/icons/turf/walls/concrete_wall.dmi'
	base_icon_state = "concrete1"
	icon_state = "concrete1-0"

/turf/closed/wall/hl13/urban_concrete_wall
	name = "urban concrete wall"
	desc = "A huge chunk of concrete. Wow!"
	icon = 'hl13/icons/turf/walls/concrete2_wall.dmi'
	base_icon_state = "concrete2"
	icon_state = "concrete2-0"

/turf/closed/wall/hl13/cp_concrete_wall
	name = "security concrete wall"
	desc = "A concrete wall painted blue to signify a Civil Protection controlled area."
	icon = 'hl13/icons/turf/walls/cp_wall.dmi'
	base_icon_state = "cp"
	icon_state = "cp-0"

/turf/closed/wall/hl13/lobby_concrete_wall
	name = "lobby concrete wall"
	desc = "A concrete wall painted orange."
	icon = 'hl13/icons/turf/walls/lobby_wall.dmi'
	base_icon_state = "lobby"
	icon_state = "lobby-0"

/turf/closed/wall/hl13/store_concrete_wall
	name = "store concrete wall"
	desc = "The concrete exterior of a CWU store."
	icon = 'hl13/icons/turf/walls/store_wall.dmi'
	base_icon_state = "concrete1"
	icon_state = "concrete1-0"

/turf/closed/wall/hl13/brick_wall
	name = "brick wall"
	desc = "A huge lay of bricks."
	icon = 'hl13/icons/turf/walls/brick_wall.dmi'
	base_icon_state = "brick1"
	icon_state = "brick1-0"

/turf/closed/wall/hl13/combine_wall
	name = "combine wall"
	desc = "A strange, blue-tinted otherworldy metal wall. Cold to the touch."
	icon = 'hl13/icons/turf/walls/combine_wall.dmi'
	base_icon_state = "combine"
	icon_state = "combine-0"


/turf/closed/wall/hl13/home_wall
	name = "interior wall"
	desc = "A nicely paneled plaster wall used for interior rooms."
	icon = 'hl13/icons/turf/walls/home1_wall.dmi'
	base_icon_state = "home1"
	icon_state = "home1-0"

/turf/closed/wall/hl13/train_wall_front
	name = "train wall"
	desc = "They're always departing but they never arrive."
	icon = 'hl13/icons/turf/walls/train_wall.dmi'
	base_icon_state = "train"
	icon_state = "train-157"
	smoothing_groups = SMOOTH_GROUP_CLOSED_TURFS + SMOOTH_GROUP_TRAIN_WALLS
	canSmoothWith = SMOOTH_GROUP_TRAIN_WALLS



