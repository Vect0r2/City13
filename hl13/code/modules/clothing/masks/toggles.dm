/obj/item/clothing/mask/gas/hl13/combine
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT|HIDEHAIR
	var/obj/item/clothing/glasses/hud/hl13/combine/hud
	var/hudtype = /obj/item/clothing/glasses/hud/hl13/combine/cp/night
	var/eyes_slot_empty = TRUE

/obj/item/clothing/mask/gas/hl13/combine/Initialize(mapload)
	.=..()
	MakeHud()

/obj/item/clothing/mask/gas/hl13/combine/equipped(mob/M, slot)
	. = ..()
	if(ishuman(loc))
		if(slot != ITEM_SLOT_MASK)
			return
		else
			EquipHUD()

/obj/item/clothing/mask/gas/hl13/combine/Destroy()
	. = ..()
	QDEL_NULL(hud)

/obj/item/clothing/mask/gas/hl13/combine/proc/MakeHud()
	if(!hud)
		var/obj/item/clothing/glasses/hud/hl13/combine/H = new hudtype(src)
		H.mask = src
		hud = H
		ADD_TRAIT(H, TRAIT_NODROP, TRAIT_GENERIC)

/obj/item/clothing/mask/gas/hl13/combine/proc/EquipHUD()
	if(!mask_adjusted)
		if(!ishuman(loc))
			return
		var/mob/living/carbon/human/H = loc
		if(!H.equip_to_slot_if_possible(hud, ITEM_SLOT_EYES,0,0,1))
			eyes_slot_empty = FALSE
			adjustmask()
			return
		else
			eyes_slot_empty = initial(eyes_slot_empty)
		H.update_worn_mask()
	else
		RemoveHUD()

/obj/item/clothing/mask/gas/hl13/combine/proc/RemoveHUD()
	if(hud)
		if(ishuman(hud.loc))
			var/mob/living/carbon/human/H = hud.loc
			H.transferItemToLoc(hud, src, TRUE)
			H.update_worn_mask()
		else
			hud.forceMove(src)

/obj/item/clothing/mask/gas/hl13/combine/adjustmask(mob/living/user)
	if(user?.incapacitated())
		return
	mask_adjusted = !mask_adjusted
	if(!eyes_slot_empty) //If there's something on your eyes you're not enabled to lift down your mask
		icon_state += "_up"
		to_chat(user, span_notice("You're already wearing something on your head! Remove it!"))
		clothing_flags &= ~visor_flags
		flags_inv &= ~visor_flags_inv
		flags_cover &= ~visor_flags_cover
		if(adjusted_flags)
			slot_flags = adjusted_flags
		RemoveHUD()
	if(!mask_adjusted && eyes_slot_empty)
		src.icon_state = initial(icon_state)
		clothing_flags |= visor_flags
		flags_inv |= visor_flags_inv
		flags_cover |= visor_flags_cover
		to_chat(user, span_notice("You push \the [src] back into place."))
		slot_flags = initial(slot_flags)
		EquipHUD()
	if(mask_adjusted && eyes_slot_empty)
		icon_state += "_up"
		to_chat(user, span_notice("You push \the [src] out of the way."))
		clothing_flags &= ~visor_flags
		flags_inv &= ~visor_flags_inv
		flags_cover &= ~visor_flags_cover
		if(adjusted_flags)
			slot_flags = adjusted_flags
		RemoveHUD()
	if(user)
		user.wear_mask_update(src, toggle_off = mask_adjusted)
		user.update_action_buttons_icon() //when mask is adjusted out, we update all buttons icon so the user's potential internal tank correctly shows as off.

/obj/item/clothing/mask/gas/hl13/combine/dropped()
	..()
	RemoveHUD()

/obj/item/clothing/glasses/hud/hl13/combine
	actions_types = list(/datum/action/item_action/toggle_night_vision)
	var/obj/item/clothing/mask/gas/hl13/combine/mask
	var/nightvision = FALSE
	//set the glass color for the night vision (to be tested)
	var/glass_colour
	lighting_alpha = null

/obj/item/clothing/glasses/hud/hl13/combine/Destroy()
	mask = null
	return ..()

/obj/item/clothing/glasses/hud/hl13/combine/dropped()
	..()
	if(mask)
		mask.RemoveHUD()

/obj/item/clothing/glasses/hud/hl13/combine/equipped(mob/user, slot)
	..()
	if(slot != ITEM_SLOT_EYES)
		if(mask)
			mask.RemoveHUD()
		else
			qdel(src)

/obj/item/clothing/glasses/hud/hl13/combine/ui_action_click()
	ToggleNightVision()

/obj/item/clothing/glasses/hud/hl13/combine/proc/ToggleNightVision()
	if(ishuman(loc))
		var/mob/living/carbon/human/H = loc
		if(H.incapacitated())
			return
		nightvision = !nightvision
		if(!nightvision)
			mask.worn_icon_state = initial(mask.worn_icon_state)
			mask.icon_state = initial(mask.worn_icon_state)
			lighting_alpha = initial(lighting_alpha)
			glass_colour_type = initial(glass_colour_type)
		if(nightvision)
			mask.worn_icon_state += "_nv"
			mask.icon_state += "_nv"
			lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_VISIBLE
			glass_colour_type = glass_colour
			//to do: add changes to the night vision colors
		H.wear_mask_update()
		update_action_buttons()


/obj/item/clothing/glasses/hud/hl13/combine/toggle
	var/toggle_noun = "buttons"

/obj/item/clothing/glasses/hud/hl13/combine/toggle/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/toggle_icon, toggle_noun)
