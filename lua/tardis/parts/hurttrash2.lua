local PART={}
PART.ID = "hurttrash2"
PART.Name = "War Doctor's TARDIS Trash 2"
PART.Model = "models/doctormemes/hurt/trash2.mdl"
PART.AutoSetup = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)