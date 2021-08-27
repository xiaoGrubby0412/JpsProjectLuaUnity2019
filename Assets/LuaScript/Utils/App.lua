---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bing Lau.
--- DateTime: 2021/5/20 16:23
---

App = {}

App.logNetwork = false
App.LogCacheRelease = false
App.IsDebug = true

App.IsEditor = false
App.IsWinEditor = false
App.IsMacOrMacEditor = false
App.IsWin = false
App.IsiOS = false
App.IsAndroid = false

App.ChannelID = ""

App.AppVersion = ""
App.AppSvnVersion = 0
App.CodeVersion = 0
App.MinCodeversion = 0
App.ResVersion = 0
App.ResAppVersion = 0
App.ResSvnVersion = 0
App.DefaultServer = ""

App.StreamingAssetsPath = ""
App.GetStreamingAssetsPath = nil
App.StreamingAsssetsUrl = ""
App.GetStreamingAssetsUrl = nil

App.PersistentDataPath = ""
App.GetPersistentDataPath = nil
App.PersistentDataUrl = ""
App.GetPersistentDataUrl = nil

App.TemporaryCachePath = ""
App.GetTemporaryCachePath = nil

App.IsLowDevice = false
App.IsHighDevice = false

--local _UnityEngine    = UnityEngine
local _Application    = UnityEngine.Application
local _Platform        = _Application.platform
local _RuntimePlatform = UnityEngine.RuntimePlatform
local _WindowsEditor = _RuntimePlatform.WindowsEditor
local _OSXEditor     = _RuntimePlatform.OSXEditor
local _AndroidPlayer = _RuntimePlatform.Android
local _IPhonePlayer = _RuntimePlatform.IPhonePlayer
local _OSXPlayer     = _RuntimePlatform.OSXPlayer
local _WindowsPlayer = _RuntimePlatform.WindowsPlayer

App.IsEditor          = _Application.isEditor

if not App.IsEditor then
    if _Platform == _AndroidPlayer then
        App.IsAndroid = true
    elseif _Platform == _IPhonePlayer then
        App.IsiOS = true
    elseif _Platform == _WindowsPlayer then
        App.IsWin = true
    elseif _Platform == _OSXPlayer then
        App.IsMacOrMacEditor = true
    end
else
    if _Platform == _RuntimePlatform.WindowsEditor then
        App.IsWinEditor = true
    elseif _Platform == _RuntimePlatform.OSXEditor then
        App.IsMacOrMacEditor = true
    end
end

App.StreamingAssetsPath = _Application.streamingAssetsPath

if _Platform == Android then
    App.StreamingAssetsPath = App.StreamingAssetsPath
elseif platform == _WindowsPlayer or platform == _WindowsEditor then
    App.StreamingAssetsPath = "file:///" .. App.StreamingAssetsPath
else
    App.StreamingAssetsPath = "file://" .. App.StreamingAssetsPath
end

App.GetStreamingAssetsUrl = function (name)
    if string.isEmpty(name) then
        return App.StreamingAsssetsUrl
    else
        return string.format("%s/%s", App.StreamingAsssetsUrl, name)
    end
end

App.GetStreamingAssetsPath = function (name)
    if string.isEmpty(name) then
        return App.StreamingAssetsPath
    else
        return string.format("%s/%s", App.StreamingAssetsPath, name)
    end
end 

App.PersistentDataPath = _Application.persistentDataPath
if _Platform == _WindowsEditor or _Platform == _WindowsPlayer then
    App.PersistentDataUrl = "file:///"..App.PersistentDataPath
else
    App.PersistentDataUrl = "file://"..App.PersistentDataPath
end

App.GetPersistentDataPath = function(name)
    if string.isEmpty(name) then
        return app.PersistentDataPath
    else
        return string.format("%s/%s", App.PersistentDataPath, name)
    end
end

App.GetPersistentDataUrl = function(name)
    if string.isEmpty(name) then
        return App.PersistentDataUrl
    else
        return string.format("%s/%s", App.PersistentDataUrl, name)
    end
end

App.TemporaryCachePath = _Application.temporaryCachePath
App.GetTemporaryCachePath = function(name)
    if string.isEmpty(name) then
        return App.TemporaryCachePath
    else
        return string.format("%s/%s", App.TemporaryCachePath, name)
    end
end