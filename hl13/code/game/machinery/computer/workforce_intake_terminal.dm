/obj/machinery/computer/hl13/combine_terminal/workforce_terminal
	name = "Workforce intake terminal"
	desc = "A terminal ment for printing IDs"
	tguitheme = "combine"
	icon = 'hl13/icons/obj/worker_intake_terminal.dmi'
	icon_state = "wf-terminal"
	circuit = /obj/item/circuitboard/computer/hl13/workforce_terminal
	var/coupon_inserted = FALSE
	var/stored_coupon = null


/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/attackby(obj/item/attacking_item, mob/user)
	if(attacking_item.is_coupon==FALSE)
		return
	if(coupon_inserted)
		return
	else
		attacking_item.forceMove(src)
		to_chat(user, span_notice("You insert the [attacking_item] into the coupon reader."))
		playsound(src, 'sound/machines/terminal_insert_disc.ogg', 50, FALSE)
		stored_coupon = attacking_item
		coupon_inserted = TRUE

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/ui_interact(mob/user, datum/tgui/ui)
	. = ..()
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "WorkforceTerminal")
		ui.open()

/obj/machinery/computer/hl13/combine_terminal/workforce_terminal/ui_act(action, list/params)
	. = ..()
	if(.)
		return
	switch(action)
		if("printid")
			if(coupon_inserted == FALSE)
				return
			else
				new /obj/item/card/id/advanced/hl13(loc, src)
				coupon_inserted = FALSE
				stored_coupon = null
