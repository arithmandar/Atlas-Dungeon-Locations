-- Atlas Dungeon Locations Brazilian Portuguese Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "ptBR", false);

if L then
	--Common
	L["Blue"] = "Azul";
    L["Dungeon Locations"] = "Localização de masmorras";
	L["Green"] = "Verde";
	L["Instances"] = "Instâncias";
	L["White"] = "Branco";
	-- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "A pedra de encontro fica dentro do Sacrário da Ordem.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "A entrada do raide fica nas profundezas do sacrário, dentro do Sacrário da Ordem.";
    -- Config
    L["Show %s's dungeon location maps"] = "Mostrar os mapas de localização de masmorras de %s"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "A alteração terá efeito no próximo login; ou digite '/reload' para recarregar o addon."
end
