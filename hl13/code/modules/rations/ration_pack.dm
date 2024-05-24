/obj/item/storage/hl13/ration_pack
	name = "ration"
	icon = 'hl13/icons/obj/food/food.dmi'
	desc = "you forgot to download CS:sorce. Make sure to tell a dev that your seeing this"
	icon_state = "debug_ration"
	var/open = FALSE
/obj/item/storage/hl13/ration_pack/PopulateContents()
	new /obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue(src)

/obj/item/storage/hl13/ration_pack/Exited(atom/movable/gone, direction)
	. = ..()
	if(open == FALSE)
		icon_state = "[icon_state]_open"
		open = TRUE
	else
		return

/obj/item/storage/hl13/ration_pack/biotic
	name = "Biotic ration"
	desc = null
	icon_state = "biotic_ration"

/obj/item/storage/hl13/ration_pack/biotic/PopulateContents()
	new /obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue(src)
	new /obj/item/reagent_containers/cup/hl13/sustenance_dust(src)

/obj/item/storage/hl13/ration_pack/standard_ration
	name = "standard ration"
	desc = null
	icon_state = "standard_ration"

/obj/item/storage/hl13/ration_pack/standard_ration/PopulateContents()
	new /obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue(src)
	new /obj/item/hl13/nutrient_bar_wrapping/water(src)
	new /obj/item/storage/hl13/hand_box/egg(src)

/obj/item/storage/hl13/ration_pack/priority_ration
	name = "Priority Ration"
	desc = null
	icon_state = "priority_ration"

/obj/item/storage/hl13/ration_pack/priority_ration/PopulateContents()
	new /obj/item/reagent_containers/cup/soda_cans/hl13/breen_red(src)
	new /obj/item/hl13/nutrient_bar_wrapping/pork(src)
	new /obj/item/storage/hl13/hand_box/chicken(src)
/obj/item/storage/hl13/ration_pack/service_ration
	name = "Service Ration"
	desc = null
	icon_state = "service_ration"

/obj/item/storage/hl13/ration_pack/service_ration/PopulateContents()
	new /obj/item/reagent_containers/cup/soda_cans/hl13/breen_yellow(src)
	new /obj/item/hl13/nutrient_bar_wrapping/beef(src)
	new /obj/item/storage/hl13/hand_box/cookie(src)
	new /obj/item/reagent_containers/cup/soda_cans/hl13/coffee(src)
	new /obj/item/storage/hl13/pill_bottle(src)
