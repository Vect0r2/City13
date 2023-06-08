/obj/item/modular_computer/combine_pda
	name = "Combine PDA"
	icon = 'hl13/icons/obj/radios.dmi'
	icon_state = "CP_RADIO"
	device_theme = PDA_THEME_TERMINAL
	var/static/list/datum/computer_file/programs = list(
		/datum/computer_file/program/filemanager,
		/datum/computer_file/program/messenger,
	)

