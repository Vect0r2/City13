
//hl13 start kind of a structure
/obj/item/storage/trash_can
	name = "trash can"
	desc = "A green city trash can. 'Pick up that can!' "
	icon = 'hl13/icons/obj/citydecorations.dmi'
	icon_state = "trash_can"
	density = 1
	anchored = TRUE

/obj/item/storage/trash_can/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_SMALL
	atom_storage.max_total_storage = 14
