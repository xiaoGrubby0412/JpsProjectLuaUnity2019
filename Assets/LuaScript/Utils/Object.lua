---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bing Lau
--- DateTime: 2021/5/20 10:39
---

-- UnityObject 判空接口
function IsNull(unity_obj)
    if unity_obj == nil then
        return true
    end

    if type(unity_obj) == "userdata" then
        return unity_obj:Equals(nil)
    end
    return false
end