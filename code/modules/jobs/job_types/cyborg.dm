/datum/job/cyborg
	title = JOB_CYBORG
	config_tag = "CYBORG"


/datum/job/cyborg/after_spawn(mob/living/spawned, client/player_client)
	. = ..()
	if(!iscyborg(spawned))
		return
	spawned.gender = NEUTER
	var/mob/living/silicon/robot/robot_spawn = spawned
	robot_spawn.notify_ai(AI_NOTIFICATION_NEW_BORG)
	if(!robot_spawn.connected_ai) // Only log if there's no Master AI
		robot_spawn.log_current_laws()

/datum/job/cyborg/radio_help_message(mob/M)
	to_chat(M, "<b>Prefix your message with :b to speak with other cyborgs and AI.</b>")
