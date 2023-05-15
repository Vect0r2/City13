/datum/reagent/consumable/hl13

/datum/reagent/consumable/hl13/breenblue
	name = "dr>breen's private reserve"
	description = "The Blue variant"
	color = "#ffffff41"
	taste_description = "Slight acidic tang"
	addiction_types = list(/datum/addiction/lithisyn = 2)

/datum/reagent/consumable/hl13/breenblue/on_mob_life(mob/living/carbon/affected_mob, delta_time)
	affected_mob.add_mood_event("" ,/datum/mood_event/hl13/taste_bad_breen, name)
	..()

/datum/reagent/consumable/hl13/breenred
	name = "dr>breen's private reserve"
	description = "The Red variant"
	color = "#ffffff0e"
	taste_description = "Almost clean"
	addiction_types = list(/datum/addiction/lithisyn = 1)
