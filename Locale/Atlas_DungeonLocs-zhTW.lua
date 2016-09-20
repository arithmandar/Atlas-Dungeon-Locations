-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2016 - Arith Hsu, Atlas Team <atlas.addon@gmail.com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "zhTW", false);

if L then
--@do-not-package@
	--Common
	L["Blue"] = "藍";
	L["Dungeon Locations"] = "地下城位置";
	L["Green"] = "綠";
	L["Instances"] = "副本";
	L["White"] = "白";
	-- Broken Isles
	L["Meeting stone is inside the Sanctum of Order"] = "集合石在秩序聖所裡";
	L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = "團隊副本入口在秩序聖所裡的聖所深處";
--@end-do-not-package@
--@localization(locale="zhTW", format="lua_additive_table")@
end
