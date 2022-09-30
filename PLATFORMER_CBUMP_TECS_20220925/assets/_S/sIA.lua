SAI = Core.class()

function SAI:init() -- actors AI
	tiny.processingSystem(self) -- called on init and every frames
end

function SAI:filter(ent) -- tiny function
	return ent.ai
end

local dist
function SAI:process(ent, dt) -- tiny function
	dist = math.random(10, 50)
	if ent.x > ent.ai.startpositionx + dist then -- magik XXX
		ent.isleft, ent.isright = true, false
	elseif ent.x < ent.ai.startpositionx - dist then -- magik XXX
		ent.isleft, ent.isright = false, true
	end
end
