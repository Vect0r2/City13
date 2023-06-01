/obj/item/storage/hl13/hand_box
	name = "Small cardboard box"
	icon = 'hl13/icons/obj/food/food.dmi'
	icon_state = "cardboardbox"
	w_class = WEIGHT_CLASS_SMALL
	var/closed_icon_state = "cardboardbox"
	var/open_icon_state = "cardboardbox_open"
	var/box_content = null

/obj/item/storage/hl13/hand_box/PopulateContents()
	new box_content(src)

/obj/item/storage/hl13/hand_box/Initialize(mapload)
	. = ..()
	icon_state = closed_icon_state
	atom_storage.max_slots = 1

/obj/item/storage/hl13/hand_box/Exited(atom/movable/gone, direction)
	. = ..()
	icon_state = open_icon_state

/obj/item/storage/hl13/hand_box/Entered(atom/movable/arrived, atom/old_loc, list/atom/old_locs)
	. = ..()
	icon_state = closed_icon_state
//Paste Boxs
/obj/item/storage/hl13/hand_box/egg
	name = "Egg paste ration box"
	desc = "A box used for a egg paste cube. Commonly found in standard rations"
	open_icon_state = "food_package_open"
	closed_icon_state = "food_package"
	box_content = /obj/item/food/hl13/egg_paste

/obj/item/storage/hl13/hand_box/chicken
	name = "Chicken paste ration box"
	desc = "A box used for a chicken paste cube. Commonly found in priority ration"
	open_icon_state = "food_package_2_open"
	closed_icon_state = "food_package_2"
	box_content = /obj/item/food/hl13/chicken_paste

/obj/item/storage/hl13/hand_box/cookie
	name = "Cookie paste ration box"
	desc = "A box used for a cookie. Commonly found in service ration"
	open_icon_state = "food_package_3_open"
	closed_icon_state = "food_package_3"
	box_content = /obj/item/food/hl13/cookie

//food paste items
/obj/item/food/hl13/egg_paste
	name = "egg paste"
	desc = "Cube of egg paste, Despite the name it does not really seem like a paste"
	icon_state = "egg paste"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/eggyolk = 2,
		/datum/reagent/toxin/hl13/lithisyn = 1,
	)
	tastes = list("Soggy eggs" = 1)

/obj/item/food/hl13/chicken_paste
	name = "chicken paste"
	desc = "Cube of chicken paste, Despite the name it does not really seem like a paste"
	icon_state = "chicken_paste"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/toxin/hl13/lithisyn = 0.1,
	)
	tastes = list("Chicken" = 1)

/obj/item/food/hl13/cookie
	name = "cookie"
	icon_state = "cookie"
	bite_consumption = 1
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("cookie" = 1)
	foodtypes = GRAIN | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/storage/hl13/pill_bottle
	name = "AntiSleep Pill bottle"
	icon = 'hl13/icons/obj/food/food.dmi'
	icon_state = "pill_bottle"
	w_class = WEIGHT_CLASS_SMALL
	PopulateContents()
		var/static/items_inside = list(
			/obj/item/reagent_containers/pill/antisleep=10,
			)
		generate_items_inside(items_inside,src)

