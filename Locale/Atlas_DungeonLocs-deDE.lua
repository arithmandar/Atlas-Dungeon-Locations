-- Atlas Dungeon Locations German Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "deDE", false);

if L then
	--Common
	L["Blue"] = "Blau";
    L["Dungeon Locations"] = "Dungeonstandorte";
	L["Green"] = "Grün";
	L["Instances"] = "Instanzen";
	L["White"] = "Weiß";
	-- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "Der Versammlungsstein befindet sich im Sanktum der Ordnung.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "Der Schlachtzugseingang befindet sich in den Tiefen des Sanktums im Sanktum der Ordnung.";
    -- Config
    L["Show %s's dungeon location maps"] = "Dungeonstandortkarten für %s anzeigen"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "Die Änderung wird bei der nächsten Anmeldung wirksam. Alternativ kannst du '/reload' eingeben, um das Addon neu zu laden."
end
