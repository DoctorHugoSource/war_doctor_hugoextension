local PART={}
PART.ID = "hurtthrottle"
PART.Name = "War Doctor's TARDIS Throttle"
PART.Model = "models/doctormemes/hurt/throttle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 6
PART.Sound = "doctormemes/hurt/throttle.wav"
PART.ShouldTakeDamage = true
PART.Control = "teleport_double"

-- idk how to work with sequences and i dont care enough right now so ill do it later

-- if SERVER then
-- 	function PART:Use(ply)
-- 		if self.exterior:GetData("teleport_double") == true or self.exterior:GetData("vortex") == true
-- 		or not self.interior:GetSequencesEnabled()
-- 		then
-- 		TARDIS:Control("teleport_double", ply)
-- 		else
-- 		TARDIS:ErrorMessage(ply, "Control Sequences are enabled. You must use the sequence.")
-- 		end
-- 	end
-- end

TARDIS:AddPart(PART,e)

