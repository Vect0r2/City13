/area/city13/
	icon = 'icons/area/areas_station.dmi'

/area/city13/street
	name = "City Street"
	icon_state = "transit_tube"
	has_gravity = TRUE
	always_unpowered = FALSE
	power_environ = TRUE
	power_equip = TRUE
	power_light = TRUE
	requires_power = TRUE
	ambience_index = AMBIENCE_GENERIC
	area_flags = UNIQUE_AREA
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	outdoors = TRUE

/area/city13/inside
	name = "City Street"
	icon_state = "sec_prison"
	has_gravity = TRUE
	always_unpowered = FALSE
	power_environ = TRUE
	power_equip = TRUE
	power_light = TRUE
	requires_power = TRUE
	ambience_index = AMBIENCE_GENERIC
	area_flags = UNIQUE_AREA
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	outdoors = FALSE
	//underground = TRUE must check if it works on areas that do not have a top floor above them

