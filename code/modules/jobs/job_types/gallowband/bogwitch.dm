/datum/job/bogwitch/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()

	ADD_TRAIT(spawned, TRAIT_ANIMAL_PROTECTION, "bogwitch")
	spawned.apply_status_effect(/datum/status_effect/buff/bone_ward)

	var/holder = spawned.patron?.devotion_holder
	if(holder)
		var/datum/devotion/devotion = new holder()
		devotion.make_acolyte()
		devotion.grant_to(spawned)
