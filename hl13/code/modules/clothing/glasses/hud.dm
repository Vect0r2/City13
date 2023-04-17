/obj/item/clothing/glasses/hud/hl13
	hl13_flag = TRUE
	icon = 'hl13/icons/obj/clothing/glasses.dmi'

/obj/item/clothing/glasses/hud/hl13/combine/cp/night
	name = "security HUD"
	desc = "A heads-up display that scans the humanoids in view and provides accurate data about their ID status and security records."
	icon_state = "cp_visor"
	hud_type = DATA_HUD_SECURITY_ADVANCED
	hud_trait = TRAIT_SECURITY_HUD
	flash_protect = FLASH_PROTECTION_FLASH
	color_cutoffs = null
	color_cutoff_to_set = list(170,170,255)
	glass_colour_type = /datum/client_colour/glass_colour/lightblue

/obj/item/clothing/glasses/hud/hl13/combine/cp/night/commando
	icon_state = "cpc_visor"
	glass_colour_type = /datum/client_colour/glass_colour/lightorange
