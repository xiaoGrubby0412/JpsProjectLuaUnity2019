--------------------------------------------------------------------------------
--      Copyright (c) 2015 - 2016 , 蒙占志(topameng) topameng@gmail.com
--      All rights reserved.
--      Use, modification and distribution are subject to the "MIT License"
--------------------------------------------------------------------------------
-- added by wsh @ 2017-12-28
-- 注意：
-- 1、已经被修改，别从tolua轻易替换来做升级

local Layer = {}
local rawget = rawget
local setmetatable = setmetatable

local LayerMask = {}
local unity_layermask = UnityEngine.LayerMask

LayerMask.__index = function(t,k)
	return rawget(LayerMask, k)	
end

LayerMask.__call = function(t,v)
	return setmetatable({value = value or 0}, LayerMask)
end

function LayerMask.New(value)	
	return setmetatable({value = value or 0}, LayerMask)		
end

function LayerMask:Get()
	return self.value
end

function LayerMask.NameToLayer(name)
	return Layer[name]
end

function LayerMask.GetMask(...)
	local arg = {...}
	local value = 0	

	for i = 1, #arg do		
		local n = LayerMask.NameToLayer(arg[i])
		
		if n ~= nil then
			value = value + 2 ^ n				
		end
	end	
		
	return value
end

local function _InitLayer()
	for i = 0, 31 do
		local strLayer = unity_layermask.LayerToName(i)
		if strLayer ~= nil then
			Layer[strLayer] = i
		end
	end
end

_InitLayer()
UnityEngine.LayerMask = LayerMask
setmetatable(LayerMask, LayerMask)
return LayerMask


	
