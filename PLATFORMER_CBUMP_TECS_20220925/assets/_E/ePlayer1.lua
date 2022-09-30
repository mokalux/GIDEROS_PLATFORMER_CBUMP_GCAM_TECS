EPlayer1 = Core.class()

function EPlayer1:init(xspritelayer, x, y)
	-- ids
	self.isplayer1 = true
	self.spritelayer = xspritelayer
	local texpath = "gfx/players/hero_64_x01.png"
	self.x = x
	self.y = y
	self.sx = 1.5
	self.sy = 1.5
	self.flip = 1
	-- COMPONENTS
	-- ANIMATION
	--function CAnimation:init(xspritesheetpath, xcols, xrows, xanimspeed, bodyw, bodyh, xoffx, xoffy, sx, sy)
	self.animation = CAnimation.new(texpath, 8, 6, 1/8, 16, 24, 7, -8, self.sx, self.sy) -- sensitive!
	self.sprite = self.animation.sprite
	self.animation.sprite = nil -- free some memory?
	-- create animations
	--function CAnimation:createAnim(xanimname, xstart, xfinish)
	self.animation:createAnim(g_ANIM_DEFAULT, 1, 8)
	self.animation:createAnim(g_ANIM_IDLE, 1, 8)
	self.animation:createAnim(g_ANIM_WALK, 39, 46)
	self.animation:createAnim(g_ANIM_RUN, 39, 46)
	self.animation:createAnim(g_ANIM_JUMPUP, 11, 18)
	self.animation:createAnim(g_ANIM_JUMPDOWN, 21, 28)
	self.animation.myanimsimgs = nil -- free some memory?
	-- BODY
	--function CBody:init(xaccel, xmaxspeed, xjumpspeed)
	self.body = CBody.new(256*2, 150*1.5, 980*0.8)
	self.body.filter = function(item, other)
		-- ""touch", "cross", "slide", "bounce"
		if other.isnme then return "bounce"
		elseif other.body.isstatic then return "slide" -- ground, ...
		elseif other.iscollectible then return "cross"
		elseif other.isexit then return "cross"
		else return nil -- no collision
		end
	end
	self.w, self.h = self.animation.w, self.animation.h
end
