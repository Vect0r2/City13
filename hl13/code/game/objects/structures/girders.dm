GLOBAL_LIST_INIT(walls_type_icons, list(
	/turf/closed/wall/hl13/concrete_wall = icon('hl13/icons/turf/walls/concrete_wall.dmi', "concrete1_icon"),
	/turf/closed/wall/hl13/urban_concrete_wall = icon('hl13/icons/turf/walls/concrete2_wall.dmi', "concrete2_icon"),
	/turf/closed/wall/hl13/cp_concrete_wall = icon('hl13/icons/turf/walls/cp_wall.dmi', "cp_icon"),
	/turf/closed/wall/hl13/lobby_concrete_wall = icon('hl13/icons/turf/walls/lobby_wall.dmi', "lobby_icon"),
	/turf/closed/wall/hl13/store_concrete_wall = icon('hl13/icons/turf/walls/store_wall.dmi', "concrete1_icon"),
	/turf/closed/wall/hl13/brick_wall = icon('hl13/icons/turf/walls/brick_wall.dmi', "brick1_icon"),
))

GLOBAL_LIST_INIT(fwalls_type_icons, list(
	/obj/structure/falsewall/hl13/concrete_wall = icon('hl13/icons/turf/walls/concrete_wall.dmi', "concrete1_icon"),
	/obj/structure/falsewall/hl13/urban_concrete_wall = icon('hl13/icons/turf/walls/concrete2_wall.dmi', "concrete2_icon"),
	/obj/structure/falsewall/hl13/cp_concrete_wall = icon('hl13/icons/turf/walls/cp_wall.dmi', "cp_icon"),
	/obj/structure/falsewall/hl13/lobby_concrete_wall = icon('hl13/icons/turf/walls/lobby_wall.dmi', "lobby_icon"),
	/obj/structure/falsewall/hl13/store_concrete_wall = icon('hl13/icons/turf/walls/store_wall.dmi', "concrete1_icon"),
	/obj/structure/falsewall/hl13/brick_wall = icon('hl13/icons/turf/walls/brick_wall.dmi', "brick1_icon"),
))

/obj/structure/girder/hl13
	icon = 'hl13/icons/turf/walls/wall_frame.dmi'
	icon_state = "wall_frame"

/obj/structure/girder/hl13/displaced
	name = "displaced girder"
	icon = 'hl13/icons/turf/walls/wall_frame.dmi'
	icon_state = "wall_frame_unsecured"
	anchored = FALSE
	state = GIRDER_DISPLACED
	girderpasschance = 25
	max_integrity = 120

/obj/structure/girder/hl13/attackby(obj/item/W, mob/user, params)
	var/platingmodifier = 1
	if(HAS_TRAIT(user, TRAIT_QUICK_BUILD))
		platingmodifier = 0.7
		if(next_beep <= world.time)
			next_beep = world.time + 10
			playsound(src, 'sound/machines/clockcult/integration_cog_install.ogg', 50, TRUE)
	add_fingerprint(user)

	if(istype(W, /obj/item/gun/energy/plasmacutter))
		balloon_alert(user, "slicing apart...")
		if(W.use_tool(src, user, 40, volume=100))
			var/obj/item/stack/sheet/iron/M = new (loc, 2)
			if (!QDELETED(M))
				M.add_fingerprint(user)
			qdel(src)
			return

	else if(isstack(W))
		if(iswallturf(loc) || (locate(/obj/structure/falsewall) in src.loc.contents))
			balloon_alert(user, "wall already present!")
			return
		if(!isfloorturf(src.loc) && state != GIRDER_TRAM)
			balloon_alert(user, "need floor!")
			return
		if(state == GIRDER_TRAM)
			if(!locate(/obj/structure/industrial_lift/tram) in src.loc.contents)
				balloon_alert(user, "need tram floors!")
				return

		if(istype(W, /obj/item/stack/rods))
			return

		if(!istype(W, /obj/item/stack/sheet))
			return

		var/obj/item/stack/sheet/sheets = W
		if(istype(sheets, /obj/item/stack/sheet/hl13/concrete))
			var/amount = construction_cost[/obj/item/stack/sheet/hl13/concrete]
			switch(state)
				if(GIRDER_DISPLACED)
					if(sheets.get_amount() < amount)
						balloon_alert(user, "need [amount] sheets!")
						return
					var/obj/structure/falsewall/hl13/wall_to_build = show_radial_menu(
						user,
						src,
						GLOB.fwalls_type_icons,
						require_near = !issilicon(user),
					)
					if(wall_to_build != null)
						balloon_alert(user, "concealing entrance...")
						if(do_after(user, 20*platingmodifier, target = src))
							if(sheets.get_amount() < amount)
								return
							sheets.use(amount)
							var/obj/structure/falsewall/F = new wall_to_build(loc)
							transfer_fingerprints_to(F)
							qdel(src)
						return
				if(GIRDER_REINF)
					balloon_alert(user, "need combine sheet!")
					return
				if(GIRDER_TRAM)
					if(sheets.get_amount() < amount)
						balloon_alert(user, "need [amount] bricks!")
						return
					balloon_alert(user, "laying bricks...")
					if (do_after(user, 4 SECONDS, target = src))
						if(sheets.get_amount() < amount)
							return
						sheets.use(2)
						var/obj/structure/tramwall/tram_wall = new(loc)
						transfer_fingerprints_to(tram_wall)
						qdel(src)
					return
				else
					if(sheets.get_amount() < amount)
						balloon_alert(user, "need [amount] bricks!")
						return
					var/turf/closed/wall/hl13/wall_to_build = show_radial_menu(
						user,
						src,
						GLOB.walls_type_icons,
						require_near = !issilicon(user),
					)
					if(wall_to_build != null)
						balloon_alert(user, "laying bricks...")
						if (do_after(user, 40*platingmodifier, target = src))
							if(sheets.get_amount() < amount)
								return
							sheets.use(amount)
							var/turf/T = get_turf(src)
							T.PlaceOnTop(wall_to_build)
							transfer_fingerprints_to(T)
							qdel(src)
						return

		if(istype(sheets, /obj/item/stack/sheet/iron))
			return

		if(istype(sheets, /obj/item/stack/sheet/plasteel))
			return

		if(!sheets.has_unique_girder && sheets.material_type)
			if(istype(src, /obj/structure/girder/reinforced))
				balloon_alert(user, "need plasteel!")
				return

			var/M = sheets.sheettype
			var/amount = construction_cost["exotic_material"]
			if(state == GIRDER_TRAM)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "adding plating...")
				if (do_after(user, 4 SECONDS, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/tramwall/tram_wall
					var/tram_wall_type = text2path("/obj/structure/tramwall/[M]")
					if(tram_wall_type)
						tram_wall = new tram_wall_type(loc)
					else
						var/obj/structure/tramwall/material/mat_tram_wall = new(loc)
						var/list/material_list = list()
						material_list[GET_MATERIAL_REF(sheets.material_type)] = MINERAL_MATERIAL_AMOUNT * 2
						if(material_list)
							mat_tram_wall.set_custom_materials(material_list)
						tram_wall = mat_tram_wall
					transfer_fingerprints_to(tram_wall)
					qdel(src)
				return
			if(state == GIRDER_DISPLACED)
				var/falsewall_type = text2path("/obj/structure/falsewall/[M]")
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "concealing entrance...")
				if(do_after(user, 20, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/falsewall/falsewall
					if(falsewall_type)
						falsewall = new falsewall_type (loc)
					else
						var/obj/structure/falsewall/material/mat_falsewall = new(loc)
						var/list/material_list = list()
						material_list[GET_MATERIAL_REF(sheets.material_type)] = MINERAL_MATERIAL_AMOUNT * 2
						if(material_list)
							mat_falsewall.set_custom_materials(material_list)
						falsewall = mat_falsewall
					transfer_fingerprints_to(falsewall)
					qdel(src)
					return
			else
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "adding plating...")
				if (do_after(user, 40, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/turf/T = get_turf(src)
					if(sheets.walltype)
						T.PlaceOnTop(sheets.walltype)
					else
						var/turf/newturf = T.PlaceOnTop(/turf/closed/wall/material)
						var/list/material_list = list()
						material_list[GET_MATERIAL_REF(sheets.material_type)] = MINERAL_MATERIAL_AMOUNT * 2
						if(material_list)
							newturf.set_custom_materials(material_list)

					transfer_fingerprints_to(T)
					qdel(src)
				return

		add_hiddenprint(user)

	else if(istype(W, /obj/item/pipe))
		return
	else
		return ..()


/obj/structure/girder/hl13/wrench_act(mob/user, obj/item/tool)
	. = ..()
	if(state == GIRDER_DISPLACED)
		if(!isfloorturf(loc))
			balloon_alert(user, "needs floor!")

		balloon_alert(user, "securing frame...")
		if(tool.use_tool(src, user, 40, volume=100))
			var/obj/structure/girder/hl13/G = new (loc)
			transfer_fingerprints_to(G)
			qdel(src)
		return TRUE
	else if(state == GIRDER_NORMAL && can_displace)
		balloon_alert(user, "unsecuring frame...")
		if(tool.use_tool(src, user, 40, volume=100))
			var/obj/structure/girder/hl13/displaced/D = new (loc)
			transfer_fingerprints_to(D)
			qdel(src)
		return TRUE
