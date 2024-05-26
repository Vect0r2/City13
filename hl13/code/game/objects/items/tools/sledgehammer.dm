/obj/item/hl13/sledgehammer
	name = "Sledge Hammer"
	desc = "A large hammer, It can break open most things walls or skulls"
	icon = 'hl13/icons/obj/weapons/melee/sledgehammer.dmi'
	icon_state = "Sledgehammer"
	worn_icon = 'hl13/icons/mob/clothing/back/sledgehammer.dmi'
	lefthand_file = 'hl13/icons/mob/inhands/equipment/tools_lefthand.dmi'
	righthand_file = 'hl13/icons/mob/inhands/equipment/tools_righthand.dmi'

	usesound = 'sound/items/hammering_wood.ogg'
	slot_flags = list(ITEM_SLOT_SUITSTORE, ITEM_SLOT_BACK)
	force = 15
	throwforce = 12
	throw_speed = 2
	throw_range = 7
	demolition_mod = 1.25
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/obj/item/stack/sheet/hl13/concrete=50,/obj/item/stack/sheet/iron/hl13/metal=70)

	attack_verb_continuous = list("attacks", "bashes", "batters", "bludgeons", "whacks","slægans")
	attack_verb_simple = list("attack", "bash", "batter", "bludgeon", "whack","slægan")
	tool_behaviour = TOOL_SLEDGEHAMMER
	toolspeed = 1
	armor_type = /datum/armor/item_crowbar
	hl13_flag = TRUE
