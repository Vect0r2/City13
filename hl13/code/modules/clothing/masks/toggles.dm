#define COMSIG_HANDLE_NIGHT_VISION "handle_night_vision"

/obj/item/clothing/mask/gas/hl13/combine
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT|HIDEHAIR
	///False because their vision shouldnt be undermined by the mask
	has_fov = FALSE
	///Setting the hud_type we want the mask to generate
	var/hud_type = /obj/item/clothing/glasses/hud/hl13/combine/cp/night
	///check if eye slot is empty or not when putting on the mask
	var/eyes_slot_empty = TRUE

/obj/item/clothing/mask/gas/hl13/combine/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_HANDLE_NIGHT_VISION, PROC_REF(handle_nv))

/obj/item/clothing/mask/gas/hl13/combine/equipped(mob/living/carbon/human/M, slot)
	. = ..()
	if(slot != ITEM_SLOT_MASK) //TODO: AVOID PUTTING ON THE MASK IF THE EYE SLOT IS OCCUPIED
		return
	create_hud(M, slot)

/obj/item/clothing/mask/gas/hl13/combine/dropped(mob/M)
	. = ..()
	remove_hud(M)

/obj/item/clothing/mask/gas/hl13/combine/proc/create_hud(mob/living/carbon/human/M, slot)
	if(ishuman(M))
		var/obj/item/clothing/glasses/hud/hl13/hud = new hud_type(loc)
		ADD_TRAIT(hud, TRAIT_NODROP, TRAIT_GENERIC)
		M.equip_to_slot_if_possible(hud, ITEM_SLOT_EYES, 0, 0, 1)


/obj/item/clothing/mask/gas/hl13/combine/proc/remove_hud(mob/living/carbon/human/M)
	handle_nv(M.wear_mask, FALSE)
	if(istype(M.glasses, /obj/item/clothing/glasses/hud/hl13/combine/))
		QDEL_NULL(M.glasses)

/obj/item/clothing/mask/gas/hl13/combine/proc/handle_nv(mask, night_vision)
	SIGNAL_HANDLER
	var/nv = night_vision
	if(nv) {
		icon_state = "[icon_state]_nv"
		worn_icon_state = "[worn_icon_state]_nv"
		inhand_icon_state = "[inhand_icon_state]_nv"
	} else {
		icon_state = initial(icon_state)
		worn_icon_state = initial(icon_state)
		inhand_icon_state = initial(icon_state)
	}
	update_slot_icon()


/obj/item/clothing/glasses/hud/hl13/combine/
	actions_types = list(/datum/action/item_action/toggle_night_vision)

	var/night_vision = FALSE
	//set the glass color for the night vision (to be tested)
	var/glass_colour

/obj/item/clothing/glasses/hud/hl13/combine/Destroy()
	. = ..()
	night_vision = FALSE

/obj/item/clothing/glasses/hud/hl13/combine/ui_action_click(mob/living/carbon/human/user, datum/action/item_action/actiontype)
	if(istype(actiontype, /datum/action/item_action/toggle_night_vision))
		night_vision = !night_vision
		if (night_vision) {
			glass_colour_type = glass_colour
		}
		SEND_SIGNAL(user.wear_mask, COMSIG_HANDLE_NIGHT_VISION, night_vision)

