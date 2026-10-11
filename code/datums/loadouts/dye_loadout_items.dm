/datum/loadout_item/dye_color
	abstract_type = /datum/loadout_item/dye_color
	ui_category = "Colors"
	ui_icon = 'icons/roguetown/items/misc.dmi'
	ui_icon_state = "bait"
	loadout_flags = LOADOUT_FLAG_NO_EQUIP | LOADOUT_FLAG_NO_RENT
	/// The hex color this item represents, e.g. "#3a7d44"
	var/color_hex = "#FFFFFF"
	/// Which dye palette this comes from: "peasant", "noble", "royal", "mage"
	var/palette = "peasant"

/datum/loadout_item/dye_color/proc/is_color_owned_by(client/C)
	return is_owned_and_accessible(C)

/datum/loadout_item/dye_color/peasant
	abstract_type = /datum/loadout_item/dye_color/peasant
	triumph_cost_permanent = 0
	palette = "peasant"

/datum/loadout_item/dye_color/peasant/white
	name = "White"
	color_hex = "#ffffff"

/datum/loadout_item/dye_color/peasant/bone_white
	name = "Bone White"
	color_hex = "#f0ead6"

/datum/loadout_item/dye_color/peasant/chalk_white
	name = "Chalk White"
	color_hex = "#c7c0b5"

/datum/loadout_item/dye_color/peasant/ash_grey
	name = "Ash Grey"
	color_hex = "#7a7a7a"

/datum/loadout_item/dye_color/peasant/mage_grey
	name = "Mage Grey"
	color_hex = "#6c6c6c"

/datum/loadout_item/dye_color/peasant/soot_black
	name = "Soot Black"
	color_hex = "#414145"

/datum/loadout_item/dye_color/peasant/onyx_black
	name = "Onyx Black"
	color_hex = "#1a1a1a"

/datum/loadout_item/dye_color/peasant/undyed
	name = "Undyed Linen"
	color_hex = "#d4c5a9"

/datum/loadout_item/dye_color/peasant/linen
	name = "Linen"
	color_hex = "#a1a17a"

/datum/loadout_item/dye_color/peasant/canvas
	name = "Canvas"
	color_hex = "#858564"

/datum/loadout_item/dye_color/peasant/taraxacum_yellow
	name = "Taraxacum Yellow"
	color_hex = "#7d853c"

/datum/loadout_item/dye_color/peasant/pear_yellow
	name = "Pear Yellow"
	color_hex = "#a19f52"

/datum/loadout_item/dye_color/peasant/mage_yellow
	name = "Mage Yellow"
	color_hex = "#a79730"

/datum/loadout_item/dye_color/peasant/imperial_gold
	name = "Imperial Gold"
	color_hex = "#d4af37"

/datum/loadout_item/dye_color/peasant/weld_yellow
	name = "Weld Yellow"
	color_hex = "#c8a415"

/datum/loadout_item/dye_color/peasant/mustard_yellow
	name = "Mustard Yellow"
	color_hex = "#E1AD01"

/datum/loadout_item/dye_color/peasant/fyritius_orange
	name = "Fyritius Orange"
	color_hex = "#9b7540"

/datum/loadout_item/dye_color/peasant/bark_brown
	name = "Bark Brown"
	color_hex = "#685542"

/datum/loadout_item/dye_color/peasant/old_leather
	name = "Old Leather"
	color_hex = "#473f39"

/datum/loadout_item/dye_color/peasant/peasant_brown
	name = "Peasant Brown"
	color_hex = "#634f44"

/datum/loadout_item/dye_color/peasant/Chestnut
	name = "Chestnut"
	color_hex = "#604631"

/datum/loadout_item/dye_color/peasant/mud_brown
	name = "Mud Brown"
	color_hex = "#6b4226"

/datum/loadout_item/dye_color/peasant/russet
	name = "Russet"
	color_hex = "#80461B"

/datum/loadout_item/dye_color/peasant/mage_orange
	name = "Mage Orange"
	color_hex = "#935329"

/datum/loadout_item/dye_color/peasant/burnt_sienna
	name = "Burnt Sienna"
	color_hex = "#8b4513"

/datum/loadout_item/dye_color/peasant/sunset_orange
	name = "Sunset Orange"
	color_hex = "#e06b1d"

/datum/loadout_item/dye_color/peasant/deep_orange
	name = "Deep Orange"
	color_hex = "#c95203"

/datum/loadout_item/dye_color/peasant/royal_black
	name = "Royal Black"
	color_hex = "#2f352f"

/datum/loadout_item/dye_color/peasant/spring_green
	name = "Spring Green"
	color_hex = "#41493a"

/datum/loadout_item/dye_color/peasant/mage_green
	name = "Mage Green"
	color_hex = "#60794a"

/datum/loadout_item/dye_color/peasant/forest_green
	name = "Forest Green"
	color_hex = "#3a7d44"

/datum/loadout_item/dye_color/peasant/forest_emerald
	name = "Forest Emerald"
	color_hex = "#1a6b3a"

/datum/loadout_item/dye_color/peasant/royal_teal
	name = "Royal Teal"
	color_hex = "#3b817a"

/datum/loadout_item/dye_color/peasant/slate_teal
	name = "Slate Teal"
	color_hex = "#2d7a7a"

/datum/loadout_item/dye_color/peasant/midnight_teal
	name = "Midnight Teal"
	color_hex = "#00627b"

/datum/loadout_item/dye_color/peasant/charcoal
	name = "Charcoal"
	color_hex = "#36454f"

/datum/loadout_item/dye_color/peasant/ocean
	name = "Ocean"
	color_hex = "#45749d"

/datum/loadout_item/dye_color/peasant/berry_blue
	name = "Berry Blue"
	color_hex = "#39404d"

/datum/loadout_item/dye_color/peasant/woad_blue
	name = "Woad Blue"
	color_hex = "#4a6fa5"

/datum/loadout_item/dye_color/peasant/azure_cerulean
	name = "Azure Cerulean"
	color_hex = "#007fff"

/datum/loadout_item/dye_color/peasant/royal_blue
	name = "Royal Blue"
	color_hex = "#1a3a6b"

/datum/loadout_item/dye_color/peasant/nightsky_blue
	name = "MIDNIGHT Blue"
	color_hex = "#40445f"

/datum/loadout_item/dye_color/peasant/mage_blue
	name = "Mage Blue"
	color_hex = "#454fa6"

/datum/loadout_item/dye_color/peasant/midnight_purple
	name = "Midnight Purple"
	color_hex = "#3a1a6b"

/datum/loadout_item/dye_color/peasant/pitch
	name = "Pitch"
	color_hex = "#2b292e"

/datum/loadout_item/dye_color/peasant/plum_purple
	name = "Plum Purple"
	color_hex = "#4b3c54"
/datum/loadout_item/dye_color/peasant/royal_purple
	name = "Royal Purple"
	color_hex = "#865c9c"

/datum/loadout_item/dye_color/peasant/tyrian_purple
	name = "Tyrian Purple"
	color_hex = "#66023c"

/datum/loadout_item/dye_color/peasant/royal_majenta
	name = "Royal Majenta"
	color_hex = "#822b52"

/datum/loadout_item/dye_color/peasant/eggplant
	name = "Eggplant"
	color_hex = "#5d4356"

/datum/loadout_item/dye_color/peasant/salmon
	name = "Salmon"
	color_hex = "#70545e"

/datum/loadout_item/dye_color/peasant/dark_ink
	name = "Dark Ink"
	color_hex = "#392f2f"

/datum/loadout_item/dye_color/peasant/winestain_red
	name = "Winestain Red"
	color_hex = "#673c3c"

/datum/loadout_item/dye_color/peasant/maroon
	name = "Maroon"
	color_hex = "#5a1a20"

/datum/loadout_item/dye_color/peasant/royal_red
	name = "Royal Red"
	color_hex = "#813434"

/datum/loadout_item/dye_color/peasant/red_ochre
	name = "Red Ochre"
	color_hex = "#913831"

/datum/loadout_item/dye_color/peasant/vicious_red
	name = "Vicious Red"
	color_hex = "#a0171d"

/datum/loadout_item/dye_color/peasant/madder_red
	name = "Madder Red"
	color_hex = "#8b2020"

/datum/loadout_item/dye_color/peasant/deep_crimson
	name = "Deep Crimson"
	color_hex = "#8b0000"

/datum/loadout_item/dye_color/peasant/kings_scarlet
	name = "King's Scarlet"
	color_hex = "#cc2200"

/* COMMENTED OUT SET CATEGORIES TO SIMPLIFY BY HUE SORTING

///Noble Set

/datum/loadout_item/dye_color/noble
	abstract_type = /datum/loadout_item/dye_color/noble
	triumph_cost_permanent = 0
	palette = "noble"

///Royal Set

/datum/loadout_item/dye_color/royal
	abstract_type = /datum/loadout_item/dye_color/royal
	triumph_cost_permanent = 0
	palette = "royal"

///Mage Set

/datum/loadout_item/dye_color/mage
	abstract_type = /datum/loadout_item/dye_color/mage
	triumph_cost_permanent = 0
	palette = "mage"

*/
