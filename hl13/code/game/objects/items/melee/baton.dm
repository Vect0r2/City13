/obj/item/melee/baton/security/hl13
	icon = 'hl13/icons/obj/weapons/melee/baton.dmi'
	lefthand_file =  'hl13/icons/obj/weapons/melee/baton_lefthand.dmi'
	righthand_file =  'hl13/icons/obj/weapons/melee/baton_righthand.dmi'
	icon_state = "stun_baton"
	inhand_icon_state = "baton"
	worn_icon_state = "baton"

/obj/item/melee/baton/security/hl13/proc/update_inhand_icon_state()
	if(active)
		inhand_icon_state = "[initial(inhand_icon_state)]_active"
		return
	inhand_icon_state = "[initial(inhand_icon_state)]"


/obj/item/melee/baton/security/hl13/attack_self(mob/user)
	if(cell?.charge >= cell_hit_cost)
		active = !active
		balloon_alert(user, "turned [active ? "on" : "off"]")
		playsound(src, SFX_SPARKS, 75, TRUE, -1)
	else
		active = FALSE
		if(!cell)
			balloon_alert(user, "no power source!")
		else
			balloon_alert(user, "out of charge!")
	update_appearance()
	update_inhand_icon_state()
	add_fingerprint(user)
