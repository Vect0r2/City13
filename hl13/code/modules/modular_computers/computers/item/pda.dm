/obj/item/modular_computer/combine_pda
	name = "Combine PDA"
	icon = 'hl13/icons/obj/radios.dmi'
	icon_state = "CP_RADIO"
	device_theme = PDA_THEME_COMBINE_PDA
	idle_power_usage = 0 //untill we add a way of charging the pda it should remain at 0 idle power usage
	hardware_flag = PROGRAM_TABLET
	starting_programs = list(
		/datum/computer_file/program/filemanager,
		/datum/computer_file/program/civilian_data,
		/datum/computer_file/program/socio_stability_monitor,
	)

