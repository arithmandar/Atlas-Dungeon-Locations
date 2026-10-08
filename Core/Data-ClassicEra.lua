-----------------------------------------------------------------------
-- Data for Classic Era
-----------------------------------------------------------------------
local _G = getfenv(0)
local _, private = ...
local LibStub = _G.LibStub
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local Client = Atlas.Client

if not Client.isClassicEra then
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
	DLEast_Classic = {
		ZoneName = { BZ["Eastern Kingdoms"] },
		{ BLUE.." A) "..BZ["Alterac Valley"]..ALC["Comma"].._RED..BZ["Hillsbrad Foothills"], 10021 },
		{ BLUE.." B) "..BZ["Arathi Basin"]..ALC["Comma"].._RED..BZ["Arathi Highlands"], 10022 },
		{ WHIT.." 1) "..BZ["Scarlet Monastery"]..ALC["Comma"].._RED..BZ["Tirisfal Glades"], 10001 },
		{ WHIT.." 2) "..BZ["Stratholme"]..ALC["Comma"].._RED..BZ["Eastern Plaguelands"], 10002 },
		{ WHIT..INDENT..BZ["Naxxramas"]..ALC["Comma"].._RED..BZ["Stratholme"] },
		{ WHIT.." 3) "..BZ["Scholomance"]..ALC["Comma"].._RED..BZ["Western Plaguelands"], 10003 },
		{ WHIT.." 4) "..BZ["Shadowfang Keep"]..ALC["Comma"].._RED..BZ["Silverpine Forest"], 10004 },
		{ WHIT.." 5) "..BZ["Gnomeregan"]..ALC["Comma"].._RED..BZ["Dun Morogh"], 10005 },
		{ WHIT.." 6) "..BZ["Uldaman"]..ALC["Comma"].._RED..BZ["Badlands"], 10006 },
		{ WHIT.." 7) "..BZ["Blackrock Mountain"]..ALC["Comma"].._RED..BZ["Searing Gorge"]..ALC["Slash"]..BZ["Burning Steppes"], 10007 },
		{ WHIT..INDENT..BZ["Blackrock Depths"] },
		{ WHIT..INDENT..BZ["Lower Blackrock Spire"] },
		{ WHIT..INDENT..BZ["Upper Blackrock Spire"] },
		{ WHIT..INDENT..BZ["The Molten Core"]..ALC["Comma"].._RED..BZ["Blackrock Depths"] },
		{ WHIT..INDENT..BZ["Blackwing Lair"]..ALC["Comma"].._RED..BZ["Upper Blackrock Spire"] },
		{ WHIT.." 8) "..BZ["The Stockade"]..ALC["Comma"].._RED..BZ["Stormwind City"], 10008 },
		{ WHIT.." 9) "..BZ["The Deadmines"]..ALC["Comma"].._RED..BZ["Westfall"], 10009 },
		{ WHIT.."10) "..BZ["Zul'Gurub"]..ALC["Comma"].._RED..BZ["Northern Stranglethorn"], 10010 },
		{ WHIT.."11) "..BZ["Sunken Temple"]..ALC["Comma"].._RED..BZ["Swamp of Sorrows"], 10011 },
		{ "" },
		{ BLUE..L["Blue"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	},
	DLWest_Classic = {
		ZoneName = { BZ["Kalimdor"] },
		{ BLUE.." A) "..BZ["Warsong Gulch"]..ALC["Comma"].._RED..BZ["Ashenvale"], 10000 },
		{ WHIT.." 1) "..BZ["Blackfathom Deeps"]..ALC["Comma"].._RED..BZ["Ashenvale"], 10001 },
		{ WHIT.." 2) "..BZ["Ragefire Chasm"]..ALC["Comma"].._RED..BZ["Orgrimmar"], 10002 },
		{ WHIT.." 3) "..BZ["Wailing Caverns"]..ALC["Comma"].._RED..BZ["Northern Barrens"], 10003 },
		{ WHIT.." 4) "..BZ["Maraudon"]..ALC["Comma"].._RED..BZ["Desolace"], 10004 },
		{ WHIT.." 5) "..BZ["Dire Maul"]..ALC["Comma"].._RED..BZ["Feralas"], 10005 },
		{ WHIT.." 6) "..BZ["Razorfen Kraul"]..ALC["Comma"].._RED..BZ["Southern Barrens"], 10006 },
		{ WHIT.." 7) "..BZ["Razorfen Downs"]..ALC["Comma"].._RED..BZ["Thousand Needles"], 10007 },
		{ WHIT.." 8) "..BZ["Onyxia's Lair"]..ALC["Comma"].._RED..BZ["Dustwallow Marsh"], 10008 },
		{ WHIT.." 9) "..BZ["Zul'Farrak"]..ALC["Comma"].._RED..BZ["Tanaris"], 10009 },
		{ WHIT.."10) "..BZ["Temple of Ahn'Qiraj"]..ALC["Comma"].._RED..BZ["Silithus"], 10010 },
		{ WHIT.."11) "..BZ["Ruins of Ahn'Qiraj"]..ALC["Comma"].._RED..BZ["Silithus"], 10011 },
		{ "" },
		{ BLUE..L["Blue"]..ALC["Colon"]..ORNG..BATTLEGROUNDS },
		{ WHIT..L["White"]..ALC["Colon"]..ORNG..L["Instances"] },
	},
}

data.coords = {
}
