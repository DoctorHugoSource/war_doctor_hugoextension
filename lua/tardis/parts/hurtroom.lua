local PART={}
PART.ID = "hurtroom"
PART.Name = "War Doctor's TARDIS Room"
PART.Model = "models/doctormemes/hurt/room.mdl"
PART.AutoSetup = true
PART.Collision = true

if SERVER then

	function PART:Initialize()

		self:SetCollide(false,true)
		self:SetRenderMode( RENDERMODE_TRANSALPHA )
		self:SetColor (Color(255,255,255,0))

	end
end

TARDIS:AddPart(PART,e)