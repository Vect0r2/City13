GLOBAL_LIST_INIT(hl13_metal_recipes, list(
	new/datum/stack_recipe("wall girders (anchored)", /obj/structure/girder/hl13, 2, time = 4 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, trait_booster = TRAIT_QUICK_BUILD, trait_modifier = 0.75, category = CAT_STRUCTURE), \
	null,
))

/obj/item/stack/sheet/plastic/hl13
	icon = 'hl13/icons/obj/stack_objects.dmi'
	icon_state = "sheet-plastic_3"
	desc = "Compress dinosaur over millions of years, then refine, split and mold, and voila! You have plastic."

/obj/item/stack/sheet/iron/hl13/metal
	icon = 'hl13/icons/obj/stack_objects.dmi'
	name = "metal"
	icon_state = "sheet-metal_3"
	desc = "Sheets made out of metal."

/obj/item/stack/sheet/iron/hl13/metal/get_main_recipes()
	. = ..()
	. += GLOB.hl13_metal_recipes


/obj/item/stack/sheet/iron/hl13/combine
	icon = 'hl13/icons/obj/stack_objects.dmi'
	name = "combine metal"
	icon_state = "sheet-combine_metal_3"
	desc = "Sheets made out of combine metal."

//No Recipes
/obj/item/stack/sheet/hl13/concrete
	icon = 'hl13/icons/obj/stack_objects.dmi'
	name = "concrete bricks"
	icon_state = "stack_concrete_3"
	desc = "Bricks made out of concrete."
