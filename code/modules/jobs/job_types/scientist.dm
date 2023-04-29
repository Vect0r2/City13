/datum/job/scientist
	title = JOB_SCIENTIST
	config_tag = "SCIENTIST"



/datum/outfit/job/scientist
	name = "Scientist"
	jobtype = /datum/job/scientist

	id_trim = /datum/id_trim/job/scientist
	uniform = /obj/item/clothing/under/rank/rnd/scientist
	suit = /obj/item/clothing/suit/toggle/labcoat/science
	belt = /obj/item/modular_computer/pda/science
	ears = /obj/item/radio/headset/headset_sci
	shoes = /obj/item/clothing/shoes/sneakers/white

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/science
	duffelbag = /obj/item/storage/backpack/duffelbag/science

/datum/outfit/job/scientist/pre_equip(mob/living/carbon/human/H)
	..()
	try_giving_horrible_tie()

/datum/outfit/job/scientist/proc/try_giving_horrible_tie()
	if (prob(0.4))
		neck = /obj/item/clothing/neck/tie/horrible

/datum/outfit/job/scientist/get_types_to_preload()
	. = ..()
	. += /obj/item/clothing/neck/tie/horrible

/// A version of the scientist outfit that is guaranteed to be the same every time
/datum/outfit/job/scientist/consistent
	name = "Scientist - Consistent"

/datum/outfit/job/scientist/consistent/try_giving_horrible_tie()
	return
