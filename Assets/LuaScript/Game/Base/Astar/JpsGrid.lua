---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangman.
--- DateTime: 2021/8/26 18:03
---

---@class JpsGrid
---@field cols number
---@field rows number
---@field spots ANode[][]
local JpsGrid = Class("JpsGrid")

JpsGrid.drections = {
    [0] = {[0] = 0,[1] = -1 },
    [1] = {[0] = 1,[1] = -1 },
    [2] = {[0] = 1,[1] = 0 },
    [3] = {[0] = 1,[1] = 1 },
    [4] = {[0] = 0,[1] = 1 },
    [5] = {[0] = -1,[1] = 1 },
    [6] = {[0] = -1,[1] = 0 },
    [7] = {[0] = -1,[1] = -1 }
}

function JpsGrid:SetGridSize(cols, rows)
    self.cols = cols
    self.rows = rows
    self.spots = {}
    for i = 0, self.cols - 1, 1 do
        self.spots[i] = {}
        for j = 0, self.rows - 1, 1 do
            ---@type ANode
            local node = ANode.New()
            node.X = i
            node.Y = j
            node.cost = 1
            self.spots[i][j] = node
        end
    end
end

function JpsGrid:getNeighbor(_currentCell, _dx, _dy)
    local x = _currentCell.X + _dx
    local y = _currentCell.Y + _dy

    if x >= 0 and x <= self.cols - 1 and y >= 0 and y <= self.rows - 1 then
        return self.spots[x][y]
    else
        return nil
    end
end

function JpsGrid:getNeighbor_byDirID(_currentCell, _dir)
    local x = _currentCell.X + self.drections[_dir][0]
    local y = _currentCell.Y + self.drections[_dir][1]

    if x >= 0 and x <= self.cols - 1 and y >= 0 and y <= self.rows - 1 then
        return self.spots[x][y]
    else
        return nil
    end
end

function JpsGrid:SetBlock(x, y)
    self.spots[x][y].cost = 0
end

function JpsGrid:SetNormal(x, y)
    self.spots[x][y].cost = 1
end

function JpsGrid:PrintGrid()
    for i = 0, self.cols - 1, 1 do
        for j = 0, self.rows - 1, 1 do
            print("i == " .. i .. " j == " .. j .. " x == " .. self.spots[i][j].X .. " y == " .. self.spots[i][j].Y .. " cost == " .. self.spots[i][j].cost)
        end
    end
end

return JpsGrid

