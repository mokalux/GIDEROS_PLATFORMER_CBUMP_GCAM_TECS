LevelX = Core.class(Sprite)

function LevelX:init()
	self.isfullscreen = false
	-- cbump (cworld)
	local cbump = require "cbump"
	self.cworld = cbump.newWorld()
	-- tiny ecs (tworld)
	tiny = require "libs/tiny" -- global
	self.tworld = tiny.world()
	_G.tworld = self.tworld -- impact on performance?
	-- create the Tiled level (camera sprite for gcam, ground, deco, players, actors, ...)
	self.tiled_level = Tiled_Levels.new(self.cworld, tiled_levels[g_currentlevel])
	-- an awesome camera (gcam by rrraptor)
	self.gcam = GCam.new(self.tiled_level.camera)
	self.gcam:setAutoSize(true)
	self.gcam:setAnchor(0.5, 0.5)
--	self.gcam:setZoom(0.2)
	local gcamleft = 0
	local gcamtop = 0
	local gcamright = self.tiled_level.mapwidth - gcamleft
	local gcambottom = self.tiled_level.mapheight
	self.gcam:setBounds(gcamleft, gcamtop, gcamright, gcambottom)
	self.gcam:setDeadSize(64*1.5, -64*0, 64*2) -- w, h, height offset
	self.gcam:setSoftSize(64*4, 64*6) -- w, h
	self.gcam:setPredictMode(true)
	self.gcam:setFollow(self.cworld.player1)
--	self.gcam:setDebug(true)
	self:addChild(self.gcam)
	-- I add the systems to the tiny world here so I can access the gcam
	self.tworld:add(
		SDrawable.new(),
--		SDebugDraw.new(),
		SBumpStaticBodies.new(self.cworld),
		SBumpDynamicBodies.new(self.cworld, self.gcam),
		SPlayer1Control.new(),
		SActorsMovement.new(),
		SAI.new(), -- actors AI
		SAnimation.new()
	)
	-- listeners
	self:addEventListener("enterBegin", self.onTransitionInBegin, self)
	self:addEventListener("enterEnd", self.onTransitionInEnd, self)
	self:addEventListener("exitBegin", self.onTransitionOutBegin, self)
	self:addEventListener("exitEnd", self.onTransitionOutEnd, self)
end

-- game loop
local dt
function LevelX:onEnterFrame(e)
	dt = e.deltaTime
	-- camera follows player1
	self.gcam:update(dt) -- e.deltaTime 1/60
	-- tiny world
	self.tworld:update(dt)
end

-- event listeners
function LevelX:onTransitionInBegin()
	self:addEventListener(Event.ENTER_FRAME, self.onEnterFrame, self)
end
function LevelX:onTransitionInEnd()
	self:myKeysPressed()
end
function LevelX:onTransitionOutBegin()
	self:removeEventListener(Event.ENTER_FRAME, self.onEnterFrame, self)
end
function LevelX:onTransitionOutEnd()
end

-- app keys handler
function LevelX:myKeysPressed()
	self:addEventListener(Event.KEY_DOWN, function(e)
		if e.keyCode == KeyCode.BACK or e.keyCode == KeyCode.ESC then -- mobiles and desktops
			scenemanager:changeScene("menu", 1, transitions[2], easings[2])
		end
		-- modifier
		local modifier = application:getKeyboardModifiers()
		local alt = (modifier & KeyCode.MODIFIER_ALT) > 0
		-- switch full screen
		if alt and e.keyCode == KeyCode.ENTER then
			self.isfullscreen = not self.isfullscreen
			application:setFullScreen(self.isfullscreen)
		end
	end)
end
