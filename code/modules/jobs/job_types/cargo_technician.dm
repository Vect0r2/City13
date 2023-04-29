/datum/job/cargo_technician
	title = JOB_CARGO_TECHNICIAN
	config_tag = "CARGO_TECHNICIAN"



/datum/outfit/job/cargo_tech
	name = "Cargo Technician"
	jobtype = /datum/job/cargo_technician

	backpack_contents = list(
		/obj/item/boxcutter = 1,
	)
	id_trim = /datum/id_trim/job/cargo_technician
	uniform = /obj/item/clothing/under/rank/cargo/tech
	belt = /obj/item/modular_computer/pda/cargo
	ears = /obj/item/radio/headset/headset_cargo
	l_hand = /obj/item/universal_scanner

/datum/outfit/job/cargo_tech/mod
	name = "Cargo Technician (MODsuit)"

	back = /obj/item/mod/control/pre_equipped/loader
