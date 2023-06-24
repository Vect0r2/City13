/datum/computer_file/program/civilian_data
	filename = "civilian_data"
	filedesc = "Civilian Records"
	category = PROGRAM_CATEGORY_MISC
	extended_desc = "Allows the user to view several basic records from the crew and modify them."
	size = 5
	program_icon = "clipboard"
	alert_able = TRUE
	tgui_id = "CivilianData"
	var/datum/record/crew/target

//gets records for CivilianData.js
/datum/computer_file/program/civilian_data/proc/GetRecordsReadable()
	var/list/all_records = list()
	for(target in GLOB.manifest.general)
		var/list/current_record = list()
		current_record["age"] = target.age
		current_record["fingerprint"] = target.fingerprint
		current_record["gender"] = target.gender
		current_record["name"] = target.name
		current_record["rank"] = target.rank
		current_record["species"] = target.species
		current_record["wanted"] = target.wanted_status
		all_records += list(current_record)
	return all_records



/datum/computer_file/program/civilian_data/ui_act(action, list/params)
	. = ..()
	if(.)
		return
	switch(action)
		if("set_wanted")
			for(target in GLOB.manifest.general)
				playsound(computer.loc, 'sound/arcade/hit.ogg', 50, TRUE)
				target.wanted_status = WANTED_ARREST
				. = TRUE
/datum/computer_file/program/civilian_data/ui_data(mob/user)
	var/list/data = list()
	data["records"] = GetRecordsReadable()
	return data
