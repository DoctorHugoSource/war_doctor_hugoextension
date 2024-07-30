local PART={}
PART.ID = "hurtstasiscube"
PART.Name = "War Doctor's TARDIS Stasis Cube"
PART.Model = "models/doctormemes/hurt/stasiscube.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.UseTransparencyFix = true

if SERVER then

	local onepress = true

	function PART:Initialize()
		onepress = true
	end

	function PART:Use(activator,ply,command,args)

		local painting = TARDIS:GetPart(self.interior,"hurtpainting")
		local room = TARDIS:GetPart(self.interior,"hurtroom")

		if onepress then
			onepress = !onepress
			self:EmitSound(Sound("doctormemes/hurt/hello.wav"))
			painting:SetRenderMode( RENDERMODE_NORMAL )
			painting:SetColor (Color(255,255,255,255))
			painting:SetCollide(true,true)
			room:SetRenderMode( RENDERMODE_NORMAL )
			room:SetColor (Color(255,255,255,255))
			room:SetCollide(true,true)

			ply:ScreenFade( SCREENFADE.OUT, Color( 255, 255, 255, 255 ), 2, 2 )
			timer.Simple( 3, function()
				ply:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 2, 1 )

 			end)
			timer.Simple( 2, function()
				ply:SetPos(Vector(room:GetPos().x, room:GetPos().y+50, room:GetPos().z-110))
			end)
		else
		return end
 	end

end

TARDIS:AddPart(PART)