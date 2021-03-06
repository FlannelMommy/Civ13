/datum/job

	//The name of the job
	var/title = "generic job"
	//English meaning of this job's title, if applicable
	var/en_meaning = ""
	var/faction = "None"				  // Players will be allowed to spawn in as jobs that are set to "Human"

	var/total_positions = FALSE			   // How many players can be this job
	var/current_positions = FALSE			 // How many players have this job
	var/selection_color = "#ffffff"	   // Selection screen color
	var/head_position = FALSE				 // Is this position Command?
	var/minimum_character_age = FALSE
	var/ideal_character_age = 30
	//job equipment
	var/uniform = /obj/item/clothing/under/pirate1
	var/shoes = /obj/item/clothing/shoes/black
	var/hat = null
	var/suit = null
	var/gloves = null
	var/mask = null
	var/belt = null
	var/ear = null
	var/hand = null
	var/suit_store = null
	var/eyes = null
	var/shoulder = null

	var/list/backpacks = list(
		/obj/item/weapon/storage/backpack,
		/obj/item/weapon/storage/backpack/satchel
		)

	//This will be put in backpack. List ordered by priority!
	var/list/put_in_backpack = list()
	var/spawn_location = null

	var/uses_keys = TRUE

	var/enabled = TRUE

/datum/job/proc/give_random_name(var/mob/living/carbon/human/H)
	H.name = H.species.get_random_english_name(H.gender)
	H.real_name = H.name
	return FALSE

/datum/job/proc/get_keys()
	return list()

/datum/job/proc/equip(var/mob/living/carbon/human/H)
	if (!H)	return FALSE

	//Put items in hands
	if (hand) H.equip_to_slot_or_del(new hand (H), slot_l_hand)

	//Survival equipment


	//No-check items (suits, gloves, etc)
	if (ear)			H.equip_to_slot_or_del(new ear (H), slot_l_ear)
	if (shoes)		H.equip_to_slot_or_del(new shoes (H), slot_shoes)
	if (uniform)		H.equip_to_slot_or_del(new uniform (H), slot_w_uniform)
	if (suit)		H.equip_to_slot_or_del(new suit (H), slot_wear_suit)
	if (mask)		H.equip_to_slot_or_del(new mask (H), slot_wear_mask)
	if (hat)			H.equip_to_slot_or_del(new hat (H), slot_head)
	if (gloves)		H.equip_to_slot_or_del(new gloves (H), slot_gloves)
	if (belt)		H.equip_to_slot_or_del(new belt (H), slot_belt)
	if (eyes)		H.equip_to_slot_or_del(new eyes (H), slot_eyes)
	if (shoulder)	H.equip_to_slot_or_del(new shoulder (H), slot_shoulder)
	if (!H.back || !istype(H.back, /obj/item/weapon/storage/backpack))
		var/list/slots = list( slot_belt, slot_r_store, slot_l_store, slot_r_hand, slot_l_hand )
		for ( var/path in put_in_backpack )
			if ( !slots.len ) break
			var/obj/item/I = new path(H)
			for ( var/slot in slots )
				if ( H.equip_to_slot_if_possible(I, slot, FALSE, TRUE, FALSE) )
					slots -= slot
					break
			if (istype(H.r_hand,/obj/item/weapon/storage))
				new path(H.r_hand)
			else if (istype(H.l_hand, /obj/item/weapon/storage))
				new path(H.l_hand)

	update_character(H)

	return TRUE

/datum/job/proc/update_character(var/mob/living/carbon/human/H)
	return TRUE

/datum/job/proc/get_access()
	return list()

//If the configuration option is set to require players to be logged as old enough to play certain jobs, then this proc checks that they are, otherwise it just returns TRUE
/datum/job/proc/player_old_enough(client/C)
	return (available_in_days(C) == FALSE) //Available in FALSE days = available right now = player is old enough to play.

/datum/job/proc/available_in_days(client/C)
	return FALSE

/datum/job/proc/apply_fingerprints(var/mob/living/carbon/human/target)
	if (!istype(target))
		return FALSE
	for (var/obj/item/item in target.contents)
		apply_fingerprints_to_item(target, item)
	return TRUE

/datum/job/proc/apply_fingerprints_to_item(var/mob/living/carbon/human/holder, var/obj/item/item)
	item.add_fingerprint(holder,1)
	if (item.contents.len)
		for (var/obj/item/sub_item in item.contents)
			apply_fingerprints_to_item(holder, sub_item)

/datum/job/proc/is_position_available(var/list/restricted_choices, var/list/people_in_join_queue)
	if ((!restricted_choices || restricted_choices.len == 0) && (!people_in_join_queue || people_in_join_queue.len == FALSE))
		return (current_positions < total_positions) || (total_positions == -1)
	else
		var/subtract_positions = 0
		for (var/_title in restricted_choices)
			if (_title == title)
				subtract_positions++
		for (var/mob/new_player/player in people_in_join_queue)
			if (player.desired_job == title)
				subtract_positions++

		if (total_positions == -1)
			return TRUE
		else
			return (current_positions-subtract_positions < total_positions)