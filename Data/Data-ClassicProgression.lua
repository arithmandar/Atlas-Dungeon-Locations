-----------------------------------------------------------------------
-- Data for Classic Progression
-----------------------------------------------------------------------
local _G = getfenv(0)
local _, private = ...
local LibStub = _G.LibStub
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local Client = Atlas.Client

if not Client.isProgressionClassic then
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

local constants = private.constants
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

alliance.maps = {}
alliance.coords = {}
horde.maps = {}
horde.coords = {}

data.maps = {
	DLEast_CP = {
		ZoneName = { BZ["Eastern Kingdoms"] },
		{ WHIT.." 1) "..BZ["Sunwell Plateau"]..ALC["Comma"].._RED..BZ["Isle of Quel'Danas"] },
		{ WHIT.." 2) "..BZ["Magisters' Terrace"]..ALC["Comma"].._RED..BZ["Isle of Quel'Danas"] },
		{ WHIT.." 3) "..BZ["Zul'Aman"]..ALC["Comma"].._RED..BZ["Ghostlands"] },
		{ WHIT.." 4) "..BZ["Stratholme"]..ALC["Comma"].._RED..BZ["Eastern Plaguelands"] },
		{ WHIT..INDENT..BZ["Stratholme"]..ALC["Hyphen"]..BZ["Crusaders' Square"] },
		{ WHIT..INDENT..BZ["Stratholme"]..ALC["Hyphen"]..BZ["The Gauntlet"] },
		{ WHIT.." 5) "..BZ["Scarlet Monastery"]..ALC["Comma"].._RED..BZ["Tirisfal Glades"] },
		{ WHIT..INDENT..BZ["Scarlet Halls"] },
		{ WHIT..INDENT..BZ["Scarlet Monastery"] },
		{ WHIT.." 6) "..BZ["Scholomance"]..ALC["Comma"].._RED..BZ["Western Plaguelands"] },
		{ WHIT.." 7) "..BZ["Shadowfang Keep"]..ALC["Comma"].._RED..BZ["Silverpine Forest"] },
		{ WHIT.." 8) "..BZ["Baradin Hold"]..ALC["Comma"].._RED..BZ["Tol Barad"] },
		{ WHIT.." 9) "..BZ["Grim Batol"]..ALC["Comma"].._RED..BZ["Twilight Highlands"] },
		{ WHIT.."10) "..BZ["The Bastion of Twilight"]..ALC["Comma"].._RED..BZ["Twilight Highlands"] },
		{ WHIT.."11) "..BZ["Gnomeregan"]..ALC["Comma"].._RED..BZ["Dun Morogh"] },
		{ WHIT.."12) "..BZ["The Abyssal Maw"]..ALC["Comma"].._RED..BZ["Abyssal Depths"] },
		{ WHIT.."13) "..BZ["Uldaman"]..ALC["Comma"].._RED..BZ["Badlands"] },
		{ WHIT.."14) "..BZ["Blackrock Mountain"]..ALC["Comma"].._RED..BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"] },
		{ WHIT..INDENT..BZ["Blackrock Depths"] },
		{ WHIT..INDENT..BZ["Blackrock Spire"] },
		{ WHIT..INDENT..BZ["The Molten Core"]..ALC["Comma"].._RED..BZ["Blackrock Depths"] },
		{ WHIT..INDENT..BZ["Blackwing Lair"]..ALC["Comma"].._RED..BZ["Blackrock Spire"] },
		{ WHIT..INDENT..BZ["Blackrock Caverns"] },
		{ WHIT..INDENT..BZ["Blackwing Descent"] },
		{ WHIT.."15) "..BZ["The Stockade"]..ALC["Comma"].._RED..BZ["Stormwind City"] },
		{ WHIT.."16) "..BZ["Sunken Temple"]..ALC["Comma"].._RED..BZ["Swamp of Sorrows"] },
		{ WHIT.."17) "..BZ["The Deadmines"]..ALC["Comma"].._RED..BZ["Westfall"] },
		{ WHIT.."18) "..BZ["Karazhan"]..ALC["Comma"].._RED..BZ["Deadwind Pass"] },
		{ WHIT.."19) "..BZ["Zul'Gurub"]..ALC["Comma"].._RED..BZ["Northern Stranglethorn"] },
		{ GREN.." 1') "..BZ["Alterac Valley"]..ALC["Comma"].._RED..BZ["Hillsbrad Foothills"] },
		{ GREN.." 2') "..BZ["Arathi Basin"]..ALC["Comma"].._RED..BZ["Arathi Highlands"] },
		{ GREN.." 3') "..BZ["Tol Barad"]..ALC["Comma"].._RED..BZ["Tol Barad"] },
		{ "" },
		{ BLUE..L["Green"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	},
	DLWest_CP = {
		ZoneName = { BZ["Kalimdor"] },
		{ WHIT.." 1) "..BZ["Firelands"]..ALC["Comma"].._RED..BZ["Mount Hyjal"] },
		{ WHIT.." 2) "..BZ["Blackfathom Deeps"]..ALC["Comma"].._RED..BZ["Ashenvale"] },
		{ WHIT.." 3) "..BZ["Ragefire Chasm"]..ALC["Comma"].._RED..BZ["Orgrimmar"] },
		{ WHIT.." 4) "..BZ["Wailing Caverns"]..ALC["Comma"].._RED..BZ["Northern Barrens"] },
		{ WHIT.." 5) "..BZ["Maraudon"]..ALC["Comma"].._RED..BZ["Desolace"] },
		{ WHIT.." 6) "..BZ["Dire Maul"]..ALC["Comma"].._RED..BZ["Feralas"] },
		{ WHIT.." 7) "..BZ["Razorfen Kraul"]..ALC["Comma"].._RED..BZ["Southern Barrens"] },
		{ WHIT.." 8) "..BZ["Razorfen Downs"]..ALC["Comma"].._RED..BZ["Thousand Needles"] },
		{ WHIT.." 9) "..BZ["Onyxia's Lair"]..ALC["Comma"].._RED..BZ["Dustwallow Marsh"] },
		{ WHIT.."10) "..BZ["Zul'Farrak"]..ALC["Comma"].._RED..BZ["Tanaris"] },
		{ WHIT.."11) "..BZ["Caverns of Time"]..ALC["Comma"].._RED..BZ["Tanaris"] },
		{ WHIT..INDENT..BZ["Old Hillsbrad Foothills"] },
		{ WHIT..INDENT..BZ["The Black Morass"] },
		{ WHIT..INDENT..BZ["Hyjal Summit"] },
		{ WHIT..INDENT..BZ["The Culling of Stratholme"] },
		{ WHIT..INDENT..BZ["End Time"] },
		{ WHIT..INDENT..BZ["Well of Eternity"] },
		{ WHIT..INDENT..BZ["Hour of Twilight"] },
		{ WHIT..INDENT..BZ["Dragon Soul"] },
		{ WHIT.."12) "..BZ["Ahn'Qiraj"]..ALC["Comma"].._RED..BZ["Ahn'Qiraj: The Fallen Kingdom"] },
		{ WHIT..INDENT..BZ["Ruins of Ahn'Qiraj"] },
		{ WHIT..INDENT..BZ["Temple of Ahn'Qiraj"] },
		{ WHIT.."13) "..BZ["Halls of Origination"]..ALC["Comma"].._RED..BZ["Uldum"] },
		{ WHIT.."14) "..BZ["Lost City of the Tol'vir"]..ALC["Comma"].._RED..BZ["Uldum"] },
		{ WHIT.."15) "..BZ["Throne of the Four Winds"]..ALC["Comma"].._RED..BZ["Uldum"] },
		{ WHIT.."16) "..BZ["The Vortex Pinnacle"]..ALC["Comma"].._RED..BZ["Uldum"] },
		{ GREN.." 1') "..BZ["Warsong Gulch"]..ALC["Comma"].._RED..BZ["Ashenvale"] },
		{ "" },
		{ BLUE..L["Green"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	},
	DLOutland_BCC = {
		ZoneName = { BZ["Outland"] },
		{ WHIT.." 1) "..BZ["Gruul's Lair"]..ALC["Comma"].._RED..BZ["Blade's Edge Mountains"], 10001 },
		{ WHIT.." 2) "..BZ["Tempest Keep"]..ALC["Comma"].._RED..BZ["Netherstorm"], 10002 },
		{ WHIT..INDENT..BZ["The Mechanar"] },
		{ WHIT..INDENT..BZ["The Botanica"] },
		{ WHIT..INDENT..BZ["The Arcatraz"] },
		{ WHIT..INDENT..BZ["Tempest Keep"] },
		{ WHIT.." 3) "..BZ["Coilfang Reservoir"]..ALC["Comma"].._RED..BZ["Zangarmarsh"], 10003 },
		{ WHIT..INDENT..BZ["The Slave Pens"] },
		{ WHIT..INDENT..BZ["The Underbog"] },
		{ WHIT..INDENT..BZ["The Steamvault"] },
		{ WHIT..INDENT..BZ["Serpentshrine Cavern"] },
		{ WHIT.." 4) "..BZ["Hellfire Citadel"]..ALC["Comma"].._RED..BZ["Hellfire Peninsula"], 10004 },
		{ WHIT..INDENT..BZ["Hellfire Ramparts"] },
		{ WHIT..INDENT..BZ["The Blood Furnace"] },
		{ WHIT..INDENT..BZ["The Shattered Halls"] },
		{ WHIT..INDENT..BZ["Magtheridon's Lair"] },
		{ WHIT.." 5) "..BZ["Auchindoun"]..ALC["Comma"].._RED..BZ["Terokkar Forest"], 10005 },
		{ WHIT..INDENT..BZ["Mana-Tombs"] },
		{ WHIT..INDENT..BZ["Auchenai Crypts"] },
		{ WHIT..INDENT..BZ["Sethekk Halls"] },
		{ WHIT..INDENT..BZ["Shadow Labyrinth"] },
		{ WHIT.." 6) "..BZ["Black Temple"]..ALC["Comma"].._RED..BZ["Shadowmoon Valley"], 10006 },
	},
	DLNorthrend = {
		ZoneName = { BZ["Northrend"] },
		LargeMap = "DLNorthrend",
		{ WHIT.." 1) "..BZ["Ulduar"]..ALC["Comma"].._RED..BZ["The Storm Peaks"], 10001 },
		{ WHIT..INDENT..BZ["Ulduar"] },
		{ WHIT..INDENT..BZ["Halls of Stone"] },
		{ WHIT..INDENT..BZ["Halls of Lightning"] },
		{ WHIT.." 2) "..ALC["Crusaders' Coliseum"]..ALC["Comma"].._RED..BZ["Icecrown"], 10002 },
		{ WHIT..INDENT..BZ["Trial of the Crusader"] },
		{ WHIT..INDENT..BZ["Trial of the Champion"] },
		{ WHIT.." 3) "..BZ["Gundrak"]..ALC["Comma"].._RED..BZ["Zul'Drak"], 10003 },
		{ WHIT.." 4) "..BZ["Icecrown Citadel"]..ALC["Comma"].._RED..BZ["Icecrown"], 10004 },
		{ WHIT..INDENT..BZ["Icecrown Citadel"] },
		{ WHIT..INDENT..BZ["The Frozen Halls"] },		
		{ WHIT..INDENT..INDENT..BZ["The Forge of Souls"] },
		{ WHIT..INDENT..INDENT..BZ["Pit of Saron"] },
		{ WHIT..INDENT..INDENT..BZ["Halls of Reflection"] },
		{ WHIT.." 5) "..BZ["The Violet Hold"]..ALC["Comma"].._RED..BZ["Dalaran"], 10005 },
		{ WHIT.." 6) "..BZ["Vault of Archavon"]..ALC["Comma"].._RED..BZ["Wintergrasp"], 10006 },
		{ WHIT.." 7) "..BZ["Drak'Tharon Keep"]..ALC["Comma"].._RED..BZ["Grizzly Hills"], 10007 },
		{ WHIT.." 8) "..BZ["The Nexus"]..ALC["Comma"].._RED..BZ["Coldarra"], 10008 },
		{ WHIT..INDENT..BZ["The Nexus"] },
		{ WHIT..INDENT..BZ["The Oculus"] },
		{ WHIT..INDENT..BZ["The Eye of Eternity"] },
		{ WHIT.." 9) "..BZ["Azjol-Nerub"]..ALC["Comma"].._RED..BZ["Dragonblight"], 10009 },
		{ WHIT..INDENT..BZ["Azjol-Nerub"] },
		{ WHIT..INDENT..BZ["Ahn'kahet: The Old Kingdom"] },
		{ WHIT.."10) "..BZ["Wyrmrest Temple"]..ALC["Comma"].._RED..BZ["Dragonblight"], 10010 },
		{ WHIT..INDENT..BZ["The Obsidian Sanctum"] },
		{ WHIT..INDENT..BZ["The Ruby Sanctum"] },
		{ WHIT.."11) "..BZ["Naxxramas"]..ALC["Comma"].._RED..BZ["Dragonblight"], 10011 },
		{ WHIT.."12) "..BZ["Utgarde Keep"]..ALC["Comma"].._RED..BZ["Howling Fjord"], 10012 },
		{ WHIT..INDENT..BZ["Utgarde Keep"] },
		{ WHIT..INDENT..BZ["Utgarde Pinnacle"] },
		{ GREN.." 1') "..BZ["Wintergrasp"]..ALC["Comma"].._RED..BZ["Wintergrasp"], 10013 },
		{ "" },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
		{ GREN..L["Green"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
	},
	DLDeepholm = {
		ZoneName = { BZ["Deepholm"] },
		{ WHIT.." 1) "..BZ["The Stonecore"] },
	},
	DLPandaria = {
		ZoneName = { BZ["Pandaria"] },
		LargeMap = "DLPandaria",
		{ WHIT.." 1) "..BZ["Throne of Thunder"]..ALC["Comma"].._RED..BZ["Isle of Thunder"], 10001 },
		{ WHIT.." 2) "..BZ["Shado-Pan Monastery"]..ALC["Comma"].._RED..BZ["Kun-Lai Summit"], 10002 },
		{ WHIT.." 3) "..BZ["Mogu'shan Vaults"]..ALC["Comma"].._RED..BZ["Kun-Lai Summit"], 10003 },
		{ WHIT.." 4) "..BZ["Siege of Niuzao Temple"]..ALC["Comma"].._RED..BZ["Townlong Steppes"], 10004 },
		{ WHIT.." 5) "..BZ["Gate of the Setting Sun"]..ALC["Comma"].._RED..BZ["Dread Wastes"]..ALC["Slash"].._RED..BZ["Vale of Eternal Blossoms"], 10005 },
		{ WHIT.." 6) "..BZ["Siege of Orgrimmar"]..ALC["Comma"].._RED..BZ["Vale of Eternal Blossoms"], 10006 },
		{ WHIT.." 7) "..BZ["Mogu'shan Palace"]..ALC["Comma"].._RED..BZ["Vale of Eternal Blossoms"], 10007 },
		{ WHIT.." 8) "..BZ["Terrace of Endless Spring"]..ALC["Comma"].._RED..BZ["The Veiled Stair"], 10008 },
		{ WHIT.." 9) "..BZ["Temple of the Jade Serpent"]..ALC["Comma"].._RED..BZ["The Jade Forest"], 10009 },
		{ WHIT.."10) "..BZ["Heart of Fear"]..ALC["Comma"].._RED..BZ["Dread Wastes"], 10010 },
		{ WHIT.."11) "..BZ["Stormstout Brewery"]..ALC["Comma"].._RED..BZ["Valley of the Four Winds"], 10011 },
		{ GREN.." 1') "..BZ["Deepwind Gorge"]..ALC["Comma"].._RED..BZ["Valley of the Four Winds"], 10012 },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ "" },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
		{ GREN..L["Green"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
	},
}

data.coords = {
	DLOutland = {
		{ "1", 10001, 224,  78, 424, 116, "Raid" }, -- Gruul's Lair
		{ "2", 10002, 410, 102, 659, 148, "Raid" }, -- Tempest Keep
		{ "3", 10003, 146, 219, 336, 292, "Raid" }, -- Coilfang Reservoir
		{ "4", 10004, 324, 259, 555, 340, "Raid" }, -- Hellfire Citadel
		{ "5", 10005, 239, 400, 448, 515, "Raid" }, -- Auchindoun
		{ "6", 10006, 449, 411, 714, 529, "Raid" }, -- Black Temple
	},
	DLNorthrend = {
		{ "1",   10001, 303, 127, 577, 107, "Raid" }, -- Ulduar
		{ "2",   10002, 244, 146, 470, 131, "Raid" }, -- Crusaders' Coliseum
		{ "3",   10003, 404, 194, 778, 220, "Dungeon" }, -- Gundrak
		{ "4",   10004, 208, 230, 403, 290, "Raid" }, -- Icecrown Citadel
		{ "5",   10005, 254, 230, 479, 287, "Dungeon" }, -- The Violet Hold
		{ "6",   10006, 186, 241, 355, 307, "Raid" }, -- Vault of Archavon
		{ "7",   10007, 333, 260, 628, 345, "Dungeon" }, -- Drak'Tharon Keep
		{ "8",   10008,  60, 284, 126, 392, "Raid" }, -- The Nexus
		{ "9",   10009, 204, 289, 389, 401, "Dungeon" }, -- Azjol-Nerub
		{ "10",  10010, 260, 292, 500, 407, "Raid" }, -- Wyrmrest Temple
		{ "11",  10011, 304, 284, 586, 399, "Raid" }, -- Naxxramas
		{ "12",  10012, 413, 363, 786, 546, "Dungeon" }, -- Utgarde Keep
		{ "1'",  10013, 184, 260, 356, 340, "Battlegrounds" }, -- Wintergrasp
	},
	DLDeepholm = {
		{ "1", 10001, 298, 311  }, -- The Stonecore
	},
	DLPandaria = {
		{ "1",  10001,  67,  80, 219,  68, "Raid" }, -- Throne of Thunder
		{ "2",  10002, 167, 157, 378, 207, "Dungeon" }, -- Shado-Pan Monastery
		{ "3",  10003, 222, 154, 467, 200, "Raid" }, -- Mogu'shan Vaults
		{ "4",  10004,  90, 217, 248, 304, "Dungeon" }, -- Siege of Niuzao Temple
		{ "5",  10005, 180, 266, 401, 384, "Dungeon" }, -- Gate of the Setting Sun
		{ "6",  10006, 242, 253, 496, 368, "Raid" }, -- Siege of Orgrimmar
		{ "7",  10007, 254, 250, 510, 358, "Dungeon" }, -- Mogu'shan Palace
		{ "8",  10008, 278, 263, 554, 384, "Raid" }, -- Terrace of Endless Spring
		{ "9",  10009, 365, 267, 702, 385, "Dungeon" }, -- Temple of the Jade Serpent
		{ "10", 10010, 116, 298, 300, 435, "Raid" }, -- Heart of Fear
		{ "11", 10011, 221, 329, 461, 488, "Dungeon" }, -- Stormstout Brewery
		{ "1'", 10012, 246, 312, 513, 457, "Battlegrounds" }, -- Deepwind Gorge
	},
}
