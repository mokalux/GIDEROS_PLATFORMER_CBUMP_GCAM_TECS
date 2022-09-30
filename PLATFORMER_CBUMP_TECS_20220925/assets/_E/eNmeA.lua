ENmeA = Core.class()

function ENmeA:init(xspritelayer, x, y)
	-- ids
	self.isnme = true
	self.spritelayer = xspritelayer
	local texpath = "gfx/nmes/enemy01.png"
	self.x = x
	self.y = y
	self.sx = math.random(20, 25) / 10 -- random size on x
	self.sy = math.random(20, 25) / 10 -- random size on y
	self.flip = 1
	-- COMPONENTS
	-- ANIMATION
	--function CAnimation:init(xspritesheetpath, xcols, xrows, xanimspeed, bodyw, bodyh, xoffx, xoffy, sx, sy)
	self.animation = CAnimation.new(texpath, 23, 4, 1/16, 16, 16, 8, 1, self.sx, self.sy) -- sensitive!
	self.sprite = self.animation.sprite
	self.animation.sprite = nil -- free some memory?
	-- create animations
	--function CAnimation:createAnim(xanimname, xstart, xfinish)
	self.animation:createAnim(g_ANIM_DEFAULT, 47, 50)
	self.animation:createAnim(g_ANIM_WALK, 47, 50)
	self.animation:createAnim(g_ANIM_JUMPUP, 52, 53)
	self.animation:createAnim(g_ANIM_JUMPDOWN, 52, 53)
	self.animation.myanimsimgs = nil -- free some memory?
	-- BODY
	--function CBody:init(xaccel, xmaxspeed, xjumpspeed)
	self.body = CBody.new(8*32, 8*1, 980*0.9)
	self.body.filter = function(item, other)
		-- ""touch", "cross", "slide", "bounce"
		if other.isplayer1 then return "bounce"
		elseif other.body.isstatic then return "slide" -- ground, ...
		else return nil -- no collision
		end
	end
	-- AI
	self.ai = CAI.new(self.x)
	self.isright = true -- start moving for the AI
	-- end
	self.w, self.h = self.animation.w, self.animation.h
end
