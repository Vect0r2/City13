/obj/structure/girder/hl13
	icon = 'hl13/icons/turf/walls/wall_frame.dmi'
	icon_state = "wall_frame"

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
			var/obj/item/stack/rods/rod = W
			var/amount = construction_cost[rod.type]
			if(state == GIRDER_DISPLACED)
				if(rod.get_amount() < amount)
					balloon_alert(user, "need [amount] rods!")
					return
				balloon_alert(user, "concealing entrance...")
				if(do_after(user, 20, target = src))
					if(rod.get_amount() < amount)
						return
					rod.use(amount)
					var/obj/structure/falsewall/iron/FW = new (loc)
					transfer_fingerprints_to(FW)
					qdel(src)
					return
			else
				if(rod.get_amount() < amount)
					balloon_alert(user, "need [amount] rods!")
					return
				balloon_alert(user, "adding plating...")
				if(do_after(user, 40, target = src))
					if(rod.get_amount() < amount)
						return
					rod.use(amount)
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall/mineral/iron)
					transfer_fingerprints_to(T)
					qdel(src)
				return

		if(!istype(W, /obj/item/stack/sheet))
			return

		var/obj/item/stack/sheet/sheets = W
		if(istype(sheets, /obj/item/stack/sheet/hl13/concrete))
			var/amount = construction_cost[/obj/item/stack/sheet/hl13/concrete]
			if(state == GIRDER_DISPLACED)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "concealing entrance...")
				if(do_after(user, 20*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/falsewall/F = new (loc)
					transfer_fingerprints_to(F)
					qdel(src)
					return
			else if(state == GIRDER_REINF)
				balloon_alert(user, "need combine sheet!")
				return
			else if(state == GIRDER_TRAM)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
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
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "laying bricks...")
				if (do_after(user, 40*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall/hl13/concrete_wall)
					transfer_fingerprints_to(T)
					qdel(src)
				return

		if(istype(sheets, /obj/item/stack/sheet/iron))
			var/amount = construction_cost[/obj/item/stack/sheet/iron]
			if(state == GIRDER_DISPLACED)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "concealing entrance...")
				if(do_after(user, 20*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/falsewall/F = new (loc)
					transfer_fingerprints_to(F)
					qdel(src)
					return
			else if(state == GIRDER_REINF)
				balloon_alert(user, "need plasteel sheet!")
				return
			else if(state == GIRDER_TRAM)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "adding plating...")
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
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "adding plating...")
				if (do_after(user, 40*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall)
					transfer_fingerprints_to(T)
					qdel(src)
				return

		if(istype(sheets, /obj/item/stack/sheet/plasteel))
			var/amount = construction_cost[/obj/item/stack/sheet/plasteel]
			if(state == GIRDER_DISPLACED)
				if(sheets.get_amount() < amount)
					balloon_alert(user, "need [amount] sheets!")
					return
				balloon_alert(user, "concealing entrance...")
				if(do_after(user, 20, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/falsewall/reinforced/FW = new (loc)
					transfer_fingerprints_to(FW)
					qdel(src)
					return
			else if(state == GIRDER_REINF)
				amount = 1 // hur dur let's make plasteel have different construction amounts 4norasin
				if(sheets.get_amount() < amount)
					return
				balloon_alert(user, "adding plating...")
				if(do_after(user, 50*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/turf/T = get_turf(src)
					T.PlaceOnTop(/turf/closed/wall/r_wall)
					transfer_fingerprints_to(T)
					qdel(src)
				return
			else
				amount = 1 // hur dur x2
				if(sheets.get_amount() < amount)
					return
				balloon_alert(user, "reinforcing frame...")
				if(do_after(user, 60*platingmodifier, target = src))
					if(sheets.get_amount() < amount)
						return
					sheets.use(amount)
					var/obj/structure/girder/reinforced/R = new (loc)
					transfer_fingerprints_to(R)
					qdel(src)
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
		var/obj/item/pipe/P = W
		if (P.pipe_type in list(0, 1, 5)) //simple pipes, simple bends, and simple manifolds.
			if(!user.transferItemToLoc(P, drop_location()))
				return
			balloon_alert(user, "inserted pipe")
	else
		return ..()
