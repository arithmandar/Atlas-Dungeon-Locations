-----------------------------------------------------------------------
-- Data for Forever
-----------------------------------------------------------------------
local _G = getfenv(0)
local _, private = ...
local LibStub = _G.LibStub
---@type AtlasAddon
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local Client = Atlas.Client

if not Client.isForever then
	return
end

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")

local data = {}
local alliance = {}
local horde = {}
private.data = data
private.alliance = alliance
private.horde = horde

local constants = Atlas.constants
local labelcolors = constants.colors.labels
local BLUE = labelcolors.BLUE
local GREN = labelcolors.GREN
local LBLU = labelcolors.LBLU
local _RED = labelcolors._RED
local ORNG = labelcolors.ORNG
local PINK = labelcolors.PINK
local PURP = labelcolors.PURP
local WHIT = labelcolors.WHIT
local GREY = labelcolors.GREY
local YLOW = labelcolors.YLOW
local ALAN = labelcolors.ALAN -- Alliance
local HRDE = labelcolors.HRDE -- Horde
local INDENT = "      "

local COMMA = ALC["Comma"]
local L_PAREN = ALC["L-Parenthesis"]
local R_PAREN = ALC["R-Parenthesis"]

-- local helper functions
-- Optional fields: level, sep ("Slash" instead of COMMA between zones),
-- after (extra id-less sub rows: { name, zone or nil, level = "x-y" })
local east_data = {
	{ id = 10001, color = BLUE, label = "A", name = "Alterac Valley", zones = { "Hillsbrad Foothills" } },
	{ id = 10002, color = BLUE, label = "B", name = "Arathi Basin", zones = { "Arathi Highlands" } },
	{ id = 20001, color = WHIT, label = "1", name = "Scarlet Monastery", zones = { "Tirisfal Glades" }, level = "36-44" },
	{ id = 20002, color = WHIT, label = "2", name = "Ruins of Lordaeron", zones = { "Tirisfal Glades" }, level = "15-20" },
	{ id = 20003, color = WHIT, label = "3", name = "Shadowfang Keep", zones = { "Silverpine Forest" }, level = "22-30" },
	{ id = 20004, color = WHIT, label = "4", name = "City of Dalaran", zones = { "Alterac Mountains" }, level = "28-33" },
	{ id = 20005, color = WHIT, label = "5", name = "Scholomance", zones = { "Western Plaguelands" }, level = "58-60" },
	{ id = 20006, color = WHIT, label = "6", name = "Stratholme", zones = { "Eastern Plaguelands" }, level = "58-60" },
	{ id = 20007, color = WHIT, label = "7", name = "Excavation Site: Wetlands", zones = { "Wetlands" }, level = "24-29" },
	{ id = 20008, color = WHIT, label = "8", name = "Hall of Thanes", zones = { "Ironforge", "Dun Morogh" }, level = "13-18" },
	{ id = 20009, color = WHIT, label = "9", name = "Gnomeregan", zones = { "Dun Morogh" }, level = "29-38" },
	{ id = 20010, color = WHIT, label = "10", name = "Uldaman", zones = { "Badlands" }, level = "41-51" },
	{ id = 20011, color = WHIT, label = "11", name = "Blackrock Mountain", zones = { "Searing Gorge", "Burning Steppes" }, sep = "Slash",
		after = {
			{ "Blackrock Depths", nil, level = "52-60" },
			{ "Lower Blackrock Spire", nil, level = "55-60" },
			{ "Upper Blackrock Spire", nil, level = "59-60" },
			{ "The Molten Core", "Blackrock Depths", level = "60" },
			{ "Blackwing Lair", "Upper Blackrock Spire", level = "60" },
		},
	},
	{ id = 20012, color = WHIT, label = "12", name = "The Stockade", zones = { "Stormwind City" }, level = "24-32" },
	{ id = 20013, color = WHIT, label = "13", name = "The Deadmines", zones = { "Westfall" }, level = "17-26" },
	{ id = 20014, color = WHIT, label = "14", name = "Sunken Temple", zones = { "Swamp of Sorrows" }, level = "50-60" },
	{ id = 20015, color = WHIT, label = "15", name = "Zul'Gurub", zones = { "Northern Stranglethorn" }, level = "60" },
	{ id = 20016, color = WHIT, label = "16", name = "Krol'dok Stronghold", zones = { "Riverglades" }, level = "40-45" }
}

local west_data = {
	{ id = 10001, color = BLUE, label = "A", name = "Warsong Gulch", zones = { "Ashenvale" } },
	{ id = 20001, color = WHIT, label = "1", name = "Blackfathom Deeps", zones = { "Ashenvale" }, level = "24-32" },
	{ id = 20002, color = WHIT, label = "2", name = "Ragefire Chasm", zones = { "Orgrimmar" }, level = "13-18" },
	{ id = 20003, color = WHIT, label = "3", name = "Wailing Caverns", zones = { "Northern Barrens" }, level = "17-24" },
	{ id = 20004, color = WHIT, label = "4", name = "Maraudon", zones = { "Desolace" }, level = "46-55" },
	{ id = 20005, color = WHIT, label = "5", name = "Dire Maul", zones = { "Feralas" }, level = "54-60" },
	{ id = 20006, color = WHIT, label = "6", name = "Razorfen Kraul", zones = { "Southern Barrens" }, level = "29-38" },
	{ id = 20007, color = WHIT, label = "7", name = "Razorfen Downs", zones = { "Thousand Needles" }, level = "37-46" },
	{ id = 20008, color = WHIT, label = "8", name = "Onyxia's Lair", zones = { "Dustwallow Marsh" }, level = "60" },
	{ id = 20009, color = WHIT, label = "9", name = "Zul'Farrak", zones = { "Tanaris" }, level = "44-54" },
	{ id = 20010, color = WHIT, label = "10", name = "Temple of Ahn'Qiraj", zones = { "Silithus" }, level = "60" },
	{ id = 20011, color = WHIT, label = "11", name = "Ruins of Ahn'Qiraj", zones = { "Silithus" }, level = "60" },
}

local function BuildMapRows(source)
	local rows = {}
	for _, e in ipairs(source) do
		local sep = e.sep and ALC[e.sep] or COMMA
		local text = e.color..string.format("%2s", e.label)..") "..BZ[e.name]
		if e.level then
			text = text..L_PAREN..e.level..R_PAREN
		end
		for i, zone in ipairs(e.zones) do
			text = text..(i == 1 and COMMA.._RED or sep)..BZ[zone]
		end
		rows[#rows + 1] = { text, e.id }
		for _, sub in ipairs(e.after or {}) do
			local subtext = WHIT..INDENT..BZ[sub[1]]
			if sub.level then
				subtext = subtext..L_PAREN..sub.level..R_PAREN
			end
			if sub[2] then
				subtext = subtext..COMMA.._RED..BZ[sub[2]]
			end
			rows[#rows + 1] = { subtext }
		end
	end
	return rows
end

local function BuildMap(zoneName, source, footer)
	local map = { ZoneName = { zoneName } }
	for _, row in ipairs(BuildMapRows(source)) do
		map[#map + 1] = row
	end
	for _, row in ipairs(footer) do
		map[#map + 1] = row
	end
	return map
end

alliance.maps = {}
alliance.coords = {}
horde.maps = {}
horde.coords = {}

data.maps = {
	DLEast_Forever = BuildMap(BZ["Eastern Kingdoms"], east_data, {
		{ "" },
		{ BLUE..L["Blue"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	}),
	DLWest_Forever = BuildMap(BZ["Kalimdor"], west_data, {
		{ "" },
		{ BLUE..L["Blue"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	}),
}

data.coords = {
    DLEast_Forever = {
        { "A", 10001, 248, 112 }, -- blue
        { "B", 10002, 304, 161 }, -- blue
        { "1", 20001, 246, 60 }, -- white
        { "2", 20002, 238, 80 }, -- white
        { "3", 20003, 190, 130 }, -- white
        { "4", 20004, 211, 117 }, -- white
        { "5", 20005, 286, 95 }, -- white
        { "6", 20006, 307, 50 }, -- white
        { "7", 20007, 282, 215 }, -- white
        { "8", 20008, 250, 244 }, -- white
        { "9", 20009, 209, 251 }, -- white
        { "10", 20010, 301, 277 }, -- white
        { "11", 20011, 253, 308 }, -- white
        { "12", 20012, 205, 334 }, -- white
        { "13", 20013, 190, 395 }, -- white
        { "14", 20014, 309, 371 }, -- white
        { "15", 20015, 262, 411 }, -- white
        { "16", 20016, 327, 300 }, -- white
    },
    DLWest_Forever = {
        { "A", 10001, 273, 227 }, -- blue
        { "1", 20001, 210, 171 }, -- white
        { "2", 20002, 325, 220 }, -- white
        { "3", 20003, 274, 276 }, -- white
        { "4", 20004, 171, 292 }, -- white
        { "5", 20005, 198, 346 }, -- white
        { "6", 20006, 258, 354 }, -- white
        { "7", 20007, 277, 363 }, -- white
        { "8", 20008, 307, 355 }, -- white
        { "9", 20009, 286, 402 }, -- white
        { "10", 20010, 177, 449 }, -- white
        { "11", 20011, 188, 465 }, -- white
    },
}
