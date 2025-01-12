/obj/item/clothing/shoes/hl13
	hl13_flag = TRUE
	icon = 'hl13/icons/obj/clothing/shoes.dmi'
	worn_icon = 'hl13/icons/mob/clothing/feet.dmi'
	lefthand_file = 'hl13/icons/mob/inhands/clothing/shoes_lefthand.dmi'
	righthand_file = 'hl13/icons/mob/inhands/clothing/shoes_righthand.dmi'

/obj/item/clothing/shoes/hl13/cp_boots
	name = "civil protection boots"
	desc = "High speed, low drag combat boots."
	icon_state = "combat_boots"
	inhand_icon_state = "combat_boots"
	armor_type = /datum/armor/shoes_combat
	strip_delay = 40
	resistance_flags = NONE
	lace_time = 12 SECONDS

/obj/item/clothing/shoes/hl13/cp_boots/Initialize(mapload)
	. = ..()

	create_storage(storage_type = /datum/storage/pockets/shoes)

/obj/item/clothing/shoes/hl13/brown_shoes
	name = "brown shoes"
	desc = "Standard pair of shoes issued to all standard citizens. They dont look too comfortable."
	icon_state = "brown_shoes"
	inhand_icon_state = "brown_shoes"
