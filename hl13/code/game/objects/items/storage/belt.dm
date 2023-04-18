/obj/item/storage/belt/hl13
	hl13_flag = TRUE
	icon = 'hl13/icons/obj/clothing/belts.dmi'
	lefthand_file = 'hl13/icons/mob/inhands/equipment/belt_lefthand.dmi'
	righthand_file = 'hl13/icons/mob/inhands/equipment/belt_righthand.dmi'
	worn_icon = 'hl13/icons/mob/clothing/belt.dmi'

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
	atom_storage.set_holdable(list()) //todo:Set a whitelist of items that can be holded and add relative sprites


/obj/item/storage/belt/security/full/PopulateContents()
	update_appearance()
