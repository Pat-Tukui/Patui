if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarRight as bar #4
---------------------------------------------------------------------------

local TukuiBar4 = CreateFrame("Frame","TukuiBar4",UIParent) -- bottomrightbar
MultiBarRight:SetParent(TukuiBar4)

for i= 1, 12 do
    local b = _G["MultiBarRightButton"..i]
    local b2 = _G["MultiBarRightButton"..i-1]
    b:ClearAllPoints()
    if TukuiCF["actionbar"].splitbar ~= true then
        if i == 1 then
            b:SetPoint("TOP", TukuiActionBarBackgroundRight, "TOP", 0, TukuiDB.Scale(-4))
        else
            b:SetPoint("TOP", b2, "BOTTOM", 0, -TukuiDB.buttonspacing)
        end
    else
        if TukuiCF.actionbar.bottomrows == 2 then
            if i == 1 then
                b:SetPoint("TOPLEFT", TukuiSplitActionBarLeftBackground, "TOPLEFT", TukuiDB.buttonspacing, -TukuiDB.buttonspacing)
            elseif i < 4 or ( i > 4 and i < 7 ) or ( i > 7 and i < 10 ) or (i > 10) then
                b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
            elseif i == 4 then
                b:SetPoint("BOTTOMLEFT", TukuiSplitActionBarLeftBackground, "BOTTOMLEFT", TukuiDB.buttonspacing, TukuiDB.buttonspacing)
            elseif i == 7 then
                b:SetPoint("TOPLEFT", TukuiSplitActionBarRightBackground, "TOPLEFT", TukuiDB.buttonspacing, -TukuiDB.buttonspacing)
            elseif i == 10 then
                b:SetPoint("BOTTOMLEFT", TukuiSplitActionBarRightBackground, "BOTTOMLEFT", TukuiDB.buttonspacing, TukuiDB.buttonspacing)
            end
        end
    end
end

-- hide it if needed
if TukuiCF.actionbar.splitbar == false then
	TukuiBar4:Hide()
end