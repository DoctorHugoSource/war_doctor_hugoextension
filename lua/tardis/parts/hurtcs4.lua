local PART={}
PART.ID = "hurtcs4"
PART.Name = "War Doctor's TARDIS Control Switch 4"
PART.Model = "models/doctormemes/hurt/cs4.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 4
PART.Sound = "doctormemes/hurt/toggle.wav"
PART.Control = "toggleextskin"
PART.ShouldTakeDamage = true

    if SERVER then
	function PART:Use(activator)

		if self.exterior:GetSkin() == 2 or self.exterior:GetSkin() == 0  then

		   self.exterior:SetSkin(1)
		else
		   self.exterior:SetSkin(0)
		end
 	end
end

TARDIS:AddPart(PART,e)

