--Berries:
--Life's getting hard in here so I do some gardening
--Unfortunately a bit too resource intensive for a game
--that's supposed to run in the background

sti = require("sti")

globalTime = 1
about = 0

treeTable = {}
for x = 0, 10 do
	treeTable[x] = {}
end

timeTable = {}
for x = 0, 9 do
	timeTable[x] = {}
end

click = 0
press = 1

function love.load()
	map = sti("map.lua")

	greenTree = love.graphics.newImage("greenTree.png")
	greenTree:setFilter("nearest", "nearest")

	goldTree = love.graphics.newImage("goldTree.png")
	goldTree:setFilter("nearest", "nearest")

	smallTree = love.graphics.newImage("smallTree.png")
	smallTree:setFilter("nearest", "nearest")

	redberry = love.graphics.newImage("redberry.png")
	redberry:setFilter("nearest", "nearest")

	blueberry = love.graphics.newImage("blueberry.png")
	blueberry:setFilter("nearest", "nearest")

	orange = love.graphics.newImage("orange.png")
	orange:setFilter("nearest", "nearest")

	font = love.graphics.newFont(10)
	text = love.graphics.newText(font, "Hello World")
end

function love.update(dt)

	if love.mouse.isDown(1) == true and click == 1 then
		x = math.floor((love.mouse.getX()/2)/16)
		y = math.floor((love.mouse.getY()/2)/16)
		createTree(x, y, "smallTree")
		click = 0
	end
	if not love.mouse.isDown(1) then
		click = 1
	end

	for x = 0, 9 do
		for y = 0, 9 do
			if timeTable[x][y] then
				timeTable[x][y] = timeTable[x][y] - dt
			end
			if timeTable[x][y] and timeTable[x][y] < 0 then
				--love.window.showMessageBox(treeTable[x][y], timeTable[x][y])
				updateTree(x, y)
			end
		end
	end

	if love.keyboard.isDown("escape") and press == 1 then
		if about == 1 then about = 0 else about = 1 end
		press = 0
	end
	if not love.keyboard.isDown("escape") then
		press = 1
	end

	globalTime = globalTime + dt

	if about == 0 then
		text:set("Time: " .. math.floor(globalTime) .. " (esc for about)")
	else
		text:set("Berries\nby Daemon\ngithub.com/daem_on\nMade with LÖVE")
	end
end

function love.draw()
	love.graphics.push()
	love.graphics.scale(2, 2)
	
	map:draw()

	for x = 0, 9 do
		for y = 0, 9 do
			if treeTable[x][y] == "greenTreeBlank" then
				love.graphics.draw(greenTree, x*16, y*16)

			elseif treeTable[x][y] == "goldTreeBlank" then
				love.graphics.draw(goldTree, x*16, y*16)

			elseif treeTable[x][y] == "greenTreeBerry" then
				love.graphics.draw(greenTree, x*16, y*16)
				love.graphics.draw(redberry, x*16, y*16)

			elseif treeTable[x][y] == "greenTreeBlue" then
				love.graphics.draw(greenTree, x*16, y*16)
				love.graphics.draw(blueberry, x*16, y*16)

			elseif treeTable[x][y] == "greenTreeOrange" then
				love.graphics.draw(greenTree, x*16, y*16)
				love.graphics.draw(orange, x*16, y*16)

			elseif treeTable[x][y] == "goldTreeBerry" then
				love.graphics.draw(goldTree, x*16, y*16)
				love.graphics.draw(redberry, x*16, y*16)

			elseif treeTable[x][y] == "smallTree" then
				love.graphics.draw(smallTree, x*16, y*16)
			end
		end
	end

	love.graphics.pop()
	love.graphics.draw(text, 0, 0)
end

function createTree(x, y, type)
	treeTable[x][y] = type
	timeTable[x][y] = random(10, 20)
end

function deleteTree(x, y)
	treeTable[x][y] = 0
	timeTable[x][y] = 0
end

function updateTree(x, y, time)
	local randomTime = random(40, 50)
	if treeTable[x][y] == "smallTree" then
		timeTable[x][y] = randomTime
		treeTable[x][y] = "greenTreeBlank"

	elseif treeTable[x][y] == "greenTreeBlank" then
		timeTable[x][y] = randomTime
		local random = random(0, 3)
		if random == 0 then
			treeTable[x][y] = "greenTreeBerry"
		elseif random == 1 then
			treeTable[x][y] = "greenTreeBlue"
		elseif random == 2 then
			treeTable[x][y] = "greenTreeOrange"
		end

	elseif treeTable[x][y] == "greenTreeBerry" then
		timeTable[x][y] = randomTime
		treeTable[x][y] = "goldTreeBlank"

	elseif treeTable[x][y] == "greenTreeBlue" then
		timeTable[x][y] = randomTime
		treeTable[x][y] = "goldTreeBlank"

	elseif treeTable[x][y] == "greenTreeOrange" then
		timeTable[x][y] = randomTime
		treeTable[x][y] = "goldTreeBlank"
	
	elseif treeTable[x][y] == "goldTreeBlank" then
		deleteTree(x, y)
	end
end

function random (n, k)
	return math.floor(math.random()*100)%(k-n)+n
end