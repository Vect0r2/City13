/obj/item/reagent_containers/cup/soda_cans/hl13
	icon = 'hl13/icons/obj/food/food.dmi'
	var/icon_open = null
	fizziness = FALSE

/obj/item/reagent_containers/cup/soda_cans/hl13/open_soda(mob/user)
	to_chat(user, "You pull back the tab of [src] with a pop.")
	reagents.flags |= OPENCONTAINER
	playsound(src, SFX_CAN_OPEN, 50, TRUE)
	spillable = TRUE
	throwforce = 0
	icon_state = icon_open //sets icon to a opened varinent

/obj/item/reagent_containers/cup/soda_cans/hl13/breen_blue
	name = "dr>breen's private reserve"
	icon_open = "breen_can_open"
	icon_state = "breen_can"
	list_reagents = list(/datum/reagent/consumable/hl13/breenblue = 50)

