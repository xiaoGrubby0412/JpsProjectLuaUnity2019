---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bing Lau.
--- DateTime: 2021/5/23 15:09
---

--local _PlayerPref = CS.UnityEngine.PlayerPrefs
--local enable = _PlayerPref.GetInt("enable_emmylua", 0)
--
--print("Enable EmmyLua debugger: %s", enable == 1 and "on" or "off")
--if enable ~= 1 then
--    return
--end

-- 只判断是不是开启了EmmyLua调试，至于是 IDE connect Debugger 还是 Debugger connect IDE 自己去调整
 package.cpath = package.cpath .. ';C:/Users/wangman/AppData/Roaming/JetBrains/Rider2020.1/plugins/intellij-emmylua/classes/debugger/emmy/windows/x64/?.dll'
 local dbg = require('emmy_core')
 dbg.tcpListen('localhost', 9966)
