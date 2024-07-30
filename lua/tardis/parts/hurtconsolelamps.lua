local PART={}
PART.ID = "hurtconsolelamps"
PART.Name = "War Doctor's TARDIS Console Lamps"
PART.Model = "models/doctormemes/hurt/console lamps.mdl"
PART.AutoSetup = true


if SERVER then
	function PART:Think()
	local power=self.exterior:GetData("power-state")
   	local exterior=self.exterior
	if     	power == false then
		self:SetSubMaterial(1,"models/doctormemes/hurt/Console Lamps Off")
	else
		if exterior:GetData("vortex") or exterior:GetData("flight") or exterior:GetData("float") or exterior:GetData("teleport")  then
			self:SetSubMaterial(1,"models/doctormemes/hurt/Console Lamps Animated")
		else
			self:SetSubMaterial(1,"models/doctormemes/hurt/Console Lamps Static")
		end
	end
	end
end

TARDIS:AddPart(PART,e)