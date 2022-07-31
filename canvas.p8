pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
function _init()
	px=20
	py=20
end

function _draw()
end

function _update()

	spr(1,px,py)
	
--eraser
	--if btn(z) then
	--	cls(6)
	--end
	
--movement
	if btn(⬇️) then
		py+=1
	end
		if btn(⬆️) then
		py-=1
	end
		if btn(⬅️) then
		px-=1
	end
		if btn(➡️) then
		px+=1
	end
end
__gfx__
0000000000770000114000007eeeeee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000077000014440000e7eeeee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000077676744444000eee7eee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770006677777704444400eeeeeee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700077777777004444d0eeeeeee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007007777777700044deeeeeeeee2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000007666600000deeeeeeeee22000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000066667000000eeeeeeee222000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000