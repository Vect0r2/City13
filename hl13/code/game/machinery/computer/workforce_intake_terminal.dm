/obj/machinery/computer/terminal/hl13/combine_terminal/workforce_terminal
	name = "Workforce intake terminal"
	desc = ""
	upperinfo = ""
	content = list("")
	tguitheme = "combine"
	icon = 'hl13/icons/obj/worker_intake_terminal.dmi'
	icon_state = "wf-terminal"
	circuit = /obj/item/circuitboard/computer/hl13/workforce_terminal
	var/coupon_inserted = FALSE


/obj/machinery/computer/terminal/hl13/combine_terminal/workforce_terminal/attackby(O as obj, user as mob)
	if(istype(O, /obj/item/hl13/coupon/relocation_coupon))
		var/obj/item/hl13/coupon/relocation_coupon/coupon = O
		usr.drop_item()
		coupon.loc = src
		coupon_inserted = TRUE
	else
		return

/obj/machinery/computer/terminal/hl13/combine_terminal/workforce_terminal/ui_data(mob/user)


/obj/machinery/computer/terminal/hl13/combine_terminal/workforce_terminal/ui_interact(mob/user, datum/tgui/ui)
  ui = SStgui.try_update_ui(user, src, ui)
  if(!ui)
    ui.open()

/obj/machinery/computer/terminal/hl13/combine_terminal/workforce_terminal/ui_act(action, list/params)
	. = ..()
	if(.)
		return
	if(action=="Print ID")
		if(coupon_inserted == TRUE)

