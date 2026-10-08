-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local _, private = ...
private.addon_name = "Atlas_DungeonLocs"
private.category = "Dungeon Locations"

local constants = {}
private.constants = constants

constants.colors = {
	labels = {
		BLUE = "|cff6666ff", -- usually for informational text like entrance, connection
		GREN = "|cff66cc33", -- NPCs
		LBLU = "|cff33cccc",
		_RED = "|cffcc3333",
		ORNG = "|cffcc9933",
		PINK = "|ccfcc33cc",
		PURP = "|cff9900ff",
		WHIT = "|cffffffff",
		GREY = "|cff999999",
		YLOW = "|cffcccc33",
		ALAN = "|cff7babe0", -- Alliance
		HRDE = "|cffda6955", -- Horde
	}
}

constants.defaults = {
	profile = {
		all_faction = true,
	},
}

constants.events = {}
