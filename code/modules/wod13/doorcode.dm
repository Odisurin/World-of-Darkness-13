#define LOCKDIFFICULTY_1 2
#define LOCKTIMER_1 17
#define LOCKDIFFICULTY_2 4
#define LOCKTIMER_2 20
#define LOCKDIFFICULTY_3 6
#define LOCKTIMER_3 22
#define LOCKDIFFICULTY_4 8
#define LOCKTIMER_4 24
#define LOCKDIFFICULTY_5 10
#define LOCKTIMER_5 26
#define LOCKDIFFICULTY_6 11 //originally should have been 10, but that wouldn't work unless locktimer is explicitly declared beforehand, which it won't be
#define LOCKTIMER_6 28
#define LOCKDIFFICULTY_7 12
#define LOCKTIMER_7 30

/obj/item/vamp/keys
	name = "\improper keys"
	desc = "Those can open some doors."
	icon = 'code/modules/wod13/items.dmi'
	icon_state = "keys"
	item_flags = NOBLUDGEON
	w_class = WEIGHT_CLASS_TINY
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	onflooricon = 'code/modules/wod13/onfloor.dmi'

	var/list/accesslocks = list(
		"nothing"
	)
	var/roundstart_fix = FALSE

/obj/item/vamp/keys/camarilla
	name = "Camarilla keys"
	accesslocks = list("camarilla")
	color = "#bd3327"

/obj/item/vamp/keys/prince
	name = "Prince's keys"
	accesslocks = list(
		"camarilla",
		"prince",
		"clerk",
		"archive",
		"milleniumCommon"
	)
	color = "#bd3327"

/obj/item/vamp/keys/sheriff
	name = "Sheriff's keys"
	accesslocks = list(
		"camarilla",
		"prince",
		"archive",
		"milleniumCommon"
	)
	color = "#bd3327"

/obj/item/vamp/keys/clerk
	name = "Clerk's keys"
	accesslocks = list(
		"camarilla",
		"clerk",
		"archive",
		"milleniumCommon"
	)
	color = "#bd3327"

/obj/item/vamp/keys/camarilla
	name = "Millenium Tower keys"
	accesslocks = list(
		"milleniumCommon",
		"clerk",
		"camarilla"
	)

/obj/item/vamp/keys/graveyard
	name = "Graveyard keys"
	accesslocks = list(
		"graveyard"
	)

/obj/item/vamp/keys/clinic
	name = "Clinic keys"
	accesslocks = list(
		"clinic"
	)

/obj/item/vamp/keys/cleaning
	name = "Cleaning keys"
	accesslocks = list(
		"cleaning"
	)

/obj/item/vamp/keys/church
	name = "Church keys"
	accesslocks = list(
		"church"
	)

/obj/item/vamp/keys/archive
	name = "Archive keys"
	accesslocks = list(
		"archive"
	)

/obj/item/vamp/keys/anarch
	name = "Anarch keys"
	accesslocks = list(
		"anarch"
	)
	color = "#434343"

/obj/item/vamp/keys/bar
	name = "Barkeeper keys"
	accesslocks = list(
		"bar",
		"anarch",
	)
	color = "#434343"

/obj/item/vamp/keys/supply
	name = "Supply keys"
	accesslocks = list(
		"supply"
	)
	color = "#434343"

/obj/item/vamp/keys/npc
	name = "Some keys"
	accesslocks = list(
		"npc"
	)

/obj/item/vamp/keys/npc/Initialize()
	. = ..()
	accesslocks = list(
		"npc[rand(1, 20)]"
	)

/obj/item/vamp/keys/npc/fix
	roundstart_fix = TRUE

/obj/item/vamp/keys/police
	name = "Police keys"
	accesslocks = list(
		"police"
	)

/obj/item/vamp/keys/strip
	name = "Strip keys"
	accesslocks = list(
		"strip"
	)

/obj/item/vamp/keys/giovanni
	name = "Mafia keys"
	accesslocks = list(
		"giovanni",
		"bianchiBank"
	)

/obj/item/vamp/keys/taxi
	name = "Taxi keys"
	accesslocks = list(
		"taxi"
	)
	color = "#fffb8b"

/obj/item/vamp/keys/baali
	name = "Satanic keys"
	accesslocks = list(
		"baali"
	)

/obj/item/vamp/keys/daughters
	name = "Eclectic keys"
	accesslocks = list(
		"daughters"
	)

/obj/item/vamp/keys/salubri
	name = "Conspiracy keys"
	accesslocks = list(
		"salubri"
	)

/obj/item/vamp/keys/old_clan_tzimisce
	name = "Regal keys"
	accesslocks = list(
		"old_clan_tzimisce"
	)

/obj/item/vamp/keys/malkav
	name = "Insane keys"
	accesslocks = list(
		"malkav"
	)
	color = "#8cc4ff"

/obj/item/vamp/keys/malkav/primogen
	name = "Really insane keys"
	accesslocks = list(
		"primMalkav",
		"malkav"
	)
	color = "#2c92ff"

/obj/item/vamp/keys/toreador
	name = "Sexy keys"
	accesslocks = list(
		"toreador"
	)
	color = "#ffa7e6"

/obj/item/vamp/keys/toreador/primogen
	name = "Really sexy keys"
	accesslocks = list(
		"primToreador",
		"toreador"
	)
	color = "#ff2fc4"

/obj/item/vamp/keys/nosferatu
	name = "Ugly keys"
	accesslocks = list(
		"nosferatu"
	)
	color = "#93bc8e"

/obj/item/vamp/keys/nosferatu/primogen
	name = "Really ugly keys"
	accesslocks = list(
		"primNosferatu",
		"nosferatu"
	)
	color = "#367c31"

/obj/item/vamp/keys/brujah
	name = "Punk keys"
	accesslocks = list(
		"brujah"
	)
	color = "#ecb586"

/obj/item/vamp/keys/brujah/primogen
	name = "Really punk keys"
	accesslocks = list(
		"primBrujah",
		"brujah"
	)
	color = "#ec8f3e"

/obj/item/vamp/keys/ventrue
	name = "Businessy keys"
	accesslocks = list(
		"ventrue",
		"milleniumCommon"
	)
	color = "#f6ffa7"

/obj/item/vamp/keys/ventrue/primogen
	name = "Really businessy keys"
	accesslocks = list(
		"primVentrue",
		"ventrue",
		"milleniumCommon"
	)
	color = "#e8ff29"

/obj/item/vamp/keys/triads
	name = "Rusty keys"
	accesslocks = list(
		"triad",
		"laundromat"
	)

/obj/item/vamp/keys/hack
	name = "\improper lockpick"
	desc = "These can open some doors. Illegally..."
	icon_state = "hack"

/obj/structure/vampdoor
	name = "\improper door"
	desc = "It opens and closes."
	icon = 'code/modules/wod13/doors.dmi'
	icon_state = "door-1"
	plane = GAME_PLANE
	layer = ABOVE_ALL_MOB_LAYER
	pixel_w = -16
	anchored = TRUE
	density = TRUE
	opacity = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

	var/baseicon = "door"

	var/closed = TRUE
	var/locked = FALSE
	var/lock_id = "nothing"
	var/glass = FALSE
	var/hacking = FALSE
	var/lockpick_timer = 17 //[Lucifernix] - Never have the lockpick timer lower than 7. At 7 it will unlock instantly!!
	var/lockpick_difficulty = 2

	var/open_sound = 'code/modules/wod13/sounds/door_open.ogg'
	var/close_sound = 'code/modules/wod13/sounds/door_close.ogg'
	var/lock_sound = 'code/modules/wod13/sounds/door_locked.ogg'
	var/burnable = FALSE

/obj/structure/vampdoor/New()
	..()

	switch(lockpick_difficulty)
		if(LOCKDIFFICULTY_1)
			desc = "This door is really simple. Anyone could try to lockpick it."
			lockpick_timer = LOCKTIMER_1

		if(LOCKDIFFICULTY_2)
			desc = "This door is mildly complicated. It wouldn't be hard to lockpick."
			lockpick_timer = LOCKTIMER_2

		if(LOCKDIFFICULTY_3)
			desc = "This door looks complicated. It would be slightly difficult to lockpick."
			lockpick_timer = LOCKTIMER_3

		if(LOCKDIFFICULTY_4)
			desc = "This door looks rather complicated. It would be difficult to lockpick."
			lockpick_timer = LOCKTIMER_4

		if(LOCKDIFFICULTY_5)
			desc = "This door looks very complicated. It would be very difficult to lockpick."
			lockpick_timer = LOCKTIMER_5

		if(LOCKDIFFICULTY_6)
			desc = "This door looks extremely complicated. It would require a master to lockpick."
			lockpick_timer = LOCKTIMER_6

		if(LOCKDIFFICULTY_7)
			desc = "This door looks legendarily complex. Is it even possible to lockpick it?"
			lockpick_timer = LOCKTIMER_7


/obj/structure/vampdoor/attack_hand(mob/user)
	. = ..()
	var/mob/living/N = user
	if(locked)
		if(N.a_intent != INTENT_HARM)
			playsound(src, lock_sound, 75, TRUE)
			to_chat(user, "<span class='warning'>[src] is locked!</span>")
		else
			if(ishuman(user))
				var/mob/living/carbon/human/H = user
				if(H.potential > 0)
					if((H.potential * 2) >= lockpick_difficulty)
						playsound(get_turf(src), 'code/modules/wod13/sounds/get_bent.ogg', 100, FALSE)
						var/obj/item/shield/door/D = new(get_turf(src))
						D.icon_state = baseicon
						var/atom/throw_target = get_edge_target_turf(src, user.dir)
						D.throw_at(throw_target, rand(2, 4), 4, user)
						qdel(src)
					else
						pixel_z = pixel_z+rand(-1, 1)
						pixel_w = pixel_w+rand(-1, 1)
						playsound(get_turf(src), 'code/modules/wod13/sounds/get_bent.ogg', 50, TRUE)
						to_chat(user, "<span class='warning'>[src] is locked, and you aren't strong enough to break it down!</span>")
						spawn(2)
							pixel_z = initial(pixel_z)
							pixel_w = initial(pixel_w)
				else
					pixel_z = pixel_z+rand(-1, 1)
					pixel_w = pixel_w+rand(-1, 1)
					playsound(src, 'code/modules/wod13/sounds/knock.ogg', 75, TRUE)
					to_chat(user, "<span class='warning'>[src] is locked!</span>")
					spawn(2)
						pixel_z = initial(pixel_z)
						pixel_w = initial(pixel_w)
		return

	if(closed)
		playsound(src, open_sound, 75, TRUE)
		icon_state = "[baseicon]-0"
		density = FALSE
		opacity = FALSE
		layer = OPEN_DOOR_LAYER
		to_chat(user, "<span class='notice'>You open [src].</span>")
		closed = FALSE
	else
		for(var/mob/living/L in src.loc)
			if(L)
				playsound(src, lock_sound, 75, TRUE)
				to_chat(user, "<span class='warning'>[L] is preventing you from closing [src].</span>")
				return
		playsound(src, close_sound, 75, TRUE)
		icon_state = "[baseicon]-1"
		density = TRUE
		if(!glass)
			opacity = TRUE
		layer = ABOVE_ALL_MOB_LAYER
		to_chat(user, "<span class='notice'>You close [src].</span>")
		closed = TRUE

/obj/structure/vampdoor/attackby(obj/item/W, mob/living/user, params)
	if(istype(W, /obj/item/vamp/keys/hack))
		if(locked)
			hacking = TRUE
			playsound(src, 'code/modules/wod13/sounds/hack.ogg', 100, TRUE)
			for(var/mob/living/carbon/human/npc/police/P in oviewers(7, src))
				if(P)
					P.Aggro(user)
			if(do_mob(user, src, (lockpick_timer-user.lockpicking*2) SECONDS))
				var/roll = rand(1, 20) + (user.lockpicking*2+user.dexterity) - lockpick_difficulty
				if(roll <=1)
					to_chat(user, "<span class='warning'>Your lockpick broke!</span>")
					qdel(W)
					hacking = FALSE
				if(roll >=10)
					to_chat(user, "<span class='notice'>You pick the lock.</span>")
					locked = FALSE
					hacking = FALSE
					return

				else
					to_chat(user, "<span class='warning'>You failed to pick the lock.</span>")
					hacking = FALSE
					return
			else
				to_chat(user, "<span class='warning'>You failed to pick the lock.</span>")
				hacking = FALSE
				return
		else
			if (closed) //yes, this is a thing you can extremely easily do in real life
				to_chat(user, "<span class='notice'>You re-lock the door with your lockpick.</span>")
				locked = TRUE
				playsound(src, 'code/modules/wod13/sounds/hack.ogg', 100, TRUE)
				return
	else if(istype(W, /obj/item/vamp/keys))
		var/obj/item/vamp/keys/KEY = W
		if(KEY.roundstart_fix)
			lock_id = pick(KEY.accesslocks)
			KEY.roundstart_fix = FALSE
		if(KEY.accesslocks)
			for(var/i in KEY.accesslocks)
				if(i == lock_id)
					if(!locked)
						playsound(src, lock_sound, 75, TRUE)
						to_chat(user, "[src] is now locked.")
						locked = TRUE
					else
						playsound(src, lock_sound, 75, TRUE)
						to_chat(user, "[src] is now unlocked.")
						locked = FALSE


/obj/structure/vampdoor/old
	icon_state = "old-1"
	baseicon = "old"

/obj/structure/vampdoor/simple
	icon_state = "cam-1"
	baseicon = "cam"

/obj/structure/vampdoor/reinf
	icon_state = "reinf-1"
	baseicon = "reinf"

/obj/structure/vampdoor/prison
	icon_state = "prison-1"
	opacity = FALSE
	baseicon = "prison"
	glass = TRUE
	lockpick_difficulty = 12

/obj/structure/vampdoor/wood
	icon_state = "wood-1"
	baseicon = "wood"
	burnable = TRUE

/obj/structure/vampdoor/wood/old
	icon_state = "oldwood-1"
	baseicon = "oldwood"

/obj/structure/vampdoor/glass
	icon_state = "glass-1"
	opacity = FALSE
	baseicon = "glass"
	glass = TRUE
	burnable = TRUE

/obj/structure/vampdoor/shop
	icon_state = "shop-1"
	opacity = FALSE
	baseicon = "shop"
	glass = TRUE
	lockpick_difficulty = 10

/obj/structure/vampdoor/camarilla
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "camarilla"
	lockpick_difficulty = 8

/obj/structure/vampdoor/clerk
	icon_state = "shop-1"
	opacity = FALSE
	baseicon = "shop"
	glass = TRUE
	locked = TRUE
	lock_id = "clerk"
	lockpick_difficulty = 10

/obj/structure/vampdoor/prince
	icon_state = "glass-1"
	opacity = FALSE
	baseicon = "glass"
	glass = TRUE
	locked = TRUE
	lock_id = "prince"
	burnable = TRUE
	lockpick_difficulty = 10

/obj/structure/vampdoor/daughters
	icon_state = "wood-1"
	baseicon = "wood"
	locked = TRUE
	lock_id = "daughters"
	burnable = TRUE
	lockpick_difficulty = 10

/obj/structure/vampdoor/graveyard
	icon_state = "oldwood-1"
	baseicon = "oldwood"
	locked = TRUE
	lock_id = "graveyard"
	burnable = TRUE
	lockpick_difficulty = 2

/obj/structure/vampdoor/church
	icon_state = "oldwood-1"
	baseicon = "oldwood"
	locked = TRUE
	lock_id = "church"
	burnable = TRUE
	lockpick_difficulty = 10

/obj/structure/vampdoor/clinic
	icon_state = "shop-1"
	opacity = FALSE
	baseicon = "shop"
	glass = TRUE
	locked = TRUE
	lock_id = "clinic"
	lockpick_difficulty = 4

/obj/structure/vampdoor/cleaning
	icon_state = "reinf-1"
	baseicon = "reinf"
	locked = TRUE
	lock_id = "cleaning"
	lockpick_difficulty = 4

/obj/structure/vampdoor/archive
	icon_state = "old-1"
	baseicon = "old"
	locked = TRUE
	lock_id = "archive"
	lockpick_difficulty = 10

/obj/structure/vampdoor/anarch
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "anarch"
	lockpick_difficulty = 10

/obj/structure/vampdoor/bar
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "bar"
	lockpick_difficulty = 10

/obj/structure/vampdoor/supply
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "supply"
	lockpick_difficulty = 8

/obj/structure/vampdoor/npc
	icon_state = "wood-1"
	baseicon = "wood"
	locked = TRUE
	lock_id = "npc"
	burnable = TRUE
	lockpick_difficulty = 4

/obj/structure/vampdoor/police
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "police"
	lockpick_difficulty = 6

/obj/structure/vampdoor/prison
	icon_state = "prison-1"
	baseicon = "prison"
	locked = TRUE
	glass = TRUE
	lock_id = "police"
	lockpick_difficulty = 6

/obj/structure/vampdoor/strip
	icon_state = "cam-1"
	baseicon = "cam"
	locked = TRUE
	lock_id = "strip"
	lockpick_difficulty = 4

/obj/structure/vampdoor/giovanni
	icon_state = "wood-1"
	baseicon = "wood"
	locked = TRUE
	lock_id = "giovanni"
	burnable = TRUE
	lockpick_difficulty = 8

/obj/structure/vampdoor/baali
	icon_state = "oldwood-1"
	baseicon = "oldwood"
	locked = TRUE
	lock_id = "baali"
	burnable = FALSE
	lockpick_difficulty = 8

/obj/structure/vampdoor/salubri
	icon_state = "oldwood-1"
	baseicon = "oldwood"
	locked = TRUE
	lock_id = "salubri"
	burnable = FALSE
	lockpick_difficulty = 8

/obj/structure/vampdoor/old_clan_tzimisce
	icon_state = "oldwood-1"
	baseicon = "oldwood"
	locked = TRUE
	lock_id = "old_clan_tzimisce"
	burnable = FALSE
	lockpick_difficulty = 8

/obj/structure/vampdoor/npc/Initialize()
	. = ..()
	lock_id = "npc[rand(1, 20)]"
