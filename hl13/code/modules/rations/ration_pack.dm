/obj/item/storage/hl13/ration_pack
	name = "ration"
	icon = 'hl13/icons/obj/food/food.dmi'
	desc = "you forgot to download CS:sorce. Make sure to tell a dev that your seeing this"
	icon_state = "debug_ration"
	var/open = FALSE
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue=1,
			)
		generate_items_inside(items_inside,src)

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
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue=1,
			/obj/item/reagent_containers/cup/hl13/sustenance_dust=1,
			)
		generate_items_inside(items_inside,src)

/obj/item/storage/hl13/ration_pack/standard_ration
	name = "standard ration"
	desc = null
	icon_state = "standard_ration"
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue=1,
			/obj/item/hl13/nutrient_bar_wrapping/water=1,
			/obj/item/storage/hl13/hand_box/egg=1,
			)
		generate_items_inside(items_inside,src)

/obj/item/storage/hl13/ration_pack/priority_ration
	name = "Priority Ration"
	desc = null
	icon_state = "priority_ration"
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/cup/soda_cans/hl13/breen_red=1,
			/obj/item/hl13/nutrient_bar_wrapping/pork=1,
			/obj/item/storage/hl13/hand_box/chicken=1,
			)
		generate_items_inside(items_inside,src)

/obj/item/storage/hl13/ration_pack/service_ration
	name = "Service Ration"
	desc = null
	icon_state = "service_ration"
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/cup/soda_cans/hl13/breen_yellow=1,
			/obj/item/hl13/nutrient_bar_wrapping/beef=1,
			/obj/item/storage/hl13/hand_box/cookie=1,
			/obj/item/reagent_containers/cup/soda_cans/hl13/coffee=1,
			/obj/item/storage/hl13/pill_bottle=1,
			)
		generate_items_inside(items_inside,src)
