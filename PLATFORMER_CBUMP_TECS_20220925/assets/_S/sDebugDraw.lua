SDebugDraw = Core.class()

function SDebugDraw:init()
	tiny.processingSystem(self) -- called once on init and every frames
end

function SDebugDraw:filter(ent) -- tiny function
	return ent.body
end

function SDebugDraw:onAdd(ent) -- tiny function
	local w, h = ent.w, ent.h
	local pixel = Pixel.new(0xff00ff, 0.5, w, h)
	ent.spritelayer:addChild(pixel)
	ent.bodyDraw = pixel
end

function SDebugDraw:onRemove(ent) -- tiny function
	ent.spritelayer:removeChild(ent.bodyDraw)
	ent = nil
end

function SDebugDraw:process(ent, dt) -- tiny function
	ent.bodyDraw:setPosition(ent.x, ent.y)
end
