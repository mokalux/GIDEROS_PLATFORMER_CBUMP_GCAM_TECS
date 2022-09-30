SBumpDynamicBodies = Core.class()

function SBumpDynamicBodies:init(xcworld, xgcam)
	tiny.processingSystem(self) -- called once on init and every frames
	self.cworld = xcworld -- cbump world
	self.gcam = xgcam -- rrraptor gideros camera (put here for shakes)
end

function SBumpDynamicBodies:filter(ent) -- tiny function
	return ent.body and not ent.body.isstatic
end

function SBumpDynamicBodies:onAdd(ent) -- tiny function
	self.cworld:add(ent, ent.x, ent.y, ent.w, ent.h)
end

function SBumpDynamicBodies:onRemove(ent) -- tiny function
	self.cworld:remove(ent) -- remove ent from cworld (or not) when dead
end

local b
function SBumpDynamicBodies:process(ent, dt) -- tiny function
	-- perfs?
	b = ent.body
	-- gravity
	b.vy += 980 * 2 * dt -- magik XXX
	-- cbump
	local goalx = ent.x + b.vx * dt
	local goaly = ent.y + b.vy * dt
	local nextx, nexty, collisions, len = self.cworld:move(ent, goalx, goaly, b.filter)
	-- collisions
	for i = 1, len do
		local col = collisions[i]
		-- reset vy to 0 (don't accumulate vy when entity is grounded)
		if col.normal.y == 1 or col.normal.y == -1 then
			col.item.body.vy = 0
		end
		-- sprite is on floor
		if col.normal.y == -1 then
			if col.item.isplayer1 and col.other.isnme then
				self.gcam:shake(0.5 * col.other.sx) -- shakes vary with nme scale x ;-)
				tworld:removeEntity(col.other) -- kill on nme jump
			end
			col.item.isonfloor = true
		end
		if col.type == "bounce" then -- trying to make entities bounce off each other!
		end
	end
	-- anim state
	if ent.isonfloor then
		if b.vx == 0 then ent.animation.currentanim = g_ANIM_IDLE
		else ent.animation.currentanim = g_ANIM_WALK
		end
	else
		if b.vy < 0 then ent.animation.currentanim = g_ANIM_JUMPUP
		else ent.animation.currentanim = g_ANIM_JUMPDOWN
		end
	end
	-- move & flip
	ent.x, ent.y = nextx, nexty
	ent.sprite:setPosition(ent.x, ent.y)
	ent.animation.bmp:setScale(ent.sx * ent.flip, ent.sy)
end
