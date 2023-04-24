/*

██╗░░██╗██╗░░░░░░░███╗░░██████╗░  ░█████╗░░█████╗░██████╗░██████╗░░██████╗
██║░░██║██║░░░░░░████║░░╚════██╗  ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝
███████║██║░░░░░██╔██║░░░█████╔╝  ██║░░╚═╝███████║██████╔╝██║░░██║╚█████╗░
██╔══██║██║░░░░░╚═╝██║░░░╚═══██╗  ██║░░██╗██╔══██║██╔══██╗██║░░██║░╚═══██╗
██║░░██║███████╗███████╗██████╔╝  ╚█████╔╝██║░░██║██║░░██║██████╔╝██████╔╝
╚═╝░░╚═╝╚══════╝╚══════╝╚═════╝░  ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚═════╝░
*/

/datum/id_trim/job/citizen
	assignment = "Citizen"
	trim_state = "trim_hl13citizen"
	department_color = COLOR_NAVY
	sechud_icon_state = SECHUD_HL13_CITIZEN
	minimal_access = list()
	extra_access = list(
		ACCESS_MAINT_TUNNELS,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	job = /datum/job/citizen

/datum/id_trim/job/civil_protection
	assignment = "Civil Protection officer"
	trim_state = "trim_hl13civilprotection"
	department_color = COLOR_CP_BLUE
	sechud_icon_state = SECHUD_HL13_CIVIL_PROTECTION
	minimal_access = list()
	extra_access = list(
		ACCESS_MAINT_TUNNELS,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	job = /datum/job/civil_protection

/datum/id_trim/job/civil_protection_commander
	assignment = "Civil Protection Commander"
	trim_state = "trim_hl13civilprotectioncommander"
	department_color = COLOR_ADMINISTRATION_RED
	sechud_icon_state = SECHUD_HL13_CIVIL_PROTECTION_COMMANDER
	minimal_access = list()
	extra_access = list(
		ACCESS_MAINT_TUNNELS,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	job = /datum/job/civil_protection_commander
