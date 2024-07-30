--War Doctor's TARDIS Interior - Control Sequences (advanced mode)

local Seq = {
    ID = "hurt_sequences",

    ["hurtscreen"] = {
        Controls = {
            "hurtlock1",
            "hurtweirdlever",
            "hurtbiglever",
            "hurtsmalllever",
	    "hurtthrottle"
        },

        OnFinish = function(self)
		if self.exterior:GetData("vortex") then
            		if IsValid(self) and IsValid(self) then
               			self.exterior:Mat()
            		end
      		end
		if not self.exterior:GetData("vortex") then
		        if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end
	end
    },
	["hurtkeypad"] = {
        Controls = {
            "hurtlock2",
            "hurtblueball",
            "hurtbiglever",
            "hurtsmalllever",
	    "hurtthrottle"
        },

        OnFinish = function(self)
		if self.exterior:GetData("vortex") then
            		if IsValid(self) and IsValid(self) then
               			self.exterior:Mat()
            		end
      		end
		if not self.exterior:GetData("vortex") then
		        if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end
	end
    }
}

TARDIS:AddControlSequence(Seq)