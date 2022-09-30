EAnimatedImages = Core.class()

function EAnimatedImages:init(xspritelayer, xtexpath, x, y)
	-- ids
	self.spritelayer = xspritelayer
	local texpath = xtexpath
	self.x = x
	self.y = y
	self.sx = math.random(20, 30) / 10 -- random size on x
	self.sy = self.sx
	self.flip = 1
	-- COMPONENTS
	-- ANIMATION
	--function CAnimation:init(xspritesheetpath, xcols, xrows, xanimspeed, bodyw, bodyh, xoffx, xoffy, sx, sy)
	self.animation = CAnimation.new(texpath, 10, 11, 1/20, 0, 0, 0, 0, self.sx, self.sy) -- less sensitive ;-)
	self.sprite = self.animation.sprite
	self.animation.sprite = nil -- free some memory?
	-- create animations
	--function CAnimation:createAnim(xanimname, xstart, xfinish)
	self.animation:createAnim(g_ANIM_DEFAULT, 1, 109)
	self.animation.myanimsimgs = nil -- free some memory?
	-- test
	self.animation.currentframe = math.random(#self.animation.anims[g_ANIM_DEFAULT])
	print(self.animation.currentframe) -- trying to start at different frames but doesn't work :-(
	-- for the color, scale and position, I could just use
	-- simple functions here but I decided to try the ECS way (or is it?)!
	-- COLOR
	CColor.new(self.sprite, 0.5, 1.5, 0.8, 1.1)
	-- SCALE
	CScale:init(self.sprite, self.sx, self.sy)
	-- POSITION
	CPosition:init(self.sprite, self.x, self.y)
end
