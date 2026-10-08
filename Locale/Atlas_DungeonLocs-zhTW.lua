-- Atlas Dungeon Locations Traditional Chinese Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "zhTW", false);

if L then
	--Common
	L["Blue"] = "藍";
	L["Dungeon Locations"] = "副本位置";
	L["Green"] = "綠";
	L["Instances"] = "副本";
	L["White"] = "白";
	-- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "集合石位於秩序聖所內";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "團隊副本入口位於秩序聖所的聖所深處";
	-- Config
	L["Show %s's dungeon location maps"] = "顯示%s陣營的副本位置圖"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "變更將於下次登入後生效；或輸入 '/reload' 指令重新載入插件"
end
