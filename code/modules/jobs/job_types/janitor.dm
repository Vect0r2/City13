/datum/job/janitor
	title = JOB_JANITOR
	config_tag = "JANITOR"


/datum/outfit/job/janitor
	name = "Janitor"
	jobtype = /datum/job/janitor

	id_trim = /datum/id_trim/job/janitor
	uniform = /obj/item/clothing/under/rank/civilian/janitor
	belt = /obj/item/modular_computer/pda/janitor
	ears = /obj/item/radio/headset/headset_srv

/datum/outfit/job/janitor/pre_equip(mob/living/carbon/human/human_equipper, visuals_only)
	. = ..()
	if(check_holidays(GARBAGEDAY))
		backpack_contents += list(/obj/item/gun/ballistic/revolver)
		r_pocket = /obj/item/ammo_box/a357

	var/static/access_key_given = FALSE
	if(!access_key_given && !visuals_only)
		access_key_given = TRUE
		backpack_contents += list(/obj/item/access_key)

/datum/outfit/job/janitor/get_types_to_preload()
	. = ..()
	if(check_holidays(GARBAGEDAY))
		. += /obj/item/gun/ballistic/revolver
		. += /obj/item/ammo_box/a357
