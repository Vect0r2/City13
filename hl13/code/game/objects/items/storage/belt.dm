/obj/item/storage/belt/hl13
	icon = 'icons/obj/clothing/belts.dmi'
	lefthand_file = 'icons/mob/inhands/equipment/belt_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/belt_righthand.dmi'

/obj/item/storage/belt/hl13/cp_belt
	name = "civil protection belt"
	desc = "Can hold civil protection gear like handcuffs and flashes."
	icon_state = "cp_belt"
	inhand_icon_state = "cp_belt"
	worn_icon_state = "cp_belt"
	content_overlays = TRUE

/obj/item/storage/belt/hl13/cp_belt/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 5
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL
	atom_storage.set_holdable(list()) //todo:Set items that can be holded and add relative sprites


/obj/item/storage/belt/security/full/PopulateContents()
	update_appearance()


//TODO: BELT DOESNT WORK!
