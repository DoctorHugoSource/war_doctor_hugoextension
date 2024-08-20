local PART={}
PART.ID = "hurtvoicebutton"
PART.Name = "War Doctor's TARDIS Voice Button"
PART.Model = "models/doctormemes/hurt/voice button.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 3
PART.Sound = "doctormemes/hurt/voice button.wav"
PART.ShouldTakeDamage = true
PART.Control = "timeswap"

if SERVER then
	function PART:Use(activator)
		TARDIS:Control(self.Control, activator)
		if ( self:GetOn() ) then
			self:SetMaterial("models/doctormemes/hurt/Trash 3")
		else
			self:SetMaterial("models/doctormemes/hurt/Button Light")
		end
 	end
end


TARDIS:AddPart(PART,e)

