//Concrete Floor

/obj/item/stack/tile/concrete
	name = "concrete floor"
	singular_name = "concrete floor tile"
	desc = "DO NOT USE THIS IS FOR INHERITANCE"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "concrete_1_obj"
	inhand_icon_state = "tile"
	merge_type = /obj/item/stack/tile/concrete
	mats_per_unit = list(/datum/material/iron = MINERAL_MATERIAL_AMOUNT * 0.25)

/obj/item/stack/tile/concrete/concrete_road
	name = "concrete road"
	singular_name = "concrete road tile"
	desc = "Keep the roads safe"
	icon_state = "concrete_1_obj"
	turf_type = /turf/open/floor/city_floor/concrete_road

/obj/item/stack/tile/concrete/concrete_road/sixty
	amount = 60

/obj/item/stack/tile/concrete/concrete_floor
	name = "concrete floor"
	singular_name = "concrete floor tile"
	desc = "Withered by time"
	icon_state = "concrete_2_obj"
	turf_type = /turf/open/floor/city_floor/concrete_floor

/obj/item/stack/tile/concrete/concrete_floor/sixty
	amount = 60

/obj/item/stack/tile/concrete/concrete_tiles
	name = "concrete tiles"
	singular_name = "concrete tiles tile"
	desc = "Withered by time"
	icon_state = "concrete_3_obj"
	turf_type = /turf/open/floor/city_floor/concrete_tiles

/obj/item/stack/tile/concrete/concrete_tiles/sixty
	amount = 60

/obj/item/stack/tile/concrete/concrete_path
	name = "concrete path"
	singular_name = "concrete path tile"
	desc = "Withered by time"
	icon_state = "concretepath1_obj"
	turf_type = /turf/open/floor/city_floor/concrete_path

/obj/item/stack/tile/concrete/concrete_path/sixty
	amount = 60

//Yellow Floor

/obj/item/stack/tile/yellow_floor
	name = "yellow floor"
	singular_name = "yellow floor tile"
	desc = "DO NOT USE! THIS IS FOR INHERITANCE"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "black_yellow_tiles_obj"
	inhand_icon_state = "tile"
	merge_type = /obj/item/stack/tile/yellow_floor
	mats_per_unit = list(/datum/material/iron = MINERAL_MATERIAL_AMOUNT * 0.25)

/obj/item/stack/tile/yellow_floor/yellow_floor_tiles
	name = "yellow floor tiles"
	singular_name = "yellow floor tile"
	desc = "Withered by time"
	icon_state = "yellow_tiles_obj"
	turf_type = /turf/open/floor/city_floor/yellow_floor_tiles

/obj/item/stack/tile/yellow_floor/yellow_floor_tiles/sixty
	amount = 60

/obj/item/stack/tile/yellow_floor/yellow_flooring_tiles
	name = "yellow flooring tiles"
	singular_name = "yellow flooring tile"
	desc = "Withered by time"
	icon_state = "yellow_tiles_2_obj"
	turf_type = /turf/open/floor/city_floor/yellow_floor_tiles

/obj/item/stack/tile/yellow_floor/yellow_flooring_tiles/sixty
	amount = 60

/obj/item/stack/tile/yellow_floor/yellow_floor_station_tiles
	name = "yellow floor tiles"
	singular_name = "yellow floor tile"
	desc = "Withered by time"
	icon_state = "yellow_tiles_3_obj"
	turf_type = /turf/open/floor/city_floor/yellow_floor_tiles

/obj/item/stack/tile/yellow_floor/yellow_floor_station_tiles/sixty
	amount = 60

/obj/item/stack/tile/yellow_floor/black_yellow_tiles
	name = "black yellow floor tiles"
	singular_name = "black yellow floor tile"
	desc = "Withered by time"
	icon_state = "black_yellow_tiles_obj"
	turf_type = /turf/open/floor/city_floor/black_yellow_tiles

/obj/item/stack/tile/yellow_floor/black_yellow_tiles/sixty
	amount = 60

// Cobblestone

/obj/item/stack/tile/cobblestone_tiles
	name = "cobblestone floor tiles"
	singular_name = "cobblestone floor tile"
	desc = "Stoney street, where may it lead...?"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "cobblestone_obj"
	icon_state = "cobblestone_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/cobblestone_floor

/obj/item/stack/tile/cobblestone_road_tiles
	name = "cobblestone road tiles"
	singular_name = "cobblestone road tile"
	desc = "Stoney street, where may it lead...?"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "road_obj"
	icon_state = "road_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/cobblestone_road

/obj/item/stack/tile/cobblestone_tiles/sixty
	amount = 60

// Combine

/obj/item/stack/tile/combine_tiles
	name = "combine floor tiles"
	singular_name = "combine floor tile"
	desc = "A strange, blue-tinted otherworldly metal, cold to the touch"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "combine_tile_obj"
	icon_state = "combine_tile_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/combine_floor

/obj/item/stack/tile/combine_tiles/sixty
	amount = 60

// Wooden

/obj/item/stack/tile/wooden_floor_tiles
	name = "wooden floor tiles"
	singular_name = "wooden floor tile"
	desc = "Creaky wooden floors, covered in a fine layer of dust and grime"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "wooden_floor_obj"
	icon_state = "wooden_floor_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/wooden_floor

/obj/item/stack/tile/wooden_floor_tiles/sixty
	amount = 60

// Misc

/obj/item/stack/tile/white_tiles_tiles
	name = "white tiles tiles"
	singular_name = "white tiles tile"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "white_tiles_obj"
	icon_state = "white_tiles_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/white_tiles

/obj/item/stack/tile/white_tiles_tiles/sixty
	amount = 60

/obj/item/stack/tile/black_tiles_tiles
	name = "black tiles tiles"
	singular_name = "black tiles tile"
	icon = 'hl13/icons/obj/tiles.dmi'
	base_icon_state = "black_tiles_obj"
	icon_state = "black_tiles_obj"
	inhand_icon_state = "tile"
	turf_type = /turf/open/floor/city_floor/black_tiles

/obj/item/stack/tile/black_tiles_tiles/sixty
	amount = 60
