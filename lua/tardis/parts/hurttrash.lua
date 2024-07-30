local PART={}
PART.ID = "hurttrash"
PART.Name = "War Doctor's TARDIS Trash"
PART.Model = "models/doctormemes/hurt/trash1.mdl"
PART.AutoSetup = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)