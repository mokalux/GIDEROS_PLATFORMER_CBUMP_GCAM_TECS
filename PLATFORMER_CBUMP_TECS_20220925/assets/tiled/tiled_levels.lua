Tiled_Levels = Core.class(Sprite)

function Tiled_Levels:init(xcworld, xtiledlevel)
	-- bg
	application:setBackgroundColor(0x555555)
	-- the Tiled map size, I need the Tiled map dimensions for the parallax
	self.mapwidth, self.mapheight = xtiledlevel.width * xtiledlevel.tilewidth,
		xtiledlevel.height * xtiledlevel.tileheight
	print("map size "..self.mapwidth..", "..self.mapheight,
		"app size "..myappwidth..", "..myappheight, "all in pixels.")
	-- camera
	self.camera = Sprite.new()
	-- game layers
	self.bg = Sprite.new()
	self.deco = Sprite.new()
	self.ground = Sprite.new()
	self.actors = Sprite.new()
	self.fg = Sprite.new()
	-- order
	self.camera:addChild(self.bg)
	self.camera:addChild(self.deco)
	self.camera:addChild(self.ground)
	self.camera:addChild(self.actors)
	self.camera:addChild(self.fg)
	-- final
	self:addChild(self.camera)
	-- parse the Tiled level
	local myshape -- shapes from Tiled
	local mytable -- intermediate table for shapes params
	local layers = xtiledlevel.layers
	for i = 1, #layers do
		local layer = layers[i]
		-- GROUND
		if layer.name == "ground" then
			local objects = layer.objects
			for i = 1, #objects do
				local object = objects[i]
				myshape, mytable = nil, nil
				if object.name == "" then
					mytable = {
						texpath="tiled/levels/grounds/brown_qussair_granite.jpg",
						r=0.5, g=1, b=0, alpha=1,
					}
				end
				if mytable then
					levelsetup = {
--						shapelinewidth=2, shapelinecolor=0xffffff, -- you can uncomment me!
					}
					for k, v in pairs(mytable) do levelsetup[k] = v end
					myshape = self:buildShapes(object, levelsetup)
					local g = EStatic.new(self.ground, myshape, object.x, object.y)
					tworld:addEntity(g)
					g = nil -- cleanup?
				end
			end
		-- ACTORS
		elseif layer.name == "actors" then
			local objects = layer.objects
			for i = 1, #objects do
				local object = objects[i]
				myshape, mytable = nil, nil
				if object.name == "player1" then
					local g = EPlayer1.new(self.actors, object.x, object.y)
					tworld:addEntity(g)
					xcworld.player1 = g.sprite
					g = nil -- cleanup?
				elseif object.name == "nmeA" then
					local g = ENmeA.new(self.actors, object.x, object.y)
					tworld:addEntity(g)
					g = nil -- cleanup?
				elseif object.name == "hulk" then
					local g = EAnimatedImages.new(self.bg, "gfx/tests/hulk_idle.png", object.x, object.y)
					tworld:addEntity(g)
					g = nil -- cleanup?
				end
			end
		-- DECO
		elseif layer.name == "DECO" then -- group
			local layers2 = layer.layers
			for i = 1, #layers2 do
				local layer2 = layers2[i]
				if layer2.name == "shapes" then
					local objects = layer2.objects
					for i = 1, #objects do
						local object = objects[i]
						myshape, mytable = nil, nil
						if object.name == "" then
							mytable = {
								texpath="tiled/levels/grounds/brown_qussair_granite.jpg",
								r=1, g=0.5, b=0.1, alpha=1,
							}
						end
						if mytable then
							levelsetup = {
--								shapelinewidth=4, shapelinecolor=0xffffff, -- you can uncomment me!
							}
							for k, v in pairs(mytable) do levelsetup[k] = v end
							myshape = self:buildShapes(object, levelsetup)
							myshape:setPosition(object.x, object.y)
							self.bg:addChild(myshape)
						end
					end
				elseif layer2.name == "images" then
					-- put all the Tiled images in a table (this is a Tiled tileset not a Tiled tilemap!)
					local tilesetimages = {}
					local tilesets = xtiledlevel.tilesets
					for i = 1, #tilesets do
						local tileset = tilesets[i]
						if tileset.name == "images" then -- your Tileset name here
							local tiles = tileset.tiles
							for i = 1, #tiles do
								tilesetimages[tiles[i].id+1] = { -- +1 because gid is id + 1
									path=tiles[i].image,
									width=tiles[i].width,
									height=tiles[i].height,
								}
							end
						end
					end
					-- then parse the images
					local path = "tiled/levels/" -- path to images folder in Gideros
					local function parse(xobject, xlayer)
						local tex = Texture.new(path..tilesetimages[xobject.gid].path, false)
						local bitmap = Bitmap.new(tex)
						bitmap:setAnchorPoint(0, 1) -- because I always forget to modify Tiled objects alignment
						local scalex, scaley = xobject.width / tex:getWidth(), xobject.height / tex:getHeight() -- image resized in Tiled?
						bitmap:setScale(scalex, scaley)
						bitmap:setPosition(xobject.x, xobject.y)
						bitmap:setRotation(xobject.rotation) -- image rotated in Tiled?
						xlayer:addChild(bitmap)
					end
					local objects = layer2.objects
					for i = 1, #objects do parse(objects[i], self.deco) end
				end
			end
		end
	end
end

function Tiled_Levels:buildShapes(xobject, xlevelsetup)
	local myshape = nil
	local tablebase = {}
	if xobject.shape == "ellipse" then
		tablebase = {
			x = xobject.x, y = xobject.y,
			w = xobject.width, h = xobject.height, rotation = xobject.rotation,
		}
		for k, v in pairs(xlevelsetup) do tablebase[k] = v end
		myshape = Tiled_Shape_Ellipse.new(self.cworld, tablebase)
	elseif xobject.shape == "polygon" then
		tablebase = {
			x = xobject.x, y = xobject.y,
			coords = xobject.polygon, rotation = xobject.rotation,
		}
		for k, v in pairs(xlevelsetup) do tablebase[k] = v end
		myshape = Tiled_Shape_Polygon.new(self.cworld, tablebase)
	elseif xobject.shape == "polyline" then
		tablebase = {
			x = xobject.x, y = xobject.y,
			coords = xobject.polyline, rotation = xobject.rotation,
		}
		for k, v in pairs(xlevelsetup) do tablebase[k] = v end
		myshape = Tiled_Shape_Polygon.new(self.cworld, tablebase)
	elseif xobject.shape == "rectangle" then
		tablebase = {
			x = xobject.x, y = xobject.y,
			w = xobject.width, h = xobject.height, rotation = xobject.rotation,
		}
		for k, v in pairs(xlevelsetup) do tablebase[k] = v end
		myshape = Tiled_Shape_Rectangle.new(self.cworld, tablebase)
	else
		print("*** CANNOT PROCESS THIS SHAPE! ***", xobject.shape, xobject.name)
		return
	end

	return myshape
end
