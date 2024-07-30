local PART={}
PART.ID = "hurtpainting"
PART.Name = "War Doctor's TARDIS Painting"
PART.Model = "models/doctormemes/hurt/painting.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Sound = "doctormemes/hurt/goodbye.wav"

if SERVER then

	function PART:Initialize()

		self:SetCollide(false,true)
		self:SetRenderMode( RENDERMODE_TRANSALPHA )
		self:SetColor (Color(255,255,255,0))

	end

	function PART:Use(activator,ply,command,args)

		local room = TARDIS:GetPart(self.interior,"hurtroom")

 		ply:ScreenFade( SCREENFADE.OUT, Color( 255, 255, 255, 255 ), 2, 2 )
			timer.Simple( 3, function()
 				ply:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 2, 1 )
				self:SetRenderMode( RENDERMODE_TRANSALPHA )
				self:SetColor (Color(255,255,255,0))
				self:SetCollide(false,true)
				room:SetRenderMode( RENDERMODE_TRANSALPHA )
				room:SetColor (Color(255,255,255,0))
				room:SetCollide(false,true)
 		end)
		timer.Simple( 2, function()
			ply:SetPos(Vector(room:GetPos().x, room:GetPos().y+150, room:GetPos().z))
		end)
 	end
end

TARDIS:AddPart(PART)