if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- Manage all others stuff for actionbars
---------------------------------------------------------------------------

local TukuiOnLogon = CreateFrame("Frame")
TukuiOnLogon:RegisterEvent("PLAYER_ENTERING_WORLD")
TukuiOnLogon:SetScript("OnEvent", function(self, event)
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")	
	SetActionBarToggles(1, 1, 1, 1, 0)
	SetCVar("alwaysShowActionBars", 0)	
	if TukuiCF["actionbar"].showgrid == true then
		ActionButton_HideGrid = TukuiDB.dummy
		for i = 1, 12 do
			local button = _G[format("ActionButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)

			button = _G[format("BonusActionButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)
			
			button = _G[format("MultiBarRightButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)

			button = _G[format("MultiBarBottomRightButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)
			
			button = _G[format("MultiBarLeftButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)
			
			button = _G[format("MultiBarBottomLeftButton%d", i)]
			button:SetAttribute("showgrid", 1)
			ActionButton_ShowGrid(button)
		end
	end
end)

-- vehicle button under minimap
local vehicle = CreateFrame("BUTTON", nil, UIParent, "SecureActionButtonTemplate")
vehicle:SetWidth(TukuiDB.Scale(26))
vehicle:SetHeight(TukuiDB.Scale(26))
vehicle:SetPoint("RIGHT", leftbar, "LEFT", TukuiDB.Scale(0), TukuiDB.Scale(0))

vehicle:RegisterForClicks("AnyUp")
vehicle:SetScript("OnClick", function() VehicleExit() end)

vehicle:SetNormalTexture("Interface\\AddOns\\Tukui\\media\\textures\\vehicleexit")
vehicle:SetPushedTexture("Interface\\AddOns\\Tukui\\media\\textures\\vehicleexit")
vehicle:SetHighlightTexture("Interface\\AddOns\\Tukui\\media\\textures\\vehicleexit")
TukuiDB.SetTemplate(vehicle)

vehicle:RegisterEvent("UNIT_ENTERING_VEHICLE")
vehicle:RegisterEvent("UNIT_ENTERED_VEHICLE")
vehicle:RegisterEvent("UNIT_EXITING_VEHICLE")
vehicle:RegisterEvent("UNIT_EXITED_VEHICLE")
vehicle:RegisterEvent("ZONE_CHANGED_NEW_AREA")
vehicle:SetScript("OnEvent", function(self, event, arg1)
	if (((event=="UNIT_ENTERING_VEHICLE") or (event=="UNIT_ENTERED_VEHICLE")) and arg1 == "player") then
		vehicle:SetAlpha(1)
	elseif (((event=="UNIT_EXITING_VEHICLE") or (event=="UNIT_EXITED_VEHICLE")) and arg1 == "player") or (event=="ZONE_CHANGED_NEW_AREA" and not UnitHasVehicleUI("player")) then
		vehicle:SetAlpha(0)
	end
end)  
vehicle:SetAlpha(0)

-- mouseover
db = TukuiCF["actionbar"]
 
local function mouseoverpet(alpha)
    TukuiPetActionBarBackground:SetAlpha(alpha)
    for i=1, NUM_PET_ACTION_SLOTS do
        local pb = _G["PetActionButton"..i]
        pb:SetAlpha(alpha)
    end
end
 
local function rightbaralpha(alpha)
    TukuiActionBarBackgroundRight:SetAlpha(alpha)
    if db.rightbars > 1 then
        if MultiBarLeft:IsShown() then
            for i=1, 12 do
                local pb = _G["MultiBarLeftButton"..i]
                pb:SetAlpha(alpha)
            end
            MultiBarLeft:SetAlpha(alpha)
        end
    end
    if db.rightbars > 0 then
        if MultiBarBottomRight:IsShown() then
            for i=1, 12 do
                local pb = _G["MultiBarBottomRightButton"..i]
                pb:SetAlpha(alpha)
            end
            MultiBarBottomRight:SetAlpha(alpha)
        end
    end
end
 
if db.rightbarmouseover == true and db.rightbars > 0 then
    TukuiActionBarBackgroundRight:EnableMouse(true)
    TukuiPetActionBarBackground:EnableMouse(true)
    TukuiActionBarBackgroundRight:SetAlpha(0)
    TukuiPetActionBarBackground:SetAlpha(0)
    TukuiActionBarBackgroundRight:SetScript("OnEnter", function(self) mouseoverpet(1) rightbaralpha(1) end)
    TukuiActionBarBackgroundRight:SetScript("OnLeave", function(self) mouseoverpet(0) rightbaralpha(0) end)
    TukuiPetActionBarBackground:SetScript("OnEnter", function(self) mouseoverpet(1) rightbaralpha(1) end)
    TukuiPetActionBarBackground:SetScript("OnLeave", function(self) mouseoverpet(0) rightbaralpha(0) end)
    for i=1, 12 do
        local pb = _G["MultiBarBottomRightButton"..i]
        pb:SetAlpha(0)
        pb:HookScript("OnEnter", function(self) mouseoverpet(1) rightbaralpha(1) end)
        pb:HookScript("OnLeave", function(self) mouseoverpet(0) rightbaralpha(0) end)
        if not (db.rightbars == 1 and db.bottomrows == 2 and TukuiDB.lowversion ~= true) then
            local pb = _G["MultiBarLeftButton"..i]
            pb:SetAlpha(0)
            pb:HookScript("OnEnter", function(self) mouseoverpet(1) rightbaralpha(1) end)
            pb:HookScript("OnLeave", function(self) mouseoverpet(0) rightbaralpha(0) end)
        end
    end
    for i=1, NUM_PET_ACTION_SLOTS do
        local pb = _G["PetActionButton"..i]
        pb:SetAlpha(0)
        pb:HookScript("OnEnter", function(self) mouseoverpet(1) rightbaralpha(1) end)
        pb:HookScript("OnLeave", function(self) mouseoverpet(0) rightbaralpha(0) end)
    end
end

