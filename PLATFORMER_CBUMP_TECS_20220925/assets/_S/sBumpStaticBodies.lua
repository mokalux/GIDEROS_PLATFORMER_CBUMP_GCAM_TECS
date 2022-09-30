SBumpStaticBodies = Core.class()

function SBumpStaticBodies:init(xcworld)
	tiny.system(self) -- called only once on init (no update)
	self.cworld = xcworld -- cbump
end

function SBumpStaticBodies:filter(ent) -- tiny function
	if ent.body then
		return ent.body.isstatic
	end
end

function SBumpStaticBodies:onAdd(ent) -- tiny function
	self.cworld:add(ent, ent.x, ent.y, ent.w, ent.h)
end

function SBumpStaticBodies:onRemove(ent) -- tiny function
	self.cworld:remove(ent)
end
