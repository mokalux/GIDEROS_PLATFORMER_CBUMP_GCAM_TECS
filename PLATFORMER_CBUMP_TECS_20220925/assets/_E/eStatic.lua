EStatic = Core.class()

function EStatic:init(xspritelayer, xshape, x, y)
	-- ids
	self.spritelayer = xspritelayer
	self.sprite = xshape -- shape from Tiled!
	self.x = x
	self.y = y
	-- position
	self.sprite:setPosition(self.x, self.y)
	-- COMPONENTS
	-- BODY
	self.body = CStaticBody.new()
	self.body.isstatic = true
	self.w, self.h = self.sprite:getSize()
end
