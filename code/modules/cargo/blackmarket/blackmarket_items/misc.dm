/datum/blackmarket_item/misc
	category = "Miscellaneous"
	root = /datum/blackmarket_item/misc

/datum/blackmarket_item/misc/Clear_PDA
	name = "Clear PDA"
	desc = "Show off your style with this limited edition clear PDA!."
	item = /obj/item/pda/clear

	price_min = 250
	price_max = 600
	stock_max = 2
	availability_prob = 50

/datum/blackmarket_item/misc/jade_Lantern
	name = "Jade Lantern"
	desc = "Found in a box labeled 'Danger: Radioactive'. Probably safe."
	item = /obj/item/flashlight/lantern/jade

	price_min = 150
	price_max = 500
	stock_max = 2
	availability_prob = 45

/datum/blackmarket_item/misc/cap_gun
	name = "Cap Gun"
	desc = "Prank your friends with this harmless gun! Harmlessness guranteed."
	item = /obj/item/toy/gun

	price_min = 50
	price_max = 200
	stock_max = 6
	availability_prob = 80

/datum/blackmarket_item/misc/shoulder_holster
	name = "Shoulder holster"
	desc = "Yeehaw, hardboiled friends! This holster is the first step in your dream of becoming a detective and being allowed to shoot real guns!"
	item = /obj/item/storage/belt/holster

	price_min = 400
	price_max = 800
	stock_max = 8
	availability_prob = 60

/datum/blackmarket_item/misc/holywater
	name = "Flask of holy water"
	desc = "Father Lootius' own brand of ready-made holy water."
	item = /obj/item/reagent_containers/food/drinks/bottle/holywater

	price_min = 400
	price_max = 600
	stock_max = 3
	availability_prob = 40

/datum/blackmarket_item/misc/holywater/spawn_item(loc)
	if (prob(6.66))
		return new /obj/item/reagent_containers/glass/beaker/unholywater(loc)
	return ..()

/datum/blackmarket_item/misc/strange_seed
	name = "Strange Seeds"
	desc = "An Exotic Variety of seed that can contain anything from glow to acid."
	item = /obj/item/seeds/random

	price_min = 320
	price_max = 360
	stock_min = 2
	stock_max = 5
	availability_prob = 50

/datum/blackmarket_item/misc/smugglers_satchel
	name = "Smuggler's Satchel"
	desc = "This easily hidden satchel can become a versatile tool to anybody with the desire to keep certain items out of sight and out of mind."
	item = /obj/item/storage/backpack/satchel/flat/empty

	price_min = 750
	price_max = 1000
	stock_max = 2
	availability_prob = 30

/datum/blackmarket_item/misc/toy_esword
	name = "2521 New Product Esword Replica Clear White Yellow Red"
	desc = "All Color \
	Safety Full No Heat Energy Wound \
	Original Syndicate Crystal (replica) \
	230 Watt TRANSLATION ERROR 100% Quality"
	item = /obj/item/toy/sword

	price_min = 100
	price_max = 250
	stock_max = 5
	availability_prob = 40

/datum/blackmarket_item/misc/toy_esword/spawn_item(loc)
	if (prob(1)) //Made in China, OOPS!
		return new /obj/item/melee/transforming/energy/sword(loc)
	return ..()

///// B.E.P.I.S. Minor Rewards /////

/datum/blackmarket_item/misc/circuit_stack
	name = "Polycircuit Aggregate"
	desc = "Multiuse circuitboard set. High-quality. Guaranteed tested."
	item = /obj/item/stack/circuit_stack/full

	price_min = 300
	price_max = 700
	stock_max = 2
	availability_prob = 40

/datum/blackmarket_item/misc/survival_pen
	name = "Survival Pen"
	desc = "Combination writing and digging tool. Great gift."
	item = /obj/item/pen/survival

	price_min = 150
	price_max = 200
	stock_max = 1
	availability_prob = 50

/datum/blackmarket_item/misc/party_sleeper
	name = "Salvaged Sleeper Unit"
	desc = "Retro sleep unit. Excellent rest guaranteed. Medical standards compliant. Suitable for pensioners."
	item = /obj/item/circuitboard/machine/sleeper/party

	price_min = 1000
	price_max = 2000
	stock_max = 3
	availability_prob = 30

/datum/blackmarket_item/misc/sprayoncan
	name = "Spray-On Insulation"
	desc = "Portable. Effective. Dermatologically tested rubber."
	item = /obj/item/toy/sprayoncan

	price_min = 300
	price_max = 450
	stock_max = 4
	availability_prob = 45
