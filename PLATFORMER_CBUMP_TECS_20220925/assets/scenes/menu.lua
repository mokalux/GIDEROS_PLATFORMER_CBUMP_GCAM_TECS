Menu = Core.class(Sprite)

function Menu:init()
	-- bg
	application:setBackgroundColor(0x12aaAA)
	-- listeners
	self:addEventListener("enterBegin", self.onTransitionInBegin, self)
	self:addEventListener("enterEnd", self.onTransitionInEnd, self)
	self:addEventListener("exitBegin", self.onTransitionOutBegin, self)
	self:addEventListener("exitEnd", self.onTransitionOutEnd, self)
end

-- game loop
function Menu:onEnterFrame(e)
end

-- event listeners
function Menu:onTransitionInBegin()
	self:addEventListener(Event.ENTER_FRAME, self.onEnterFrame, self)
end
function Menu:onTransitionInEnd()
	self:myKeysPressed()
end
function Menu:onTransitionOutBegin()
	self:removeEventListener(Event.ENTER_FRAME, self.onEnterFrame, self)
end
function Menu:onTransitionOutEnd()
end

-- keys handler
function Menu:myKeysPressed()
	self:addEventListener(Event.KEY_DOWN, function(e)
		if e.keyCode == KeyCode.BACK or e.keyCode == KeyCode.ESC then -- mobiles and desktops
			application:exit()
		end
	end)
end
