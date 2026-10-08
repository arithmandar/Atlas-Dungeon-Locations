-- Atlas Dungeon Locations Spanish Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "esES", false);

if L then
	--Common
	L["Blue"] = "Azul";
    L["Dungeon Locations"] = "Ubicaciones de mazmorras";
	L["Green"] = "Verde";
    L["Instances"] = "Instancias";
    L["White"] = "Blanco";
    -- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "La piedra de encuentro está dentro del Sagrario del Orden.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "La entrada de la banda está en las profundidades del Sagrario, dentro del Sagrario del Orden.";
    -- Config
    L["Show %s's dungeon location maps"] = "Mostrar los mapas de ubicación de mazmorras de %s"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "El cambio se aplicará la próxima vez que inicies sesión; también puedes escribir '/reload' para recargar el addon."
end
