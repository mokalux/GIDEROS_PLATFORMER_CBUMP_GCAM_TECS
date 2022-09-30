-- beautify
--http://patorjk.com/software/taag/#p=display&f=Big&t=GIDEROS

-- plugins
require "scenemanager"
require "easing"

-- GLOBALS
-- app
myappleft, myapptop, myappright, myappbot = application:getLogicalBounds()
myappwidth, myappheight = myappright - myappleft, myappbot - myapptop

if application:getDeviceInfo() == "Windows" and not application:isPlayerMode() then
	application:set("windowPosition", (1920 - myappwidth) * 0.5, 64)
	application:set("windowModel", "onlyClose")
--	application:set("windowModel", "noMaximize") -- doesn't work for me!
	application:set("windowTitle", "GIDEROS PLATFORMER CBUMP TECS")
	application:set("minimumSize", myappwidth, myappheight)
	application:set("maximumSize", myappwidth, myappheight)
	application:set("windowColor", 0, 0, 0)
end

-- game
tiled_levels = {}
tiled_levels[1] = loadfile("tiled/levels/l01.lua")()
g_currentlevel = 1

-- anims, better use power of 2 values?
g_ANIM_DEFAULT = 1
g_ANIM_IDLE = 2
g_ANIM_WALK = 3
g_ANIM_RUN = 4
g_ANIM_JUMPUP = 5
g_ANIM_JUMPDOWN = 6

-- scene manager
scenemanager = SceneManager.new(
	{
		["menu"] = Menu,
		["levelX"] = LevelX,
	}
)
stage:addChild(scenemanager)
scenemanager:changeScene("levelX")

-- transitions & easings
transitions = {
	SceneManager.moveFromRight, -- 1
	SceneManager.moveFromLeft, -- 2
	SceneManager.moveFromBottom, -- 3
	SceneManager.moveFromTop, -- 4
	SceneManager.moveFromRightWithFade, -- 5
	SceneManager.moveFromLeftWithFade, -- 6
	SceneManager.moveFromBottomWithFade, -- 7
	SceneManager.moveFromTopWithFade, -- 8
	SceneManager.overFromRight, -- 9
	SceneManager.overFromLeft, -- 10
	SceneManager.overFromBottom, -- 11
	SceneManager.overFromTop, -- 12
	SceneManager.overFromRightWithFade, -- 13
	SceneManager.overFromLeftWithFade, -- 14
	SceneManager.overFromBottomWithFade, -- 15
	SceneManager.overFromTopWithFade, -- 16
	SceneManager.fade, -- 17
	SceneManager.crossFade, -- 18
	SceneManager.flip, -- 19
	SceneManager.flipWithFade, -- 20
	SceneManager.flipWithShade, -- 21
}
easings = {
	easing.inBack, -- 1
	easing.outBack, -- 2
	easing.inOutBack, -- 3
	easing.inBounce, -- 4
	easing.outBounce, -- 5
	easing.inOutBounce, -- 6
	easing.inCircular, -- 7
	easing.outCircular, -- 8
	easing.inOutCircular, -- 9
	easing.inCubic, -- 10
	easing.outCubic, -- 11
	easing.inOutCubic, -- 12
	easing.inElastic, -- 13
	easing.outElastic, -- 14
	easing.inOutElastic, -- 15
	easing.inExponential, -- 16
	easing.outExponential, -- 17
	easing.inOutExponential, -- 18
	easing.linear, -- 19
	easing.inQuadratic, -- 20
	easing.outQuadratic, -- 21
	easing.inOutQuadratic, -- 22
	easing.inQuartic, -- 23
	easing.outQuartic, -- 24
	easing.inOutQuartic, -- 25
	easing.inQuintic, -- 26
	easing.outQuintic, -- 27
	easing.inOutQuintic, -- 28
	easing.inSine, -- 29
	easing.outSine, -- 30
	easing.inOutSine, -- 31
}
