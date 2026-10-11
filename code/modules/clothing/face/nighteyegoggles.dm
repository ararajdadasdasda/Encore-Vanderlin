/obj/item/clothing/face/nighteyegoggles
	name = "nighteye goggles"
	icon_state = "nighteyegoggles"
	desc = "Protective goggles with bright lenses. Perfect for staring into the night."
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_MASK|ITEM_SLOT_HEAD
	body_parts_covered = EYES
	toggle_icon_state = TRUE
	adjustable = CAN_CADJUST
	item_weight = 95 GRAMS

/obj/item/clothing/face/nighteyegoggles/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = EYES
			REMOVE_TRAIT(user, TRAIT_DARKVISION, "[ref(src)]")
			user.update_sight()
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_wear_mask()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			ADD_TRAIT(user, TRAIT_DARKVISION, "[ref(src)]")
			user.update_sight()
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_wear_mask()
					H.update_inv_head()
		user.regenerate_clothes()

/obj/item/clothing/face/nighteyegoggles/dropped(mob/user)
	. = ..()
	REMOVE_TRAIT(user, TRAIT_DARKVISION, "[ref(src)]")
	user.update_sight()

/obj/item/clothing/face/nighteyegoggles/equipped(mob/user, slot)
	. = ..()
	if(slot & ITEM_SLOT_MASK)
		if(adjustable == CAN_CADJUST)
			ADD_TRAIT(user, TRAIT_DARKVISION, "[ref(src)]")
			user.update_sight()
