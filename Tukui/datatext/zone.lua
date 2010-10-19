-- Zone Text
if not TukuiCF["datatext"].zone == nil or TukuiCF["datatext"].zone > 0 then
	local Stat = CreateFrame("Frame")

	local Text  = TukuiInfoLeft:CreateFontString(nil, "OVERLAY")
	Text:SetFont(TukuiCF.media.font, TukuiCF["datatext"].fontsize)
	TukuiDB.PP(TukuiCF["datatext"].zone, Text)
   
	local int = 1

	local function Update(self, t)
	  int = int - t
	  if int < 0 then
		 if GetMinimapZoneText() == "Putricide's Laboratory of Alchemical Horrors and Fun" then
			Text:SetText("Putricides's Laboratory")
		 else
			Text:SetText(GetMinimapZoneText())
		 end
		 int = 1
	  end     
	end

	Stat:SetScript("OnUpdate", Update)
	Update(Stat, 10)
end