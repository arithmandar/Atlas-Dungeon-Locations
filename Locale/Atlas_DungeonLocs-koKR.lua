-- Atlas Dungeon Locations Korean Localization

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "koKR", false);

if L then
	--Common
    L["Blue"] = "파란색";
    L["Dungeon Locations"] = "던전 위치";
    L["Green"] = "녹색";
    L["Instances"] = "인스턴스";
    L["White"] = "흰색";
    -- Broken Isles
    L["Meeting stone is inside the Sanctum of Order"] = "만남의 돌은 질서의 성소 안에 있습니다.";
    L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "공격대 입구는 질서의 성소 안쪽 성소 심층부에 있습니다.";
    -- Config
    L["Show %s's dungeon location maps"] = "%s의 던전 위치 지도 표시"
    L["Change will take effect after next login; or type '/reload' command to reload addon"] = "변경 사항은 다음 로그인 시 적용됩니다. 또는 '/reload' 명령어를 입력하여 애드온을 다시 불러올 수 있습니다."
end
