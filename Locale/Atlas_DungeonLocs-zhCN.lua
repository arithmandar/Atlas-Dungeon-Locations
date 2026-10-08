-- Atlas Dungeon Locations Simplified Chinese Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "zhCN", false);

if L then
	--Common
	L["Blue"] = "蓝色";
    L["Dungeon Locations"] = "地下城位置";
	L["Green"] = "绿色";
	L["Instances"] = "副本";
	L["White"] = "白色";
	-- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "集合石位于秩序圣殿内";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "团队副本入口位于秩序圣殿的圣殿深处";
    -- Config
    L["Show %s's dungeon location maps"] = "显示%s的地下城位置地图"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "更改将在下次登录后生效；或输入 '/reload' 命令重新加载插件"
end
