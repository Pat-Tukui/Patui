if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarLeft as bar #3
---------------------------------------------------------------------------

local TukuiBar3 = CreateFrame("Frame","TukuiBar3",UIParent) -- bottomrightbar
TukuiBar3:SetAllPoints(TukuiActionBarBackground)
MultiBarLeft:SetParent(TukuiBar3)

for i= 1, 12 do
	local b = _G["MultiBarLeftButton"..i]
	local b2 = _G["MultiBarLeftButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		if TukuiCF.actionbar.rightbars > 1 then
			b:SetPoint("TOPLEFT", TukuiActionBarBackgroundRight, "TOPLEFT", TukuiDB.Scale(4), TukuiDB.Scale(-4))
		else
			b:SetPoint("BOTTOM", ActionButton1, "TOP", 0, TukuiDB.Scale(4))
		end
	else
		if TukuiCF.actionbar.rightbars > 1 then
			b:SetPoint("TOP", b2, "BOTTOM", 0, -TukuiDB.buttonspacing)
		else
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	end
end

-- hide it if needed
if (TukuiCF.actionbar.bottomrows == 1 and TukuiCF.actionbar.rightbars < 2) then
	TukuiBar3:Hide()
end
