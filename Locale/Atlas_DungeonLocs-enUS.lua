-- Atlas Dungeon Locations English Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "enUS", true);

if L then
	--Common
	L["Blue"] = "Blue";
	L["Dungeon Locations"] = "Dungeon Locations";
	L["Green"] = "Green";
	L["Instances"] = "Instances";
	L["White"] = "White";
	-- Broken Isles
	L["Meeting stone is inside the Sanctum of Order"] = "Meeting stone is inside the Sanctum of Order";
	L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "Raid entrance is inside the Sanctum Depths of Sanctum of Order";
	-- Config
	L["Show %s's dungeon location maps"] = "Show %s's dungeon location maps"
	L["Change will take effect after next login; or type '/reload' command to reload addon"] = "Change will take effect after next login; or type '/reload' command to reload addon"
end