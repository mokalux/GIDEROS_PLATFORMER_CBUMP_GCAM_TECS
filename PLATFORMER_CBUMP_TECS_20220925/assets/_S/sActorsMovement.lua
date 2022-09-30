SActorsMovement = Core.class()

function SActorsMovement:init()
	tiny.processingSystem(self) -- called once on init and every frames
end

function SActorsMovement:filter(ent) -- tiny function
	return ent.body and not ent.isstatic
end

function SActorsMovement:process(ent, dt) -- tiny function
	-- perfs?
	local b = ent.body
	-- movements
	if ent.isleft and not ent.isright then
		ent.flip = -1
		b.vx -= b.accel * dt
		if b.vx < -b.maxspeed then b.vx = -b.maxspeed end
	elseif ent.isright and not ent.isleft then 
		ent.flip = 1
		b.vx += b.accel * dt
		if b.vx > b.maxspeed then b.vx = b.maxspeed end
	else
		b.vx = 0
	end
	if ent.isup and ent.isonfloor then 
		ent.isup = false -- to refine
		ent.isonfloor = false
		b.vy = -b.jumpspeed
	elseif not ent.isonfloor then
		if ent.isdown then b.vy = b.jumpspeed * 2 end -- dash down ;-)
	end
end
