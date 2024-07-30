local PART={}
PART.ID = "hurtswitch"
PART.Name = "War Doctor's TARDIS Ceramic Switch"
PART.Model = "models/doctormemes/hurt/switch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 6
PART.Sound = "doctormemes/hurt/switch.wav"
PART.Control = "power"
PART.ShouldTakeDamage = true

if SERVER then

	function PART:Think()

	local power=self.exterior:GetData("power-state")
	local warning=self.exterior:GetData("health-warning")
	local exterior=self.exterior
	local interior=self.interior
	local screenanimation=interior:GetPart("hurtscreenanimation")
	local console=interior:GetPart("hurtconsole")
	local glass=interior:GetPart("hurtglass")
	local throttle=interior:GetPart("hurtthrottle")
	local lowpower = interior:GetData("lowpowermode", false)

		if not power and (not lowpower) then
			screenanimation:SetSubMaterial(0 , "models/doctormemes/hurt/Black")
			console:SetSubMaterial(1 , "models/doctormemes/hurt/crystal off")
			console:SetSubMaterial(2 , "models/doctormemes/hurt/crystal off")
			interior:SetSubMaterial(5 , "models/doctormemes/hurt/roundels off")
			interior:SetSubMaterial(14 , "models/doctormemes/hurt/lamps off")
			glass:SetSubMaterial(0 , "models/doctormemes/hurt/glass no env")
			console:SetSubMaterial(0 , "models/doctormemes/hurt/console base no env")
			throttle:SetSubMaterial(1 , "models/doctormemes/hurt/red off")
			throttle:SetSubMaterial(2 , "models/doctormemes/hurt/green off")
			interior:SetSubMaterial(8 , "models/doctorwho1200/hurt/doors_l_off")
		elseif lowpower then
			screenanimation:SetSubMaterial(0 , "models/doctormemes/hurt/Black")
			console:SetSubMaterial(1 , "models/doctormemes/hurt/crystal shine")
			console:SetSubMaterial(2 , "models/doctormemes/hurt/crystal")
			interior:SetSubMaterial(5 , "models/doctormemes/hurt/roundels off")
			interior:SetSubMaterial(14 , "models/doctormemes/hurt/lamps_low")
			glass:SetSubMaterial(0 , "models/doctormemes/hurt/glass")
			console:SetSubMaterial(0 , "models/doctormemes/hurt/console base")
			throttle:SetSubMaterial(1 , "models/doctormemes/hurt/red")
			throttle:SetSubMaterial(2 , "models/doctormemes/hurt/green")
			interior:SetSubMaterial(8 , "models/doctorwho1200/hurt/doors_l")
		else
			if warning == true then
				interior:SetSubMaterial(14 , "models/doctormemes/hurt/lamps warn")
			else
				interior:SetSubMaterial(14 , "models/doctormemes/hurt/lamps")
			end

			screenanimation:SetSubMaterial(0 , "models/doctormemes/hurt/animation")
			console:SetSubMaterial(1 , "models/doctormemes/hurt/crystal shine")
			console:SetSubMaterial(2 , "models/doctormemes/hurt/crystal")
			interior:SetSubMaterial(5 , "models/doctormemes/hurt/roundels")
			glass:SetSubMaterial(0 , "models/doctormemes/hurt/glass")
			console:SetSubMaterial(0 , "models/doctormemes/hurt/console base")
			throttle:SetSubMaterial(1 , "models/doctormemes/hurt/red")
			throttle:SetSubMaterial(2 , "models/doctormemes/hurt/green")
			interior:SetSubMaterial(8 , "models/doctorwho1200/hurt/doors_l")
		end
	end
end
TARDIS:AddPart(PART,e)

