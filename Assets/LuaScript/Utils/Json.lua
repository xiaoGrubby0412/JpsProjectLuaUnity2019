---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bing Lau.
--- DateTime: 2021/6/18 21:22
---

--local cjson = require("cjson")

Json = {}

Json.null = cjson.null

Json.IsNull = function(obj)
    return Json.null == obj or obj == nil
end

function Json.Encode(obj)
    if obj == nil then
        return nil
    end
    local status, text = pcall(cjson.encode, obj)
    if status then
        return text
    else
        PrintError("json encode error. %s", text)
        return nil
    end
end

function Json.Decode(json_text)
    if string.isEmpty(json_text) then
        return nil
    end
    local status, obj = pcall(cjson.decode, json_text)
    if status then
        return obj
    else
        PrintError("json decode error. text = %s, error = %s", json_text, obj)
        return nil
    end
end