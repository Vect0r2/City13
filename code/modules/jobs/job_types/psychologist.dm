/datum/job/psychologist
	title = JOB_PSYCHOLOGIST
	config_tag = "PSYCHOLOGIST"



/datum/outfit/job/psychologist
	name = "Psychologist"
	jobtype = /datum/job/psychologist

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/job/psychologist
	uniform = /obj/item/clothing/under/suit/black
	backpack_contents = list(
		/obj/item/storage/pill_bottle/happinesspsych,
		/obj/item/storage/pill_bottle/lsdpsych,
		/obj/item/storage/pill_bottle/mannitol,
		/obj/item/storage/pill_bottle/paxpsych,
		/obj/item/storage/pill_bottle/psicodine,
		)
	belt = /obj/item/modular_computer/pda/medical
	ears = /obj/item/radio/headset/headset_srvmed
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/clipboard
	neck = /obj/item/clothing/neck/tie/black/tied
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med

	pda_slot = ITEM_SLOT_BELT
	skillchips = list(/obj/item/skillchip/job/psychology)
