CBody = Core.class()

function CBody:init(xaccel, xmaxspeed, xjumpspeed)
	-- body physics properties
	self.vx = 0
	self.vy = 0
	self.accel = xaccel
	self.maxspeed = xmaxspeed
	self.jumpspeed = xjumpspeed
end
