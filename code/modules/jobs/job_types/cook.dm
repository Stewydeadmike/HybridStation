/datum/job/cook
	title = "Cook"
	department_head = list("Head of Personnel")
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/cooks = 0 //Counts cooks amount

	outfit = /datum/outfit/job/cook
	plasmaman_outfit = /datum/outfit/plasmaman/chef

	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV

	liver_traits = list(TRAIT_CULINARY_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_COOK
	bounty_types = CIV_JOB_CHEF
	departments = DEPARTMENT_SERVICE

	family_heirlooms = list(/obj/item/reagent_containers/food/condiment/saltshaker, /obj/item/kitchen/rollingpin, /obj/item/clothing/head/chefhat)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE


/datum/job/cook/New()
	. = ..()
	mail_goodies = list(
		/obj/item/storage/box/ingredients/random = 80,
		/obj/item/reagent_containers/glass/bottle/caramel = 20,
		/obj/item/reagent_containers/food/condiment/flour = 20,
		/obj/item/reagent_containers/food/condiment/rice = 20,
		/obj/item/reagent_containers/food/condiment/enzyme = 15,
		/obj/item/reagent_containers/food/condiment/soymilk = 15,
		/obj/item/kitchen/knife = 4,
		/obj/item/kitchen/knife/butcher = 2
	)

/datum/outfit/job/cook
	name = "Cook"
	jobtype = /datum/job/cook
	card_access = /datum/card_access/job/cook

	belt = /obj/item/pda/cook
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/civilian/chef
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat
	mask = /obj/item/clothing/mask/fakemoustache/italian
	backpack_contents = list(
		/obj/item/sharpener = 1,
		/obj/item/choice_beacon/ingredient = 1
	)

/datum/outfit/job/cook/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	var/datum/job/cook/J = SSjob.GetJobType(jobtype)
	if(J) // Fix for runtime caused by invalid job being passed
		if(J.cooks>0)//Cooks
			suit = /obj/item/clothing/suit/apron/chef
			head = /obj/item/clothing/head/soft/mime
		if(!visualsOnly)
			J.cooks++
