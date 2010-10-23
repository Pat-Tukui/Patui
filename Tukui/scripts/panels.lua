-- ACTION BAR PANEL
TukuiDB.buttonsize = TukuiDB.Scale(27)
TukuiDB.buttonspacing = TukuiDB.Scale(4)
TukuiDB.petbuttonsize = TukuiDB.Scale(29)
TukuiDB.petbuttonspacing = TukuiDB.Scale(4)

-- set left info panel width
TukuiCF["panels"] = {["tinfowidth"] = 370}

-- bar BG
local barbg = CreateFrame("Frame", "TukuiActionBarBackground", UIParent)
TukuiDB.CreatePanel(barbg, 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, TukuiDB.Scale(25))
barbg:SetWidth((TukuiDB.buttonsize * 12) + (TukuiDB.buttonspacing * 13))
barbg:SetHeight(TukuiDB.buttonsize * 2.2 + (TukuiDB.buttonspacing * 2))
barbg:SetFrameStrata("BACKGROUND")
barbg:SetFrameLevel(1)

-- INVISIBLE FRAME COVERING TukuiActionBarBackground
local invbarbg = CreateFrame("Frame", "InvTukuiActionBarBackground", UIParent)
invbarbg:SetSize(barbg:GetWidth(), barbg:GetHeight())
invbarbg:SetPoint("BOTTOM", 0, TukuiDB.Scale(14))

-- INFO LEFT (FOR STATS)
local ileft = CreateFrame("Frame", "TukuiInfoLeft", barbg)
TukuiDB.CreatePanel(ileft, TukuiCF["panels"].tinfowidth, 19, "BOTTOMLEFT", UIParent, "BOTTOMLEFT", TukuiDB.Scale(4), 3)
ileft:SetFrameLevel(2)
ileft:SetFrameStrata("BACKGROUND")

-- INFO RIGHT (FOR STATS)
local iright = CreateFrame("Frame", "TukuiInfoRight", barbg)
TukuiDB.CreatePanel(iright, barbg:GetWidth(), 19, "TOP", barbg, "BOTTOM", TukuiDB.Scale(0), -3)
iright:SetFrameLevel(2)
iright:SetFrameStrata("BACKGROUND")


if TukuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "TukuiMinimapStatsLeft", TukuiMinimap)
	TukuiDB.CreatePanel(minimapstatsleft, ((TukuiMinimap:GetWidth() + 4) / 2) - 1, 19, "TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 0, TukuiDB.Scale(-3))

	local minimapstatsright = CreateFrame("Frame", "TukuiMinimapStatsRight", TukuiMinimap)
	TukuiDB.CreatePanel(minimapstatsright, ((TukuiMinimap:GetWidth() + 4) / 2) -1, 19, "TOPRIGHT", TukuiMinimap, "BOTTOMRIGHT", 0, TukuiDB.Scale(-3))
end

--RIGHT BAR BACKGROUND
if TukuiCF["actionbar"].enable == true or not (IsAddOnLoaded("Dominos") or IsAddOnLoaded("Bartender4") or IsAddOnLoaded("Macaroon")) then
	local barbgr = CreateFrame("Frame", "TukuiActionBarBackgroundRight", MultiBarBottomRight)
	TukuiDB.CreatePanel(barbgr, 1, (TukuiDB.buttonsize * 12) + (TukuiDB.buttonspacing * 13), "RIGHT", UIParent, "RIGHT", TukuiDB.Scale(-3), TukuiDB.Scale(-13.5))
	if TukuiCF["actionbar"].rightbars == 1 then
		barbgr:SetWidth(TukuiDB.buttonsize + (TukuiDB.buttonspacing * 2))
	elseif TukuiCF["actionbar"].rightbars == 2 then
		barbgr:SetWidth((TukuiDB.buttonsize * 2) + (TukuiDB.buttonspacing * 3))
	elseif TukuiCF["actionbar"].rightbars == 3 then
		barbgr:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	else
		barbgr:Hide()
	end

	local petbg = CreateFrame("Frame", "TukuiPetActionBarBackground", PetActionButton1)
	if TukuiCF["actionbar"].rightbars > 0 then
		TukuiDB.CreatePanel(petbg, TukuiDB.petbuttonsize + (TukuiDB.petbuttonspacing * 2), (TukuiDB.petbuttonsize * 10) + (TukuiDB.petbuttonspacing * 11), "RIGHT", barbgr, "LEFT", TukuiDB.Scale(-6), 0)
	else
		TukuiDB.CreatePanel(petbg, TukuiDB.petbuttonsize + (TukuiDB.petbuttonspacing * 2), (TukuiDB.petbuttonsize * 10) + (TukuiDB.petbuttonspacing * 11), "RIGHT", UIParent, "RIGHT", TukuiDB.Scale(-6), TukuiDB.Scale(-13.5))
	end

	local ltpetbg1 = CreateFrame("Frame", "TukuiLineToPetActionBarBackground", petbg)
	TukuiDB.CreatePanel(ltpetbg1, 30, 265, "TOPLEFT", petbg, "TOPRIGHT", 0, TukuiDB.Scale(-33))
	ltpetbg1:SetFrameLevel(0)
	ltpetbg1:SetAlpha(.8)
end

--BATTLEGROUND STATS FRAME
if TukuiCF["datatext"].battleground == true then
local bgframe = CreateFrame("Frame", "TukuiInfoLeftBattleGround", UIParent)
TukuiDB.CreatePanel(bgframe, 1, 1, "TOPLEFT", UIParent, "BOTTOMLEFT", 0, 0)
bgframe:SetAllPoints(ileft)
bgframe:SetFrameStrata("LOW")
bgframe:SetFrameLevel(0)
bgframe:EnableMouse(true)
end

--CASTBAR
local castbar = CreateFrame("Frame", "Castbar", barbg)
TukuiDB.CreatePanel(castbar, 375, 30, "BOTTOM", barbg, "TOP", 0, TukuiDB.Scale(3))
Castbar:SetAlpha(0)

-- CHAT BG LEFT
local chatleftbg = CreateFrame("Frame", "ChatLeft", TukuiInfoLeft)
TukuiDB.CreateTransparentPanel(chatleftbg, TukuiCF["panels"].tinfowidth, TukuiDB.Scale(147), "BOTTOM", TukuiInfoLeft, "TOP", 0, TukuiDB.Scale(3))


if TukuiCF["actionbar"].splitbar == true and TukuiCF["actionbar"].bottomrows == 2 then
	-- Left Split Bar
    local leftbg = CreateFrame("Frame", "TukuiSplitActionBarLeftBackground", UIParent)
	TukuiDB.CreatePanel(leftbg, 1, 1, "RIGHT", barbg, "LEFT", TukuiDB.Scale(-3), 0)
	leftbg:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	leftbg:SetHeight((TukuiDB.buttonsize * 2.05) + (TukuiDB.buttonspacing * 3))
	leftbg:SetFrameStrata("LOW")
	leftbg:SetFrameLevel(1)
 
	-- Right Split Bar
	local rightbg = CreateFrame("Frame", "TukuiSplitActionBarRightBackground", UIParent)
	TukuiDB.CreatePanel(rightbg, 1, 1, "LEFT", barbg, "RIGHT", TukuiDB.Scale(3), 0)
	rightbg:SetWidth((TukuiDB.buttonsize * 3) + (TukuiDB.buttonspacing * 4))
	rightbg:SetHeight((TukuiDB.buttonsize * 2.05) + (TukuiDB.buttonspacing * 3))
	rightbg:SetFrameStrata("LOW")
	rightbg:SetFrameLevel(1)
end

if TukuiCF["actionbar"].splitbar == true then
    -- Right Split Panel
    local rightbar = CreateFrame("Frame", "RightSplitUnderPanel", UIParent)
    TukuiDB.CreatePanel(rightbar, TukuiSplitActionBarRightBackground:GetWidth(), 19, "TOP", TukuiSplitActionBarRightBackground, "BOTTOM", 0, -3)
    rightbar:SetFrameLevel(2)
    rightbar:SetFrameStrata("BACKGROUND")
     
	-- Left Split Panel
    local leftbar = CreateFrame("Frame", "LeftSplitUnderPanel", UIParent)
    TukuiDB.CreatePanel(leftbar, TukuiSplitActionBarLeftBackground:GetWidth(), 19, "TOP", TukuiSplitActionBarLeftBackground, "BOTTOM", 0, -3)
    leftbar:SetFrameLevel(2)
    leftbar:SetFrameStrata("BACKGROUND")
end


