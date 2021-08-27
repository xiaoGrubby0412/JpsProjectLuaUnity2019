require("Utils.Class")

ANode = require("Game.Base.Astar.ANode")

--主入口函数。从这里开始lua逻辑
function Main()					
	print("logic start")	 		
end

---@type JpsGrid
local jpsGrid = nil
---@type JpsHelperManager
local jpsHelper = nil

function Start()
	jpsGrid = require("Game.Base.Astar.JpsGrid").New()
	jpsGrid:SetGridSize(1400, 1400)
	jpsHelper = require("Game.Base.Astar.JpsHelper").New(jpsGrid)
end

---@type DemoControl
local ctrl

---InitJps
---@param p AstarParam
function InitJps(p)
	jpsHelper:InitJps(p.startX, p.startY, p.endX, p.endY, p_maxStep or 0 , p.ifNum)
	ctrl = p.ctrl
end


function StartFindPath()
	local isFind = jpsHelper:FindPath()
	if isFind then
		ctrl:DrawPath(jpsHelper.pathList)
	end
end


