---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wangman.
--- DateTime: 2021/7/21 16:07
---

---@class AMapData:AMapDataBase
---@field blockData number[][]
---@field mapWidth number
---@field mapHeight number
local AMapData = Class("AMapData", require("Game.Base.Astar.AMapDataBase"))

function AMapData:OnStart()
    self:SetMapSize(1400,1400)
    for i = 1, #MapConfig.ObstructData do
        local data = MapConfig.ObstructData[i]
        self:SetBlock(data.x, data.y)
    end
end

function AMapData:ctor(mapWidth, mapHeight)
    self.super:ctor(mapWidth, mapHeight)
end

---@type AMapData
AMapDataManager = AMapData.New()