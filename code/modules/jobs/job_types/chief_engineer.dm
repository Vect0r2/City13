/datum/job/chief_engineer
	title = JOB_CHIEF_ENGINEER
	config_tag = "CHIEF_ENGINEER"


/datum/job/chief_engineer/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"


/datum/outfit/job/ce
	name = "Chief Engineer"
	jobtype = /datum/job/chief_engineer

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/chief_engineer
	uniform = /obj/item/clothing/under/rank/engineering/chief_engineer
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		)
	belt = /obj/item/storage/belt/utility/chief/full
	ears = /obj/item/radio/headset/heads/ce
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/utility/hardhat/white
	shoes = /obj/item/clothing/shoes/sneakers/brown
	l_pocket = /obj/item/modular_computer/pda/heads/ce

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering

	box = /obj/item/storage/box/survival/engineer
	chameleon_extras = /obj/item/stamp/ce
	skillchips = list(/obj/item/skillchip/job/engineer)
	pda_slot = ITEM_SLOT_LPOCKET

/datum/outfit/job/ce/mod
	name = "Chief Engineer (MODsuit)"

	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/advanced
	glasses = /obj/item/clothing/glasses/meson/engine
	gloves = /obj/item/clothing/gloves/color/yellow
	head = null
	mask = /obj/item/clothing/mask/breath
	shoes = /obj/item/clothing/shoes/magboots/advance
	internals_slot = ITEM_SLOT_SUITSTORE
