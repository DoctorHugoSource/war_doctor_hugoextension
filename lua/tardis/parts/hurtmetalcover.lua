local PART={}
PART.ID = "hurtmetalcover"
PART.Name = "War Doctor's TARDIS Metal Cover"
PART.Model = "models/doctormemes/hurt/metal cover.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)