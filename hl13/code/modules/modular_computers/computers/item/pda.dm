/obj/item/modular_computer/combine_pda
	name = "Combine PDA"
	icon = 'hl13/icons/obj/radios.dmi'
	icon_state = "CP_RADIO"
	device_theme = PDA_THEME_COMBINE_PDA
	hardware_flag = PROGRAM_TABLET
	starting_programs = list(
		/datum/computer_file/program/civilian_data,
		/datum/computer_file/program/socio_stability_monitor,
		/datum/computer_file/program/filemanager
	)

/obj/item/modular_computer/combine_pda/install_default_programs()
	SHOULD_CALL_PARENT(FALSE)
	for(var/programs in starting_programs)
		var/datum/computer_file/program/program_type = new programs
		store_file(program_type)


