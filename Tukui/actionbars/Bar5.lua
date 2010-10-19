if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarBottomRight as bar #5
---------------------------------------------------------------------------

local TukuiBar5 = CreateFrame("Frame","TukuiBar5",UIParent) -- MultiBarBottomRight
TukuiBar5:SetAllPoints(TukuiActionBarBackground)
MultiBarBottomRight:SetParent(TukuiBar5)

for i= 1, 12 do
	local b = _G["MultiBarBottomRightButton"..i]
	local b2 = _G["MultiBarBottomRightButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		b:SetPoint("TOPRIGHT", TukuiActionBarBackgroundRight, "TOPRIGHT", TukuiDB.Scale(-4), TukuiDB.Scale(-4))
	else
		b:SetPoint("TOP", b2, "BOTTOM", 0, -TukuiDB.buttonspacing)
	end	
end

-- hide it if needed
if TukuiCF.actionbar.rightbars < 1 then
	TukuiBar5:Hide()
end