/*Index*/ // For reference 'Industrial' represents the 1850's onwards
/* 1 - Industrial Headpieces
   2 - Industrial Accessories
   3 - Industrial Uniforms
   4 - Industrial Suits
   5 - Industrial Boots*/

/* Industrial Headpieces*/

/obj/item/clothing/head/bowler_hat
	name = "bowler hat"
	desc = "A round bowler hat."
	icon_state = "bowler_hat"
	item_state = "bowler_hat"

/obj/item/clothing/head/cowboyhat
	name = "cowboy hat"
	desc = "a curved leather hat."
	icon_state = "cowboy"
	item_state = "cowboy"

/obj/item/clothing/head/cowboyhat2
	name = "dark cowboy hat"
	desc = "a grayish, curved leather hat."
	icon_state = "cowboy2"
	item_state = "cowboy2"

/obj/item/clothing/head/vaquerohat
	name = "vaquero hat"
	desc = "a wide brimmed hat with a feather in the top, favored by mexican cowboys."
	icon_state = "vaquerohat"
	item_state = "vaquerohat"

/obj/item/clothing/head/bandit
	name = "bandit hat"
	desc = "a dark and long brimmed cowboy hat with a grim presence."
	icon_state = "bandit"
	item_state = "bandit"

/obj/item/clothing/head/unionhat
	name = "dark union hat"
	desc = "a dark, slouched leather hat worn commonly by union soldiers."
	icon_state = "union_hat"
	item_state = "union_hat"

/obj/item/clothing/head/unionhatlight
	name = "light union hat"
	desc = "a light, slouched leather hat worn commonly by union soldiers."
	icon_state = "union_hat2"
	item_state = "union_hat2"

/obj/item/clothing/head/confederatehat
	name = "grey confederate hat"
	desc = "a grey, slouched leather hat worn commonly by confederate soldiers."
	icon_state = "confederate_hat"
	item_state = "confederate_hat"

/obj/item/clothing/head/unioncap
	name = "union Cap"
	desc = "A cap worn by union soldiers."
	icon_state = "union_cap"
	item_state = "union_cap"
	var/adjusted = FALSE

/obj/item/clothing/head/unioncap/verb/adjust_band()
	set category = null
	set src in usr
	if (type != /obj/item/clothing/head/unioncap)
		return
	else
		if (adjusted)
			item_state = "union_cap"
			worn_state = "union_cap"
			item_state_slots["slot_head"] = "union_cap"
			usr << "<span class = 'danger'>you adjust your cap's band.</span>"
			adjusted = FALSE
		else if (!adjusted)
			item_state = "union_capad"
			worn_state = "union_capad"
			item_state_slots["slot_head"] = "union_capad"
			usr << "<span class = 'danger'>you adjust your cap's band.</span>"
			adjusted = TRUE
	update_clothing_icon()

/obj/item/clothing/head/confederatecap
	name = "confederate cap"
	desc = "A cap worn by confederate soldiers."
	icon_state = "confederate_cap"
	item_state = "confederate_cap"
	var/adjusted = FALSE

/obj/item/clothing/head/confederatecap/verb/adjust_band()
	set category = null
	set src in usr
	if (type != /obj/item/clothing/head/confederatecap)
		return
	else
		if (adjusted)
			item_state = "confederate_cap"
			worn_state = "confederate_cap"
			item_state_slots["slot_head"] = "confederate_cap"
			usr << "<span class = 'danger'>you adjust your cap's band.</span>"
			adjusted = FALSE
		else if (!adjusted)
			item_state = "confederate_capad"
			worn_state = "confederate_capad"
			item_state_slots["slot_head"] = "confederate_capad"
			usr << "<span class = 'danger'>you adjust your cap's band.</span>"
			adjusted = TRUE
	update_clothing_icon()


/obj/item/clothing/head/sombrero
	name = "cowboy hat"
	desc = "Ay caramba!"
	icon_state = "sombrero"
	item_state = "sombrero"
/* Industrial Accessories & Items*/

/obj/item/clothing/accessory/armband/blue_scarf
	name = "blue scarf"
	desc = "A light cotton scarf, in blue."
	icon_state = "british_scarf"
	item_state = "british_scarf"
	slot = "decor"

/obj/item/clothing/accessory/armband/grey_scarf
	name = "grey scarf"
	desc = "A light cotton scarf, in grey."
	icon_state = "grey_scarf"
	item_state = "grey_scarf"
	slot = "decor"

/obj/item/clothing/accessory/armband/red_scarf
	name = "red scarf"
	desc = "A light cotton scarf, in red."
	icon_state = "red_scarf"
	item_state = "red_scarf"
	slot = "decor"

/obj/item/clothing/accessory/armband/yellow_scarf
	name = "yellow scarf"
	desc = "A light cotton scarf, in yellow."
	icon_state = "yellow_scarf"
	item_state = "yellow_scarf"
	slot = "decor"

/obj/item/clothing/accessory/armband/suspenders1
	name = "suspenders"
	desc = "Leather suspenders."
	icon_state = "suspenders1"
	item_state = "suspenders1"
	slot = "sash"

/obj/item/clothing/accessory/armband/suspenders2
	name = "dark suspenders"
	desc = "Dark leather suspenders."
	icon_state = "suspenders2"
	item_state = "suspenders2"
	slot = "sash"

/obj/item/weapon/watch/pocket
	name = "pocket watch"
	desc = "Used to check the time."
	icon = 'icons/obj/device.dmi'
	icon_state = "pocketwatch"
	item_state = "pocketwatch"
	flammable = FALSE
	density = FALSE
	opacity = FALSE
	slot_flags = SLOT_ID | SLOT_POCKET
	w_class = 1
	force = WEAPON_FORCE_WEAK
	throwforce = WEAPON_FORCE_HARMLESS
	icon_override = TRUE

/obj/item/weapon/watch/pocket/attack_self(var/mob/living/L)
	L << "<big>It is now [clock_time()].</big>"
	return

/* Industrial Uniforms*/

/obj/item/clothing/under/industrial1
	name = "pioneer outfit"
	desc = "A red shirt with leather trousers, commonly used among pioneers."
	icon_state = "pioneer_outfit"
	item_state = "pioneer_outfit"
	worn_state = "pioneer_outfit"

/obj/item/clothing/under/industrial2
	name = "rancher outfit"
	desc = "A blue shirt with light beige trousers."
	icon_state = "rancher_outfit"
	item_state = "rancher_outfit"
	worn_state = "rancher_outfit"

/obj/item/clothing/under/industrial3
	name = "cowboy outfit"
	desc = "A white shirt with leather trousers, worn among cowboys and ranchers."
	icon_state = "cowboy_outfit"
	item_state = "cowboy_outfit"
	worn_state = "cowboy_outfit"

/obj/item/clothing/under/industrial4
	name = "checkered outfit"
	desc = "A red-and-white checkered shirt and light beige trousers."
	icon_state = "checkered_outfit"
	item_state = "checkered_outfit"
	worn_state = "checkered_outfit"

/obj/item/clothing/under/industrial5
	name = "worker outfit"
	desc = "A navy blue shirt with denim trousers."
	icon_state = "worker_outfit"
	item_state = "worker_outfit"
	worn_state = "worker_outfit"

/obj/item/clothing/under/bartender
	name = "bartender Outfit"
	desc = "A stilish bartender outfit."
	icon_state = "bartender"
	item_state = "bartender"
	worn_state = "bartender"

/obj/item/clothing/under/union_uniform
	name = "union uniform"
	desc = "A blue uniform worn by union soldiers."
	icon_state = "union_uniform"
	item_state = "union_uniform"
	worn_state = "union_uniform"

obj/item/clothing/under/confederate_uniform/grey
	name = "confederate uniform"
	desc = "A grey uniform worn by confederate soldiers."
	icon_state = "confederate_uniform1"
	item_state = "confederate_uniform1"
	worn_state = "confederate_uniform1"
	colorn = 1
	specific = TRUE

obj/item/clothing/under/confederate_uniform/grey_blue
	name = "confederate uniform"
	desc = "A grey uniform worn by confederate soldiers, however this one has union pants."
	icon_state = "confederate_uniform2"
	item_state = "confederate_uniform2"
	worn_state = "confederate_uniform2"
	colorn = 2
	specific = TRUE

/obj/item/clothing/under/confederate_uniform
	name = "confederate uniform"
	desc = "A grey uniform worn by confederate soldiers."
	icon_state = "confederate_uniform1"
	item_state = "confederate_uniform1"
	worn_state = "confederate_uniform1"
	value = 70
	var/colorn = 1
	var/specific = FALSE

obj/item/clothing/under/confederate_uniform/New()
	..()
	if (!specific)
		colorn = pick(1,2)
		icon_state = "confederate_uniform[colorn]"
		item_state = "confederate_uniform[colorn]"
		worn_state = "confederate_uniform[colorn]"

/* Industrial Suits */

/obj/item/clothing/suit/storage/jacket/leatherovercoat1
	name = "leather overcoat"
	desc = "A long leather overcoat."
	icon_state = "leather_overcoat"
	item_state = "leather_overcoat"
	worn_state = "leather_overcoat"

/obj/item/clothing/suit/storage/jacket/leatherovercoat2
	name = "black leather overcoat"
	desc = "A long black leather overcoat."
	icon_state = "black_leather_overcoat"
	item_state = "black_leather_overcoat"
	worn_state = "black_leather_overcoat"

/obj/item/clothing/suit/storage/jacket/blackvest
	name = "black vest"
	desc = "A simple black vest."
	icon_state = "blackvest"
	item_state = "blackvest"
	worn_state = "blackvest"

/obj/item/clothing/suit/storage/jacket/olivevest
	name = "olive vest"
	desc = "A simple olive vest."
	icon_state = "olivevest"
	item_state = "olivevest"
	worn_state = "olivevest"

/obj/item/clothing/suit/storage/jacket/bluevest
	name = "blue vest"
	desc = "A simple blue vest."
	icon_state = "bluevest"
	item_state = "bluevest"
	worn_state = "bluevest"

/* Industrial Boots*/

/obj/item/clothing/shoes/riding1
	name = "black riding boots"
	desc = "Black leather boots with spurs, perfect for riding."
	icon_state = "cowboyboots1"
	item_state = "cowboyboots1"
	worn_state = "cowboyboots1"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 70, arrow = 40, gun = FALSE, energy = 25, bomb = 50, bio = 10, rad = 25)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/obj/item/clothing/shoes/riding2
	name = "leather riding boots"
	desc = "Leather boots with spurs, perfect for riding."
	icon_state = "cowboyboots2"
	item_state = "cowboyboots2"
	worn_state = "cowboyboots2"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 70, arrow = 40, gun = FALSE, energy = 25, bomb = 50, bio = 10, rad = 25)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/obj/item/clothing/shoes/riding1/gator_cowboy
	name = "alligator scale riding boots"
	desc = "Alligator scale patterned boots with spurs, perfect for riding in style."
	icon_state = "gator_cowboy"
	item_state = "gator_cowboy"
	worn_state = "gator_cowboy"

/obj/item/clothing/shoes/gator_ankleboots
	name = "alligator scale ankle boots"
	desc = "Classy alligator scale ankle-length boots, a certain statement for fashion."
	icon_state = "gator_ankleboots"
	item_state = "gator_ankleboots"
	worn_state = "gator_ankleboots"
	force = WEAPON_FORCE_WEAK
	armor = list(melee = 50, arrow = 30, gun = FALSE, energy = 20, bomb = 40, bio = 10, rad = 20)
	item_flags = NOSLIP
	siemens_coefficient = 0.6

/* Industrial Coats*/

/obj/item/clothing/suit/storage/coat/kozhanka
	name = "fur coat"
	desc = "A thick fur coat, great for the winter."
	icon_state = "kozhanka"
	item_state = "kozhanka"
	worn_state = "kozhanka"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT
	armor = list(melee = 10, arrow = 0, gun = FALSE, energy = 15, bomb = 5, bio = 30, rad = 30)
	value = 65
	var/colorn = 1
	var/specific = FALSE
	flags_inv = BLOCKHEADHAIR
	specific = TRUE
/obj/item/clothing/suit/storage/coat/kozhanka/New()
	..()
	if (!specific)
		colorn = pick(1,2,)
		icon_state = "kozhanka"
		item_state = "kozhanka"
		worn_state = "kozhanka"

/obj/item/clothing/suit/storage/coat/kozhanka/verb/toggle_hood()
	set category = null
	set src in usr
	set name = "Toggle Hood"
	if (hood)
		icon_state = "kozhanka"
		item_state = "kozhanka"
		worn_state = "kozhanka"
		body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
		cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT
		item_state_slots["slot_wear_suit"] = "kozhanka[colorn]"
		usr << "<span class = 'danger'>You take off your coat's hood.</span>"
		update_icon()
		hood = FALSE
		usr.update_inv_head(1)
		usr.update_inv_wear_suit(1)
		return
	else if (!hood)
		icon_state = "kozhankah"
		item_state = "kozhankah"
		worn_state = "kozhankah"
		body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
		cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT|HEAD
		item_state_slots["slot_wear_suit"] = "kozhankah[colorn]"
		usr << "<span class = 'danger'>You cover your head with your coat's hood.</span>"
		update_icon()
		hood = TRUE
		usr.update_inv_head(1)
		usr.update_inv_wear_suit(1)
		return

/obj/item/clothing/suit/storage/coat/kozhanka/white
	name = "white fur coat"
	desc = "A thick white fur coat, great for the winter."
	icon_state = "kozhanka_w"
	item_state = "kozhanka_w"
	worn_state = "kozhanka_w"
	specific = TRUE
	colorn = 2

/obj/item/clothing/suit/storage/coat/monk_robes
	name = "monk robes"
	desc = "Robes commonly worn by monks, warm in the winters."
	icon_state = "kozhanka"
	item_state = "kozhanka"
	worn_state = "kozhanka"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT
	armor = list(melee = 10, arrow = 0, gun = FALSE, energy = 15, bomb = 5, bio = 30, rad = 30)
	value = 65
	flags_inv = BLOCKHEADHAIR
/obj/item/clothing/suit/storage/coat/monk_robes/verb/toggle_hood()
	set category = null
	set src in usr
	set name = "Toggle Hood"
	if (hood)
		icon_state = "monk_robes"
		item_state = "monk_robes"
		worn_state = "monk_robes"
		body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
		cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT
		item_state_slots["slot_wear_suit"] = "monk_robes"
		usr << "<span class = 'danger'>you take off your robes' hood.</span>"
		update_icon()
		hood = FALSE
		usr.update_inv_head(1)
		usr.update_inv_wear_suit(1)
		return
	else if (!hood)
		icon_state = "monk_robes_hood"
		item_state = "monk_robes_hood"
		worn_state = "monk_robes_hood"
		body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
		cold_protection = UPPER_TORSO|LOWER_TORSO|LEG_LEFT|LEG_RIGHT|ARM_LEFT|ARM_RIGHT|HEAD
		item_state_slots["slot_wear_suit"] = "monk_robes_hood"
		usr << "<span class = 'danger'>you cover your head with your robes' hood.</span>"
		update_icon()
		hood = TRUE
		usr.update_inv_head(1)
		usr.update_inv_wear_suit(1)
		return


/obj/item/clothing/accessory/storage/webbing/civil_war
	name = "cartirdge rigging"
	desc = "A rig of cases for ammo and a bayonet."
	icon_state = "civil_war"
	item_state = "civil_war"
	slots = 13

/obj/item/clothing/accessory/storage/webbing/civil_war/full
	slots = 13
/obj/item/clothing/accessory/storage/webbing/civil_war/full/New()
	..()
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/ammo_casing/musketball(src)
	new/obj/item/weapon/attachment/bayonet(src)

/obj/item/clothing/accessory/storage/webbing/civil_war/officer/full
	slots = 13
/obj/item/clothing/accessory/storage/webbing/civil_war/officer/full/New()
	..()
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/ammo_casing/musketball_pistol(src)
	new/obj/item/weapon/gun/projectile/capnball/dragoon(src)
