local PART={}
PART.ID = "hurtbelttrash"
PART.Name = "War Doctor's TARDIS Belt Trash"
PART.Model = "models/doctormemes/hurt/belt trash.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)