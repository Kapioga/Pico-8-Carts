pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--main variables
grid_size=4
update_rate=5 --fps

function make_apple()
	apple={}
	apple.x=flr(rnd(128/grid_size))
	apple.y=flr(rnd(128/grid_size))
	
	apple.draw=function(self)
			rectfill(self.x*grid_size, 
		self.y*grid_size,
		(self.x+1)*grid_size-1, 
		(self.y+1)*grid_size-1,8)
	end
	return apple --returns new apple
end

function _init()

	apples={} --generates apples
	for i=1,2 do
		add(apples, make_apple())
	end
	
	ticks=0
	snake={} --rep an object array
	snake.body= {}
	snake.x=2
	snake.y=3
	snake.dx=1
	snake.dy=0
	
	snake.prev_x=0
	snake.prev_y=0
	
	--draws snake
	snake.draw= function(self) --updates self
		rectfill(self.x*grid_size, 
		self.y*grid_size,
		(self.x+1)*grid_size-1, 
		(self.y+1)*grid_size-1,3)
		
		--adds extra part when eaten
		for part in all(self.body) do
			rectfill(part.x*grid_size, 
			part.y*grid_size,
			(part.x+1)*grid_size-1, 
			(part.y+1)*grid_size-1,3)
		end
	end	
	
	--moves snake
	snake.update=function(self)
		snake.x+=snake.dx
		snake.y+=snake.dy
		
		--adds snake piece at end
		snake.prev_x=snake.x
		snake.prev_y=snake.y
		
		--apple contact
		ate_apple=false
		for apple in all(apples) do
			if apple.x==snake.x
				and apple.y==snake.y then
					del(apples,apple)
					add(apples,make_apple())
					ate_apple=true
					end
		end
		
		if ate_apple then
			add(snake.body, {
				x=self.prev_x,
				y=self.prev_y
				})
		end
	end
	
end

function _update() --30fps

	--directions
	if btn(➡️) then
		snake.dx=1
		snake.dy=0
	end
	if btn(⬆️) then
		snake.dx=0
		snake.dy=-1
	end
	if btn(⬇️) then
		snake.dx=0
		snake.dy=1
	end
	if btn(⬅️) then
		snake.dx=-1
		snake.dy=0
	end
	
	--sets frame rate for snake
	ticks+=1
	if ticks>update_rate then
		snake:update() --movement auto
		ticks=0
	end
	
end

function _draw()
	cls(1)
	snake:draw() --passes to the first func
	 
	--summons apples
	for apple in all(apples) do
		apple:draw()
	end
	
end 
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
