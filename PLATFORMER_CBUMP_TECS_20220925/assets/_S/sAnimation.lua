SAnimation = Core.class()

function SAnimation:init()
	tiny.processingSystem(self) -- called once on init and every frames
end

function SAnimation:filter(ent) -- tiny function
	return ent.animation
end

function SAnimation:onRemove(ent) -- tiny function
	ent.animation = nil
end

function SAnimation:process(ent, dt) -- tiny function
	if ent.animation.anims[ent.animation.currentanim or g_ANIM_DEFAULT] then -- default to g_ANIM_DEFAULT
		ent.animation.animtimer = ent.animation.animtimer - dt
		if ent.animation.animtimer <= 0 then
			ent.animation.frame += 1
			ent.animation.animtimer = ent.animation.animspeed
			if ent.animation.frame > #ent.animation.anims[ent.animation.currentanim] then
				ent.animation.frame = 1
			end
			ent.animation.bmp:setTextureRegion(ent.animation.anims[ent.animation.currentanim][ent.animation.frame])
		end
	end
end
