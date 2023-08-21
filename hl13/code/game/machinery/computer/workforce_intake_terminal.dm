/obj/machinery/computer/hl13/combine_terminal/workforce_terminal
	name = "Workforce intake terminal"
	desc = "A terminal ment for printing IDs"
	tguitheme = "combine"
	icon = 'hl13/icons/obj/worker_intake_terminal.dmi'
	icon_state = "wf-terminal"
	circuit = /obj/item/circuitboard/computer/hl13/workforce_terminal
	var/coupon_inserted = FALSE
	var/stored_coupon = null

	//Job coupon variables
	var/coupon_role_assignment
	var/coupon_recorded_name
	var/id_trim

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/attackby(obj/item/attacking_item, mob/user)
	if(attacking_item.is_coupon==FALSE)
		return
	if(coupon_inserted)
		return
	else
		var/obj/item/hl13/coupon/relocation_coupon/coupon
		attacking_item.forceMove(src)
		coupon = attacking_item
		to_chat(user, span_notice("You insert the [attacking_item] into the coupon reader."))
		playsound(src, 'sound/machines/terminal_insert_disc.ogg', 50, FALSE)
		coupon_role_assignment = coupon.role_assignment
		coupon_recorded_name = coupon.recorded_name
		id_trim = coupon.trim_coupon
		stored_coupon = attacking_item
		coupon_inserted = TRUE

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/ui_interact(mob/user, datum/tgui/ui)
	. = ..()
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "WorkforceTerminal")
		ui.open()

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/proc/makeID()
	var/obj/item/card/id/advanced/hl13/newID = new(loc)
	newID.assignment = coupon_role_assignment
	newID.registered_name = coupon_recorded_name
	newID.trim = id_trim

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/ui_act(action, list/params)
	. = ..()
	if(.)
		return
	switch(action)
		if("printid")
			if(coupon_inserted == FALSE)
				return
			else
				makeID()
				coupon_role_assignment = null
				coupon_recorded_name = null
				id_trim = null
				coupon_inserted = FALSE
				stored_coupon = null
