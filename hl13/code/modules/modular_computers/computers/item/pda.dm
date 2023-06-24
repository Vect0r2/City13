/obj/item/modular_computer/combine_pda
	name = "Combine PDA"
	icon = 'hl13/icons/obj/radios.dmi'
	icon_state = "CP_RADIO"
	device_theme = PDA_THEME_TERMINAL
	hardware_flag = PROGRAM_LAPTOP
	starting_programs = list(
		/datum/computer_file/program/filemanager,
		/datum/computer_file/program/messenger,
		/datum/computer_file/program/civilian_data,
		/datum/computer_file/program/socio_stability_monitor,
	)

