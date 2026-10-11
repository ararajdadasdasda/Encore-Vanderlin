/datum/job/garrisonsoldier //Amalgam of Man-at-Arms and City Watchmen.
	title = JOB_MAN_AT_ARMS
	alt_titles = list("Watchman")
	tutorial = "You are a member of the Garrison, the standing army of Etgard Keep. \
	You've proven yourself worthy to the Captain and now you've got yourself a salary... \
	as long as you keep the peace, that is. Serve the nobility and the town, and protect the confines of Old Doma. \
	Or, be a dirty corrupt guard who seeks to line their own pockets."
	department_flag = GARRISON
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_CITYWATCHMEN
	factions = list(FACTION_TOWN, SUB_FACTION_KEEP)
	total_positions = 99
	spawn_positions = 99
	bypass_lastclass = TRUE

	allowed_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD, AGE_IMMORTAL)
	allowed_races = RACES_LESS_DISCRIMINATED
	starting_wage = 30

	outfit = /datum/outfit/garrisonsoldier
	advclass_cat_rolls = list(CTAG_GARRISON = 20)
	give_bank_account = 30
	knows_the_town = TRUE
	known_by_the_town = TRUE
	cmode_music = 'sound/music/cmode/garrison/CombatGarrison.ogg'

	exp_type = list(EXP_TYPE_LIVING)
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)
	exp_requirements = list(
		EXP_TYPE_LIVING = 300
	)

/datum/job/garrisonsoldier/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	add_verb(spawned, /mob/proc/haltyell)

/datum/outfit/garrisonsoldier
	name = "Man-at-Arms Base"
	cloak = /obj/item/clothing/cloak/stabard/guard
	pants = /obj/item/clothing/pants/trou/leather/splint
	wrists = /obj/item/clothing/wrists/bracers/leather
	belt = /obj/item/storage/belt/leather/townguard
	gloves = /obj/item/clothing/gloves/leather

/datum/outfit/garrisonsoldier/pre_equip(mob/living/carbon/human/equipped_human, visuals_only)
	. = ..()
	if(equipped_human.dna && !(equipped_human.dna.species.id in RACES_PLAYER_NONDISCRIMINATED))
		mask = /obj/item/clothing/face/shepherd/clothmask

/datum/outfit/garrisonsoldier/post_equip(mob/living/carbon/human/H, visuals_only = FALSE)
	. = ..()
	if(H.cloak && !findtext(H.cloak.name, "([H.real_name])"))
		H.cloak.name = "[H.cloak.name] ([H.real_name])"

/datum/job/advclass/garrison
	exp_types_granted = list(EXP_TYPE_GARRISON, EXP_TYPE_COMBAT)
	factions = list(FACTION_TOWN, SUB_FACTION_KEEP)

/datum/attribute_holder/sheet/job/garrison/footman
	raw_attribute_list = list(
		STAT_STRENGTH = 2,
		STAT_ENDURANCE = 1,
		STAT_CONSTITUTION = 1,
		STAT_SPEED = -1,
		/datum/attribute/skill/combat/shields = 30,
		/datum/attribute/skill/combat/wrestling = 30,
		/datum/attribute/skill/combat/axesmaces = 20,
		/datum/attribute/skill/combat/swords = 20,
		/datum/attribute/skill/combat/unarmed = 20,
		/datum/attribute/skill/combat/polearms = 10,
		/datum/attribute/skill/combat/whipsflails = 10,
		/datum/attribute/skill/combat/knives = 10,
		/datum/attribute/skill/misc/climbing = 30,
		/datum/attribute/skill/misc/athletics = 30,
		/datum/attribute/skill/misc/swimming = 20,
		/datum/attribute/skill/misc/sneaking = 10,
		/datum/attribute/skill/craft/crafting = 10,
		/datum/attribute/skill/misc/reading = 10
	)

/datum/job/advclass/garrison/footman
	title = "Man-at-Arms Footman"
	tutorial = "You are a member of the Garrison. \
	You are well versed in holding the line with a shield while wielding a trusty sword, axe, or mace in the other hand."
	outfit = /datum/outfit/garrisonsoldier/footman
	category_tags = list(CTAG_GARRISON)

	attribute_sheet = /datum/attribute_holder/sheet/job/garrison/footman

	traits = list(
		TRAIT_MEDIUMARMOR,
	)
	mind_traits = list(TRAIT_KNOWBANDITS)

/datum/job/advclass/garrison/footman/on_roundstart(mob/living/carbon/human/spawned, client/player_client)
	. = ..()

	var/static/list/selectable = list( \
		"Sword" = list(/obj/item/weapon/scabbard/sword, /obj/item/weapon/sword/iron), \
		"Axe" = /obj/item/weapon/axe/iron, \
		"Mace" = /obj/item/weapon/mace, \
		"Flail" = /obj/item/weapon/flail/militia, \
		"Warhammer" = /obj/item/weapon/mace/warhammer, \
	)
	var/choice = spawned.select_equippable(player_client, selectable, message = "CHOOSE YOUR MAIN AND SIDE WEAPON", title = "FOOTMAN")
	switch(choice)
		if("Sword")
			spawned.adjust_skill_level(/datum/attribute/skill/combat/swords, 10)
		if("Axe", "Mace", "Warhammer")
			spawned.adjust_skill_level(/datum/attribute/skill/combat/axesmaces, 10)
		if("Flail")
			spawned.adjust_skill_level(/datum/attribute/skill/combat/whipsflails, 10)

/datum/outfit/garrisonsoldier/footman
	name = "Man-at-Arms Footman"
	head = /obj/item/clothing/head/helmet/townbarbute
	neck = /obj/item/clothing/neck/chaincoif/iron
	armor = /obj/item/clothing/armor/chainmail/hauberk/iron
	shirt = /obj/item/clothing/armor/gambeson
	shoes = /obj/item/clothing/shoes/boots/armor/ironmaille
	backr = /obj/item/weapon/shield/heater
	backl = /obj/item/storage/backpack/satchel
	beltl = /obj/item/weapon/mace/cudgel
	backpack_contents = list(
		/obj/item/rope/chain = 1,
		/obj/item/weapon/knife/dagger = 1,
		/obj/item/weapon/scabbard/knife = 1,
	)

/datum/attribute_holder/sheet/job/garrison/archer
	raw_attribute_list = list(
		STAT_PERCEPTION = 2,
		STAT_ENDURANCE = 1,
		STAT_SPEED = 2,
		STAT_STRENGTH = -1,
		/datum/attribute/skill/combat/bows = 30,
		/datum/attribute/skill/combat/crossbows = 30, // Because why not? If they somehow will get a crossbow, let them use it to the fullest.
		/datum/attribute/skill/combat/knives = 30,
		/datum/attribute/skill/combat/wrestling = 30,
		/datum/attribute/skill/combat/axesmaces = 20, // Just to be able to non-lethaly detain someone using a cugel
		/datum/attribute/skill/combat/unarmed = 20,
		/datum/attribute/skill/combat/swords = 10,
		/datum/attribute/skill/misc/swimming = 20,
		/datum/attribute/skill/misc/climbing = 40,
		/datum/attribute/skill/misc/athletics = 20,
		/datum/attribute/skill/misc/sneaking = 20,
		/datum/attribute/skill/craft/crafting = 10,
		/datum/attribute/skill/misc/reading = 10
	)

/datum/job/advclass/garrison/archer
	title = "Man-at-Arms Archer"
	tutorial = "You are a member of the Garrison. Your training with bows makes you a formidable threat when perched atop the walls or rooftops, raining arrows down upon foes with impunity."
	outfit = /datum/outfit/garrisonsoldier/archer
	category_tags = list(CTAG_GARRISON)

	attribute_sheet = /datum/attribute_holder/sheet/job/garrison/archer

	traits = list(
		TRAIT_DODGEEXPERT,
	)
	mind_traits = list(TRAIT_KNOWBANDITS)

/datum/outfit/garrisonsoldier/archer
	name = "Man-at-Arms Archer"
	head = /obj/item/clothing/head/helmet/townbarbute
	neck = /obj/item/clothing/neck/chaincoif/iron
	armor = /obj/item/clothing/armor/leather/splint
	shoes = /obj/item/clothing/shoes/boots/leather
	backr = /obj/item/gun/ballistic/bow
	backl = /obj/item/storage/backpack/satchel
	beltr = /obj/item/ammo_holder/quiver/arrows
	beltl = /obj/item/weapon/mace/cudgel
	backpack_contents = list(
		/obj/item/rope/chain = 1,
		/obj/item/weapon/knife/dagger = 1,
		/obj/item/weapon/scabbard/knife = 1,
	)

/datum/outfit/garrisonsoldier/archer/pre_equip(mob/living/carbon/human/equipped_human, visuals_only)
	. = ..()
	shirt = pick(/obj/item/clothing/shirt/undershirt/colored/guard, /obj/item/clothing/shirt/undershirt/colored/guardsecond)

/datum/attribute_holder/sheet/job/garrison/pikeman
	raw_attribute_list = list(
		STAT_STRENGTH = 2,
		STAT_ENDURANCE = 1,
		STAT_CONSTITUTION = 2,
		STAT_SPEED = -1,
		/datum/attribute/skill/combat/polearms = 30,
		/datum/attribute/skill/combat/swords = 20,
		/datum/attribute/skill/combat/axesmaces = 20,
		/datum/attribute/skill/combat/knives = 20,
		/datum/attribute/skill/combat/wrestling = 20,
		/datum/attribute/skill/combat/unarmed = 30,
		/datum/attribute/skill/misc/swimming = 20,
		/datum/attribute/skill/misc/climbing = 30,
		/datum/attribute/skill/misc/athletics = 30,
		/datum/attribute/skill/craft/crafting = 10,
		/datum/attribute/skill/misc/reading = 10
	)

/datum/job/advclass/garrison/pikeman
	title = "Man-at-Arms Pikeman"
	tutorial = "You are a pikeman within the Garrison. You are less fleet of foot compared to the rest, but you are burly and well practiced with spears, pikes, billhooks - all the various polearms for striking enemies from a distance."
	outfit = /datum/outfit/garrisonsoldier/pikeman
	category_tags = list(CTAG_GARRISON)

	attribute_sheet = /datum/attribute_holder/sheet/job/garrison/pikeman

	traits = list(
		TRAIT_MEDIUMARMOR,
	)
	mind_traits = list(TRAIT_KNOWBANDITS)

/datum/outfit/garrisonsoldier/pikeman
	name = "Man-at-Arms Pikeman"
	head = /obj/item/clothing/head/helmet/townbarbute
	armor = /obj/item/clothing/armor/chainmail/iron
	shirt = /obj/item/clothing/armor/gambeson/light
	neck = /obj/item/clothing/neck/chaincoif/iron
	shoes = /obj/item/clothing/shoes/boots/leather
	backl = /obj/item/storage/backpack/satchel
	backr = /obj/item/weapon/polearm/spear
	beltr = /obj/item/weapon/mace/cudgel
	backpack_contents = list(
		/obj/item/rope/chain = 1,
		/obj/item/weapon/knife/dagger = 1,
		/obj/item/weapon/scabbard/knife = 1,
	)

/mob/proc/haltyell()
	set name = "HALT!"
	set category = "Emotes.Noises"
	emote("haltyell")
