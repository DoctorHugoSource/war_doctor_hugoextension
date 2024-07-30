local PART={}
PART.ID = "hurtscreenanimation"
PART.Name = "War Doctor's TARDIS Screen Animation"
PART.Model = "models/doctormemes/hurt/screenanimation.mdl"
PART.AutoSetup = true

if SERVER then
	function PART:Draw()
		self:DrawModel()
	end
end

TARDIS:AddPart(PART)