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
	ambience_index = AMBIENCE_HL13
	area_flags = UNIQUE_AREA
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	outdoors = TRUE
	ambient_buzz = 'hl13/sound/ambience/station_ambience_stereo_loop1.ogg'
	ambient_buzz_vol = 5
	ambientsounds = list('sound/ambience/ambihl13_1.ogg','sound/ambience/ambihl13_2.ogg','sound/ambience/ambihl13_3.ogg','sound/ambience/ambihl13_4.ogg','sound/ambience/ambihl13_5.ogg','sound/ambience/ambihl13_6.ogg','sound/ambience/ambihl13_7.ogg')

/area/city13/inside
	name = "City Street"
	icon_state = "sec_prison"
	has_gravity = TRUE
	always_unpowered = FALSE
	power_environ = TRUE
	power_equip = TRUE
	power_light = TRUE
	requires_power = TRUE
	ambience_index = AMBIENCE_HL13
	area_flags = UNIQUE_AREA
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS
	outdoors = FALSE
	ambient_buzz = 'hl13/sound/ambience/town_ambience.ogg'
	ambient_buzz_vol = 10
	ambientsounds = list('sound/ambience/ambihl13_1.ogg','sound/ambience/ambihl13_2.ogg','sound/ambience/ambihl13_3.ogg','sound/ambience/ambihl13_4.ogg','sound/ambience/ambihl13_5.ogg','sound/ambience/ambihl13_6.ogg','sound/ambience/ambihl13_7.ogg')
	//underground = TRUE must check if it works on areas that do not have a top floor above them

