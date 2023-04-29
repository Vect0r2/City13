/datum/job/research_director
	title = JOB_RESEARCH_DIRECTOR
	config_tag = "RESEARCH_DIRECTOR"



/datum/job/research_director/get_captaincy_announcement(mob/living/captain)
	return "Due to staffing shortages, newly promoted Acting Captain [captain.real_name] on deck!"


/datum/outfit/job/rd
	name = JOB_RESEARCH_DIRECTOR
	jobtype = /datum/job/research_director

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/research_director
	uniform = /obj/item/clothing/under/rank/rnd/research_director/turtleneck
	suit = /obj/item/clothing/suit/jacket/research_director
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		)
	belt = /obj/item/modular_computer/pda/heads/rd
	head = /obj/item/clothing/head/beret/science/rd
	ears = /obj/item/radio/headset/heads/rd
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	l_pocket = /obj/item/laser_pointer/purple
	l_hand = /obj/item/clipboard

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/science
	duffelbag = /obj/item/storage/backpack/duffelbag/science

	chameleon_extras = /obj/item/stamp/rd
	skillchips = list(/obj/item/skillchip/job/research_director)

/datum/outfit/job/rd/mod
	name = "Research Director (MODsuit)"

	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/research
	suit = null
	mask = /obj/item/clothing/mask/breath
	internals_slot = ITEM_SLOT_SUITSTORE
