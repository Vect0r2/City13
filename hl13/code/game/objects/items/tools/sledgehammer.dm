/obj/item/hl13/sledgehammer
	name = "Sledge Hammer"
	desc = "" //TODO, add a desc
	icon = 'hl13/icons/obj/weapons/melee/sledgehammer.dmi'
	icon_state = "Sledgehammer"

	usesound = 'sound/items/hammering_wood.ogg'
	slot_flags = ITEM_SLOT_SUITSTORE
	force = 13
	throwforce = 7
	demolition_mod = 1.25
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron=50)

	attack_verb_continuous = list("attacks", "bashes", "batters", "bludgeons", "whacks","slægans")
	attack_verb_simple = list("attack", "bash", "batter", "bludgeon", "whack","slægan")
	tool_behaviour = TOOL_SLEDGEHAMMER
	toolspeed = 1
	armor_type = /datum/armor/item_crowbar
	hl13_flag = TRUE
