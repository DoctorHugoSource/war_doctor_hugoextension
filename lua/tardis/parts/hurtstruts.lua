local PART={}
PART.ID = "hurtstruts"
PART.Name = "War Doctor's TARDIS Struts"
PART.Model = "models/doctormemes/hurt/strutsnew.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)