
/datum/job/citizen
	title = JOB_CITIZEN
	description = "Get your apartment and survive as long as possible"
	faction = FACTION_STATION
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	exp_granted_type = EXP_TYPE_CREW
	outfit = /datum/outfit/job/citizen
	plasmaman_outfit = /datum/outfit/plasmaman
	paycheck = PAYCHECK_LOWER

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_CITIZEN

	department_for_prefs = /datum/job_department/assistant

	family_heirlooms = list(/obj/item/storage/toolbox/mechanical/old/heirloom, /obj/item/card/old_hl13)

	mail_goodies = list(,
		/obj/item/choice_beacon/music = 5,
		/obj/item/toy/sprayoncan = 3,
		/obj/item/crowbar/large = 1
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN
	rpg_title = "Lout"
	config_tag = "CITIZEN"

/datum/outfit/job/citizen
	name = JOB_CITIZEN
	id = /obj/item/card/id/advanced/hl13
	id_trim = /datum/id_trim/job/citizen
	jobtype = /datum/job/citizen
	uniform = /obj/item/clothing/under/hl13/rank/citizen
	shoes = /obj/item/clothing/shoes/hl13/brown_shoes
	l_hand = /obj/item/storage/briefcase/hl13/citizen




