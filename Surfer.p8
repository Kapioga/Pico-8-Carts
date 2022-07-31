pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--main

function _init()
	--variables
	p_sprite=1
	px = 20
	py = 64
	--screen
	cls(12)
end

function _draw()
end

function _update()
	player()
end
-->8
--player
cls(12)
function player()
	--p_sprite = p_sprite+1
	spr(p_sprite,px,py)
	
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
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000b30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000b33700000b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000033310000b3370000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000033333000033310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700032223200333332000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000e3222232e322223200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000022222200222222000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
