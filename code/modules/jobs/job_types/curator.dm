/datum/job/curator
	title = JOB_CURATOR
	config_tag = "CURATOR"


/datum/outfit/job/curator
	name = "Curator"
	jobtype = /datum/job/curator

	id_trim = /datum/id_trim/job/curator
	uniform = /obj/item/clothing/under/rank/civilian/curator
	backpack_contents = list(
		/obj/item/barcodescanner = 1,
		/obj/item/choice_beacon/hero = 1,
	)
	belt = /obj/item/modular_computer/pda/curator
	ears = /obj/item/radio/headset/headset_srv
	shoes = /obj/item/clothing/shoes/laceup
	l_pocket = /obj/item/laser_pointer/green
	r_pocket = /obj/item/key/displaycase
	l_hand = /obj/item/storage/bag/books

	accessory = /obj/item/clothing/accessory/pocketprotector/full

/datum/outfit/job/curator/post_equip(mob/living/carbon/human/translator, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	translator.grant_all_languages(source=LANGUAGE_CURATOR)
	translator.remove_blocked_language(GLOB.all_languages, source=LANGUAGE_ALL)
