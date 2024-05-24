/datum/job/cook
	title = JOB_COOK
	config_tag = "COOK"

/datum/job/cook/award_service(client/winner, award)
	winner.give_award(award, winner.mob)

	var/datum/venue/restaurant = SSrestaurant.all_venues[/datum/venue/restaurant]
	var/award_score = restaurant.total_income
	var/award_status = winner.get_award_status(/datum/award/score/chef_tourist_score)
	if(award_score > award_status)
		award_score -= award_status
	winner.give_award(/datum/award/score/chef_tourist_score, winner.mob, award_score)


/datum/outfit/job/cook
	name = "Cook"
	jobtype = /datum/job/cook

	id_trim = /datum/id_trim/job/cook/chef
	uniform = /obj/item/clothing/under/rank/civilian/chef
	suit = /obj/item/clothing/suit/toggle/chef
	backpack_contents = list(
		/obj/item/choice_beacon/ingredient = 1,
		/obj/item/sharpener = 1,
	)
	belt = /obj/item/modular_computer/pda/cook
	ears = /obj/item/radio/headset/headset_srv
	head = /obj/item/clothing/head/utility/chefhat
	mask = /obj/item/clothing/mask/fakemoustache/italian

	skillchips = list(/obj/item/skillchip/job/chef)


/datum/outfit/job/cook/get_types_to_preload()
	. = ..()
	. += /obj/item/clothing/suit/apron/chef
	. += /obj/item/clothing/head/soft/mime
