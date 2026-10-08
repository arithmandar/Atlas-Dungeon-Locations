-- Atlas Dungeon Locations Italian Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "itIT", false);

if L then
    --Common
    L["Blue"] = "Bleu";
    L["Dungeon Locations"] = "Emplacements des donjons";
    L["Green"] = "Vert";
    L["Instances"] = "Instances";
    L["White"] = "Blanc";
    -- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "La pierre de rencontre se trouve à l’intérieur du sanctuaire de l’Ordre.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "L’entrée du raid se trouve dans les profondeurs du sanctuaire, à l’intérieur du sanctuaire de l’Ordre.";
    -- Config
    L["Show %s's dungeon location maps"] = "Afficher les cartes des emplacements des donjons de %s"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "La modification prendra effet à la prochaine connexion ; vous pouvez également saisir '/reload' pour recharger l’addon."
end