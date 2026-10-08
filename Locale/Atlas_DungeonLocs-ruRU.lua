-- Atlas Dungeon Locations Russian Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "ruRU", false);

if L then
	--Common
	L["Blue"] = "Синий";
	L["Dungeon Locations"] = "Расположение подземелий";
	L["Green"] = "Зелёный";
	L["Instances"] = "Подземелья";
	L["White"] = "Белый";
	-- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "Камень встреч находится внутри Святилища Порядка.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "Вход в рейд находится в глубинах святилища внутри Святилища Порядка.";
    -- Config
    L["Show %s's dungeon location maps"] = "Показывать карты расположения подземелий: %s"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "Изменение вступит в силу при следующем входе в игру; также можно ввести '/reload', чтобы перезагрузить аддон."
end
