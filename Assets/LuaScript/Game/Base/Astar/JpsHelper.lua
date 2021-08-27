﻿
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangman.
--- DateTime: 2021/8/26 17:59
---

local APriorityQueue = require("Game.Base.Astar.APriorityQueue")

---@class JpsHelperManager
---@field currentStep number
---@field maxStep number
---@field startX number
---@field startY number
---@field endX number
---@field endY number
---@field finalNode ANode
---@field pathList number[]
---@field pathListV2 Vector2[]
---@field closeDict table
---@field openDict table
---@field sortedOpenQue APriorityQueue
---@field neighbors ANode[]
---@field grid JpsGrid
---@field ifNum boolean
local JpsHelperManager = Class("JpsHelperManager")

---ctor
---@param grid JpsGrid
function JpsHelperManager:ctor(grid)
    self.grid = grid
    self.sortedOpenQue = APriorityQueue.New()
    self.openDict = {}
    self.closeDict = {}
    self.neighbors = {}
end

function JpsHelperManager:SetMapData(grid)
    self.grid = grid
end

function JpsHelperManager:InitJps(startX, startY, endX, endY, p_maxStep, ifNum)
    if self.grid.spots[startX][startY].cost == 0 then
        PrintError("startX startY is Block !!! startX == " .. startX .. " startY == " .. startY)
        return false
    end

    if self.grid.spots[endX][endY].cost == 0 then
        PrintError("endX endY is Block !!! endX == " .. endX .. " endY == " .. endY)
        return false
    end

    if p_maxStep < 1 then
        p_maxStep = self.grid.rows * self.grid.cols
    end

    return self:Init(startX, startY, endX, endY, p_maxStep, ifNum)
end

function JpsHelperManager:FindPath()
    while (self.finalNode == nil and self.currentStep <= self.maxStep) do
        self:Search()
    end

    if self.finalNode == nil then
        PrintError("no path found return nil curStep == " .. self.currentStep)
        return false
    else
        print("curStep == " .. self.currentStep)
        self:NodeToList()

        if self.ifNum == false then
            self.pathListV2 = {}
            for i = 0, #self.pathList - 3, 3 do
                local v = Vector2.New(self.pathList[i] / 10, self.pathList[i + 2] / 10)
                table.insert(self.pathListV2, v)
            end
        end

        return true
    end
end

function JpsHelperManager:NodeToList()
    self.pathList = {}
    local cur = self.finalNode
    local finalG = self.finalNode.G
    local num = 0

    while (cur ~= nil) do
        table.insert(self.pathList, 1, cur.X * 10)
        table.insert(self.pathList, 2, 0)
        table.insert(self.pathList, 3, cur.Y * 10)

        num = num + 1

        cur = cur.Parent
    end
    print("final node.G == " .. tostring(finalG) .. " all num == " .. tostring(num))
end

function JpsHelperManager:Init(startX, startY, endX, endY, p_maxStep, ifNum)

    self.startX = startX
    self.startY = startY
    self.endX = endX
    self.endY = endY
    self.maxStep = p_maxStep
    self.currentStep = 0
    self.finalNode = nil
    self.pathList = nil
    self.pathListV2 = nil
    self.ifNum = ifNum

    self.sortedOpenQue:Clear()
    self.openDict = {}

    self.closeDict = {}

    local startNode = self.grid.spots[startX][startY]
    startNode:Reset()
    startNode.X = startX
    startNode.Y = startY
    startNode.Parent = nil

    startNode.G = 0
    startNode.H = self:GetNodeH(startX, startY, endX, endY)
    startNode.F = startNode.H + startNode.G
    self.sortedOpenQue:Push(startNode)

    local key = ANode.KeyByXY(startX, startY)
    self.openDict[key] = startNode

    return true
end

function JpsHelperManager:GetNodeG(nodeX, nodeY, endX, endY)
    local xm = math.abs(endX - nodeX)
    local ym = math.abs(endY - nodeY)
    local nodeH = math.floor(10 * math.sqrt(xm * xm + ym * ym))
    --print("X == " .. nodeX .. " Y == " .. nodeY .. " return nodeH == " .. nodeH)
    return nodeH
end

function JpsHelperManager:GetNodeH(nodeX, nodeY, endX, endY)
    local nodeH = 10 * (math.abs(endX - nodeX) + math.abs(endY - nodeY))

    --local xm = math.abs(endX - nodeX)
    --local ym = math.abs(endY - nodeY)
    --local nodeH = math.floor(10 * math.sqrt(xm * xm + ym * ym))
    --print("X == " .. nodeX .. " Y == " .. nodeY .. " return nodeH == " .. nodeH)
    return nodeH
end

---jump
---@param _neighbor ANode
---@param _current ANode
---@param _grid JpsGrid
function JpsHelperManager:jump(_neighbor, _current, _grid)
    if _neighbor == nil or _neighbor.cost == 0 then
        return nil
    end

    if _neighbor.X == self.endX and _neighbor.Y == self.endY then
        return _neighbor
    end

    local dx = _neighbor.X - _current.X
    local dy = _neighbor.Y - _current.Y

    local forceNeighbor1 = nil
    local obstacle1 = nil
    local forceNeighbor2 = nil
    local obstacle2 = nil

    if (dx * dy) ~= 0 then
        forceNeighbor1 = _grid:getNeighbor(_neighbor, -dx, dy)
        obstacle1 = _grid:getNeighbor(_neighbor, -dx, 0)
        forceNeighbor2 = _grid:getNeighbor(_neighbor, dx, -dy)
        obstacle2 = _grid:getNeighbor(_neighbor, 0, -dy)

        if self:HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2) then
            return _neighbor
        end
        if self:jump(_grid:getNeighbor(_neighbor, dx, 0), _neighbor, _grid) ~= nil or
                self:jump(_grid:getNeighbor(_neighbor, 0, dy), _neighbor, _grid) ~= nil then
            return _neighbor
        end
    else
        if dx ~= 0 then
            forceNeighbor1 = _grid:getNeighbor(_neighbor, dx, 1)
            obstacle1 = _grid:getNeighbor(_neighbor, 0, 1)
            forceNeighbor2 = _grid:getNeighbor(_neighbor, dx, -1)
            obstacle2 = _grid:getNeighbor(_neighbor, 0, -1)

        elseif dy ~= 0 then
            forceNeighbor1 = _grid:getNeighbor(_neighbor, -1, dy)
            obstacle1 = _grid:getNeighbor(_neighbor, -1, 0)
            forceNeighbor2 = _grid:getNeighbor(_neighbor, 1, dy)
            obstacle2 = _grid:getNeighbor(_neighbor, 1, 0)

            if self:HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2) then
                return _neighbor
            end
        end
    end
    
    local H_cell = _grid:getNeighbor(_neighbor, dx, 0)
    local V_cell = _grid:getNeighbor(_neighbor, 0, dy)

    if ((H_cell ~= nil and H_cell.cost ~= 0) or (V_cell ~= nil and V_cell.cost ~= 0)) then
        local D_Cell = _grid:getNeighbor(_neighbor, dx, dy)
        return self:jump(D_Cell, _neighbor, _grid)
    else
        return nil
    end
end

function JpsHelperManager:HasForceNeighbor(forceNeighbor1, obstacle1, forceNeighbor2, obstacle2)
    if ((obstacle1 ~= nil and obstacle1.cost == 0 and forceNeighbor1 ~= nil and forceNeighbor1.cost ~= 0) or
            (obstacle2 ~= nil and obstacle2.cost == 0 and forceNeighbor2 ~= nil and forceNeighbor2.cost ~= 0)) then
        return true
    end
    return false
end

function JpsHelperManager:GetNeighbors(_spot)
    self.neighbors = {}
    for i = 0, 7, 1 do
        local neighbor = self.grid:getNeighbor(_spot, self.grid.drections[i][0], self.grid.drections[i][1])
        if neighbor ~= nil and neighbor.cost ~= 0 then
            if (i % 2) ~= 0 then
                local last_dir = (i - 1) % 8
                local next_dir = (i + 1) % 8
                local last = self.grid:getNeighbor(_spot, self.grid.drections[last_dir][0], self.grid.drections[last_dir][1])
                local next = self.grid:getNeighbor(_spot, self.grid.drections[next_dir][0], self.grid.drections[next_dir][1])
                if last ~= nil and last.cost == 0 and next ~= nil and next.cost == 0 then
                else
                    table.insert(self.neighbors, neighbor)
                end
            else
                table.insert(self.neighbors, neighbor)
            end
        end
    end
end

function JpsHelperManager:AddForceNeighbor(_cell, _grid, list, _dirx, _diry)
    local forceNeighbor = _grid:getNeighbor(_cell, _dirx, _diry)
    if forceNeighbor ~= nil and forceNeighbor.cost ~= 0 then
        table.insert(list, forceNeighbor)
    end
end

function JpsHelperManager:HorizontalTest(_grid, _currentCell, _dir)
    local res = {}
    local nextCell = _grid:getNeighbor(_currentCell, _dir, 0)
    if nextCell == nil then
        return res
    else
        if nextCell.cost ~= 0 then
            table.insert(res, nextCell)
        end
    end

    local upCell = _grid:getNeighbor(_currentCell, 0, -1)
    local downCell = _grid:getNeighbor(_currentCell, 0, 1)

    if upCell ~= nil then
        if _dir == 1 then
            self:AddForceNeighbor_D(_currentCell, _grid, res, 0, 2, 1)
        else
            self:AddForceNeighbor_D(_currentCell, _grid, res, 0, 6, 7)
        end
    end

    if downCell ~= nil then
        if (_dir == 1) then
            self:AddForceNeighbor_D(_currentCell, _grid, res, 4, 2, 3)
        else
            self:AddForceNeighbor_D(_currentCell, _grid, res, 4, 6, 5)
        end
    end
    return res
end

function JpsHelperManager:VerticalTest(_grid, _currentCell, _dir)
    local res = {}
    local nextCell = _grid:getNeighbor(_currentCell, 0, _dir)
    if nextCell == nil then
        return res
    else
        if nextCell.cost ~= 0 then
            res.Add(nextCell)
        end
    end

    local leftCell = _grid:getNeighbor(_currentCell, -1, 0)
    local rightCell = _grid:getNeighbor(_currentCell, 1, 0)

    if leftCell ~= nil then
        if _dir == 1 then
            self:AddForceNeighbor_D(_currentCell, _grid, res, 6, 4, 5)
        else
            self:AddForceNeighbor_D(_currentCell, _grid, res, 6, 0, 7)
        end
    end
    if rightCell ~= nil then
        if _dir == 1 then
            self:AddForceNeighbor_D(_currentCell, _grid, res, 2, 4, 3)
        else
            self:AddForceNeighbor_D(_currentCell, _grid, res, 2, 0, 1)
        end
    end
    return res
end

function JpsHelperManager:DiagonalTest(_grid, _currentCell, _dirx, _diry)
    local res = {}
    local nextCell = _grid:getNeighbor(_currentCell, _dirx, _diry)

    local nextVCell = _grid:getNeighbor(_currentCell, 0, _diry)
    local nextHCell = _grid:getNeighbor(_currentCell, _dirx, 0)

    if nextVCell ~= nil and nextVCell.cost ~= 0 then
        table.insert(res, nextVCell)
    end
    if nextHCell ~= nil and nextHCell.cost ~= 0 then
        table.insert(res, nextHCell)
    end

    if nextVCell ~= nil and nextVCell.cost == 0 and nextHCell ~= nil and nextHCell.cost == 0 then
        return res
    else
        if nextCell ~= nil and nextCell.cost ~= 0 then
            table.insert(res, nextCell)
        end
    end

    if _dirx == 1 and _diry == -1 then
        self:AddForceNeighbor_D(_currentCell, _grid, res, 6, 0, 7)
        self:AddForceNeighbor_D(_currentCell, _grid, res, 4, 2, 3)
    elseif _dirx == 1 and _diry == 1 then
        self:AddForceNeighbor_D(_currentCell, _grid, res, 0, 2, 1)
        self:AddForceNeighbor_D(_currentCell, _grid, res, 6, 4, 5)
    elseif _dirx == -1 and _diry == 1 then
        self:AddForceNeighbor_D(_currentCell, _grid, res, 0, 6, 7)
        self:AddForceNeighbor_D(_currentCell, _grid, res, 2, 4, 3)
    else
        self:AddForceNeighbor_D(_currentCell, _grid, res, 2, 0, 1)
        self:AddForceNeighbor_D(_currentCell, _grid, res, 4, 6, 5)
    end

    return res
end

function JpsHelperManager:AddForceNeighbor_D(_cell, _grid, list, _close, _open, _add)
    local closeCell = _grid:getNeighbor_byDirID(_cell, _close)
    local openCell = _grid:getNeighbor_byDirID(_cell, _open)
    if openCell == nil then
        return
    end
    if closeCell.cost == 0 and openCell.cost ~= 0 then
        self:AddForceNeighbor(_cell, _grid, list, _grid.drections[_add][0], _grid.drections[_add][1])
    end
end

function JpsHelperManager:GetNeighbors_WithCut(_spot, _dirx, _diry)
    self.neighbors = {}
    if _dirx ~= 0 and _diry ~= 0 then
        self.neighbors = self:DiagonalTest(self.grid, _spot, _dirx, _diry)
    else
        if _dirx ~= 0 then
            self.neighbors = self:HorizontalTest(self.grid, _spot, _dirx)
        else
            self.neighbors = self:VerticalTest(self.grid, _spot, _diry)
        end
    end
end

function JpsHelperManager:Search()
    
    local minFNode = self.sortedOpenQue:Pop()
    local _num = ANode.KeyByXY(minFNode.X, minFNode.Y)
    if self.openDict[_num] ~= nil then
        self.openDict[_num] = nil
    end

    self.closeDict[_num] = minFNode
    self.currentStep = self.currentStep + 1

    if minFNode.X == self.endX and minFNode.Y == self.endY then
        self.finalNode = minFNode
        return
    end

    if minFNode.Parent ~= nil then
        local dir_x = self.Clamp(minFNode.X - minFNode.Parent.X, -1, 1)
        local dir_y = self.Clamp(minFNode.Y - minFNode.Parent.Y, -1, 1)
        self:GetNeighbors_WithCut(minFNode, dir_x, dir_y)
    else
        self:GetNeighbors(minFNode)
    end

    for i = 0, #self.neighbors - 1, 1 do
        local neighbor = self.neighbors[i]
        local jumpNode = self:jump(neighbor, minFNode, self.grid)
        if jumpNode ~= nil and self.closeDict[jumpNode:GetKey()] == nil then
            
            local g_score = minFNode.G + self:GetNodeG(jumpNode.X, jumpNode.Y, minFNode.X, minFNode.Y)
            if self.openDict[jumpNode:GetKey()] ~= nil then
                if g_score < jumpNode.G then
                    local sortK = -1
                    local ifSetK = false

                    for k = 0, self.sortedOpenQue.count - 1, 1 do
                        local nn = self.sortedOpenQue.head[k]
                        if jumpNode.X == nn.X and jumpNode.Y == nn.Y then
                            if ifSetK then
                                PrintError("ifSetK == True ..........................................")
                                
                                nn.Parent = minFNode
                                nn.G = g_score
                                nn.F = nn.G + nn.H
                                sortK = k
                                ifSetK = true
                                break
                            end
                        end
                    end

                    if sortK ~= -1 then
                        self.sortedOpenQue:Sort(sortK)
                    end
                end
            else
                jumpNode.Parent = minFNode
                jumpNode.G = g_score
                jumpNode.H = self:GetNodeH(jumpNode.X, jumpNode.Y, self.endX, self.endY)
                jumpNode.F = jumpNode.G + jumpNode.H
                self.sortedOpenQue:Push(jumpNode)
                self.openDict[jumpNode:GetKey()] = jumpNode
            end
        end
    end

end

function JpsHelperManager.Clamp(v, minValue, maxValue)
    return math.max(minValue, math.min(v, maxValue))
end

return JpsHelperManager