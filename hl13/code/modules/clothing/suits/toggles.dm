/obj/item/clothing/suit/armor/hl13/combine
	var/obj/item/clothing/head/helmet/hl13/combine/helmet/helmet
	var/helmettype = /obj/item/clothing/head/helmet/hl13/combine/helmet/civil_protection
	var/helmet_up = TRUE

/obj/item/clothing/suit/armor/hl13/combine/Initialize(mapload)
	. = ..()
	if(helmet_up)
		MakeHelmet()

/obj/item/clothing/suit/armor/hl13/combine/equipped(mob/living/user, slot)
	. = ..()
	if(ishuman(loc))
		if(slot != ITEM_SLOT_OCLOTHING)
			return
		else
			ToggleHelmet()

/obj/item/clothing/suit/armor/hl13/combine/Destroy()
	. = ..()
	QDEL_NULL(helmet)

/obj/item/clothing/suit/armor/hl13/combine/proc/MakeHelmet()
	if(!helmet)
		var/obj/item/clothing/head/helmet/hl13/combine/helmet/H = new helmettype(src)
		H.suit = src
		helmet = H
		ADD_TRAIT(H, TRAIT_NODROP, TRAIT_GENERIC)

/obj/item/clothing/suit/armor/hl13/combine/proc/ToggleHelmet()
	if(!ishuman(loc))
		return
	var/mob/living/carbon/human/H = loc
	if(H.wear_suit != src)
		to_chat(H, span_warning("You must be wearing [src] to put up the hood!"))
		return
	if(H.head)
		to_chat(H, span_warning("You're already wearing something on your head! Remove it!"))
		return
	else
		if(!H.equip_to_slot_if_possible(helmet, ITEM_SLOT_HEAD,0,0,1))
			return
		H.update_worn_oversuit()

/obj/item/clothing/suit/armor/hl13/combine/proc/RemoveHelmet()
	if(helmet)
		if(ishuman(helmet.loc))
			var/mob/living/carbon/human/H = helmet.loc
			H.transferItemToLoc(helmet, src, TRUE)
			H.update_worn_oversuit()
		else
			helmet.forceMove(src)

/obj/item/clothing/suit/armor/hl13/combine/dropped()
	..()
	RemoveHelmet()

/obj/item/clothing/head/helmet/hl13/combine/helmet
	var/obj/item/clothing/suit/armor/hl13/combine/suit

/obj/item/clothing/head/helmet/hl13/combine/helmet/Destroy()
	suit = null
	return ..()

/obj/item/clothing/head/helmet/hl13/combine/helmet/dropped()
	..()
	if(suit)
		suit.RemoveHelmet()

/obj/item/clothing/head/helmet/hl13/combine/helmet/equipped(mob/user, slot)
	..()
	if(slot != ITEM_SLOT_HEAD)
		if(suit)
			suit.RemoveHelmet()
		else
			qdel(src)
