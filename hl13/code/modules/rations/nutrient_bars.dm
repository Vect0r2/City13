//Food bars

/obj/item/food/hl13/nutrient_bar
	name = "Debug bar"
	desc = "you forgot to download CS:sorce. Make sure to tell a dev that your seeing this."
	icon = 'hl13/icons/obj/food/food.dmi'
	icon_state = "Debug_bar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/toxin/hl13/lithisyn = 1,
	)
	tastes = list("unfinished" = 2, "pink" = 2, "black" = 1)

/obj/item/food/hl13/nutrient_bar/water
	name = "Water flavored nutrient bar"
	desc = "a combine nutrient bar found in standard rations. this one is water flavored"
	icon_state = "water_bar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/hl13/breenblue = 2,
	)
	tastes = list("Water" = 2, "Cardboard" = 2)
/obj/item/food/hl13/nutrient_bar/pork
	name = "Pork flavored nutrient bar"
	desc = "a combine nutrient bar found in priority rations. this one is pork flavored"
	icon_state = "pork_bar"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 6,
		/datum/reagent/consumable/hl13/breenred = 2,
	)
//trash
/obj/item/trash/hl13/nutrient_bar_waste
	name = "Debug Trash"
	icon = 'hl13/icons/obj/food/food.dmi'
	icon_state = "Debug_bar"
	desc = "you forgot to download CS:sorce. Make sure to tell a dev that your seeing this."

/obj/item/trash/hl13/nutrient_bar_waste/water
	name = "Water flavored nutrient bar wrapper"
	icon_state = "bar_package_crumpled"
	desc = "The discarded wrapping of a Water flavored nutrient bar."

/obj/item/trash/hl13/nutrient_bar_waste/pork
	name = "Pork flavored nutrient bar wrapper"
	icon_state = "bar_package_2_crumpled"
	desc = "The discarded wrapping of a Pork flavored nutrient bar."
//Package Wrapping

/obj/item/hl13/nutrient_bar_wrapping
	name = "nutrient bar base"
	gender = NEUTER
	desc = "you forgot to download CS:sorce. Make sure to tell a dev that your seeing this."
	icon = 'hl13/icons/obj/food/food.dmi'
	icon_state = "debug_ration"
	w_class = WEIGHT_CLASS_SMALL
	var/bar_type = /obj/item/food/hl13/nutrient_bar //used to put the bar objects in hand genarated when unwrapped
	var/bar_waste = /obj/item/trash/hl13/nutrient_bar_waste //used to put the trash objects in hand genarated when unwrapped

/obj/item/hl13/nutrient_bar_wrapping/attack_self(mob/user)
	to_chat(user, span_notice("You start to unwrap the nutrient bar wraping..."))
	if(!do_after(user, 1.5 SECONDS, target = user))
		return
	user.temporarilyRemoveItemFromInventory(src, TRUE)
	usr.put_in_hands(new bar_type)
	new bar_waste(usr.loc)
	playsound(loc, 'sound/items/poster_ripped.ogg', 50, TRUE)
	qdel(src)

/obj/item/hl13/nutrient_bar_wrapping/water
	name = "Water flavored nutrient bar"
	desc = "A Water flavored nutrient bar with it's wrapping on."
	icon_state = "bar_package"
	bar_type = /obj/item/food/hl13/nutrient_bar/water
	bar_waste = /obj/item/trash/hl13/nutrient_bar_waste/water

/obj/item/hl13/nutrient_bar_wrapping/pork
	name = "Pork flavored nutrient bar"
	desc = "A Pork flavored nutrient bar with it's wrapping on."
	icon_state = "bar_package_2"
	bar_type = /obj/item/food/hl13/nutrient_bar/pork
	bar_waste = /obj/item/trash/hl13/nutrient_bar_waste/pork
