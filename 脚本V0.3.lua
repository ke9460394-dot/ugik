local TextChatService = game:GetService("TextChatService") local ReplicatedStorage = game:GetService("ReplicatedStorage") local function SendChatMessage(message) if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then local textChannel = TextChatService.TextChannels.RBXGeneral textChannel:SendAsync(message) else ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All") end end SendChatMessage("我是ken的儿子🥶🥶") SendChatMessage("我是(DHJB)用户😶‍🌫️😶‍🌫️😶‍🌫️")
local LP = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/bailib/Roblox/refs/heads/main/main/ESP.lua"))()
ESP.AddFolder("HiderESPFolder")
ESP.AddFolder("HunterESPFolder")
ESP.AddFolder("GlassESPFolder")

local WindUISuccess, WindUI = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
end)

if not WindUISuccess then
    error("❌ WindUI加载失败: "..tostring(WindUI))
    return
end

-- 颜色渐变函数（增加错误处理）
function gradient(text, startColor, endColor)
    if not text or #text == 0 then return "" end
    if not startColor or not endColor then
        warn("⚠️ 颜色参数无效，使用默认颜色")
        startColor = Color3.fromRGB(255,255,255)
        endColor = Color3.fromRGB(200,200,200)
    end

    local result = ""
    local length = #text

    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)

        local char = text:sub(i, i)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, char)
    end

    return result
end

-- 安全创建弹窗
local Confirmed = false
local popupSuccess, popupResult = pcall(function()
    WindUI:Popup({
        Title = "欢迎使用大黑鸡巴脚本",
        Icon = "rbxassetid://129260712070622",
        Content = "我鸡吧好大 "..gradient("撸鸡巴", Color3.fromHex("#00FF87"), Color3.fromHex("#60EFFF")).."射精",
        Buttons = {
            {
                Title = "取消",
                Callback = function() end,
                Variant = "Secondary"
            },
            {
                Title = "继续",
                Icon = "arrow-right",
                Callback = function() Confirmed = true end,
                Variant = "Primary"
            }
        }
    })
end)

if not popupSuccess then
    warn("⚠️ 弹窗创建失败: "..tostring(popupResult))
    Confirmed = true -- 强制继续
end

repeat task.wait() until Confirmed

-- 安全创建主窗口
local Window
local windowSuccess, windowResult = pcall(function()
    return WindUI:CreateWindow({
        Title = "大黑鸡巴脚本V0.3",
        Icon = "rbxassetid://129260712070622",
        Author = "我有大鸡巴",
        Folder = "ColdSilence",
        Size = UDim2.fromOffset(580, 460),
        Theme = "Dark",
        User = {
            Enabled = true,
            Callback = function() print("用户按钮点击") end,
            Anonymous = false
        },
        KeySystem = {
            Key = { "我鸡巴好大", "我鸡巴好大" },
            Note = "请输入有效密钥\n\n官方群:1054706873",
            SaveKey = false
        }
    })
end)

if not windowSuccess then
    error("❌ 窗口创建失败: "..tostring(windowResult))
    return
else
    Window = windowResult
end

-- 顶部按钮（增加错误处理）
local function safeCreateButton(name, icon, callback, order)
    pcall(function()
        Window:CreateTopbarButton(name, icon, callback, order)
    end)
end

safeCreateButton("MyButton1", "bird", function() print("按钮1") end, 990)
safeCreateButton("MyButton2", "settings", function() Window:ToggleFullscreen() end, 989)

-- 内存优化
task.defer(function()
    collectgarbage("")
    print("✅ 内存优化完成 | 当前用量:", math.floor((collectgarbage("count")/1024)).."MB")
end)

print("🎉 大黑鸡巴脚本加载完成!")

local Tabs = {}

do
    Tabs.MainTab = Window:Section({Title = "脚本", Opened = true})
    Tabs.SpeedTab = Tabs.MainTab:Tab({ Title = "巴掌", Icon = "zap" })
  Tabs.FETab = Tabs.MainTab:Tab({ Title = "FE", Icon = "zap" })    
   Tabs.TYTab = Tabs.MainTab:Tab({ Title = "通用", Icon = "zap" })    
   Tabs.QTTab = Tabs.MainTab:Tab({ Title = "其他游戏", Icon = "zap" })  
   Tabs.FEGTab = Tabs.MainTab:Tab({ Title = "FE2", Icon = "zap" })   
end

Tabs.SpeedTab:Button({
    Title = "冰霜神",
    Desc = "冰霜神",
    Callback = function()
 loadstring(game:HttpGet("https://pastefy.app/LYJzX6un/raw"))();       
    end
})

Tabs.SpeedTab:Button({
    Title = "查拉",
    Desc = "查拉",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CelerityRBLX/Roblox/refs/heads/main/Slap%20Battles/Chara.lua"))();
    end
})

Tabs.SpeedTab:Button({
    Title = "巴西",
    Desc = "巴西",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/SlapBattlesIdkWhatToNameIt.lua"))()        
    end
})

Tabs.SpeedTab:Button({
    Title = "sans",
    Desc = "sans",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/main/SansComeback", true))()        
    end
})

Tabs.SpeedTab:Button({
    Title = "表情",
    Desc = "表情",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/FeEmote.lua"))()        
    end
})

Tabs.SpeedTab:Button({
    Title = "米诺斯",
    Desc = "米诺斯",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crossattic/SBS/refs/heads/main/Minos%20Prime%20v1%20BETA"))()
    end
})

Tabs.FETab:Button({
    Title = "甩飞",
    Desc = "甩飞",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/e7b408abcb813525d37e9b7a6bf301c9/raw/6421f9000e90e8a4c2ed57052208acbd6f9648dd/Minigun.txt"))()        
    end
})

Tabs.FETab:Button({
    Title = "超慢",
    Desc = "超慢",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DROID-cell-sys/ANTI-UTTP-SCRIPTT/refs/heads/main/EGOR%20SCRIPT%20BY%20ANTI-UTTP"))()        
    end
})

Tabs.FETab:Button({
    Title = "隐身",
    Desc = "kkk",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/vP6CrQJj"))()        
    end
})

Tabs.FETab:Button({
    Title = "恶搞中心",
    Desc = "kkk",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Free%20Sus%20Missile", true))()        
    end
})

Tabs.FETab:Button({
    Title = "磁铁",
    Desc = "磁铁",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/CMnEfnz8"))()        
    end
})

Tabs.FETab:Button({
    Title = "钢琴",
    Desc = "钢琴",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Tac's-Piano-Stuff-Talentless-script-made-by-hellohellohell012321-44088"))()        
    end
})

Tabs.FETab:Button({
    Title = "900表情",
    Desc = "900个",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rootleak/roblox/refs/heads/main/main.lua"))()        
    end
})

Tabs.FEGTab:Button({
    Title = "ucg表情",
    Desc = "免费ucg表情",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1nJD7PkH",true))()       
    end
})

Tabs.FEGTab:Button({
    Title = "点击传送",
    Desc = "撸鸡吧",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Teleport-Tool-25249"))()     
    end
})

Tabs.FEGTab:Button({
    Title = "超慢跑跳",
    Desc = "超慢跑跳",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fake-lag-41217"))()
    end
})

Tabs.FEGTab:Button({
    Title = "头部宠物",
    Desc = "调教",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty40.lua"))()
    end
})

Tabs.FEGTab:Button({
    Title = "AC6",
    Desc = "车",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ac6-Music-Vulnerability-25536"))()
    end
})

Tabs.FETab:Button({
    Title = "黑洞",
    Desc = "黑洞",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Super-ring-Parts-V6-28581"))()
    end
})

Tabs.FETab:Button({
    Title = "失重",
    Desc = "失重",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/Roblox-Scripts/refs/heads/main/0%20Graviy%20Trip%20Universal"))()
    end
})

Tabs.FETab:Button({
    Title = "开车",
    Desc = "开车",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AstraOutlight/my-scripts/refs/heads/main/fe%20car%20v3"))()
    end
})

Tabs.FETab:Button({
    Title = "假朋友",
    Desc = "假朋友",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaboy123z/MYFRIENDSCRIPT/refs/heads/main/MYNEWFRIENDSPAWNER"))();
    end
})

Tabs.FETab:Button({
    Title = "反重力",
    Desc = "反重力",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/96XzjEiK"))()
    end
})

Tabs.FETab:Button({
    Title = "操人",
    Desc = "操人",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkyuHQ7Y"))();
    end
})

Tabs.FETab:Button({
    Title = "跳墙",
    Desc = "跳墙",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ScpGuest666/Random-Roblox-script/refs/heads/main/Roblox%20WallHop%20V4%20script"))()
    end
})

Tabs.FETab:Button({
    Title = "闪回",
    Desc = "闪回",
    Callback = function()
loadstring(game:HttpGet("https://mscripts.vercel.app/scfiles/reverse-script.lua"))()
    end
})

Tabs.FETab:Button({
    Title = "爬行",
    Desc = "爬行",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_vZDX8j5ggfAf58QhdJ59BVEmF6nmZgq4Mcjt2l8wn16CiStIW2P6EkNc605qv9K4.lua.txt'))()
    end
})

Tabs.FETab:Button({
    Title = "VR",
    Desc = "VR",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty45.lua"))()
    end
})

Tabs.FETab:Button({
    Title = "酷小孩",
    Desc = "酷小孩",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/qwertys/refs/heads/main/qwerty2.lua"))()
    end
})

Tabs.FETab:Button({
    Title = "被操",
    Desc = "被操",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/3LD4D0/FE-TROLLING-PLAYER-R6-R15/6eff8792afed57458d5114478b453a6f6bce5799/Fe%20trolling%20Player%20R6%20AND%20R15"))()
    end
})

Tabs.FETab:Button({
    Title = "R6假无头",
    Desc = "R6假无头",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack'))()
    end
})

Tabs.FETab:Button({
    Title = "杰森",
    Desc = "杰森",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/6203b323781cfb0a7ad35e4e9f60e026/raw/222815c2a4f6ffe38f8ae3965f6b3640c180ab4c/Jason.lua"))()
    end
})

Tabs.TYTab:Button({
    Title = "飞行",
    Desc = "飞行",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1)%20(1).txt"))()
    end
})

Tabs.TYTab:Slider({
    Title = "跑步速度",
    Value = {
        Min = 1,
        Max = 99999,
        Default = 50,
    },
    Callback = function(value)
        local localPlayer = game.Players.LocalPlayer
        local character = localPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    end
})

Tabs.TYTab:Slider({
    Title = "跳跃高度",
    Value = {
        Min = 1,
        Max = 9999,
        Default = 50,
    },
    Callback = function(value)
        local localPlayer = game.Players.LocalPlayer
        local character = localPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.JumpPower = value
            end
        end
    end
})

Tabs.TYTab:Toggle({
    Title = "穿墙",
    Value = false,
    Callback = function(value)
        WallTp = value
        if value then
            -- 开启穿墙时，监听玩家移动
            game:GetService("RunService").Stepped:Connect(function()
                if WallTp and game.Players.LocalPlayer.Character then
                    local Character = game.Players.LocalPlayer.Character
                    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                    if Humanoid then
                        -- 取消碰撞检测（穿墙核心）
                        for _, part in ipairs(Character:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                    end
                end
            end)
        else
            -- 关闭穿墙时，恢复碰撞
            if game.Players.LocalPlayer.Character then
                for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end
})

Tabs.TYTab:Toggle({
    Title = "连跳",
    Value = false,
    Callback = function(value)
       Jump = value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end
})

Tabs.TYTab:Button({
    Title = "键盘",
    Desc = "键盘",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
    end
})

Tabs.QTTab:Button({
    Title = "刷债券",
    Desc = "刷债券",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Umbrella-Scripter/Deadrails-Script/refs/heads/main/average-bond-farm.lua"))()
    end
})

Tabs.QTTab:Button({
    Title = "tx刷债券v3",
    Desc = "全自动刷债券",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JsYb666/Item/refs/heads/main/%E5%88%B7%E5%80%BA%E5%88%B8"))()
    end
})

Tabs.QTTab:Button({
    Title = "st脚本",
    Desc = "卡密BUHYD69",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dyumra/Loader/refs/heads/main/LoaderV2'))()
    end
})

Tabs.QTTab:Button({
    Title = "mm2",
    Desc = "mm2透视",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Esp-47474"))()
    end
})

Tabs.QTTab:Button({
    Title = "doors",
    Desc = "门",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHunterSolo1/Scripts/refs/heads/main/Protected_2809220311826785.lua.txt"))()
    end
})

Tabs.QTTab:Button({
    Title = "彩虹朋友",
    Desc = "彩虹朋友",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Rainbow-Friends-Best-2-Cheat-Iliankytn-42037"))()
    end
})

Tabs.QTTab:Button({
    Title = "动感星期五",
    Desc = "自动打",
    Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/XMAS-Event-or-Funky-Friday-Auto-Player-Mobile-6721"))()
    end
})

Tabs.QTTab:Button({
    Title = "战争大亨",
    Desc = "牛逼",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaguya11/KaguHubRework/refs/heads/main/Scripts/Loader.lua", true))("t.me/rbxscript_robot")
    end
})

Tabs.QTTab:Button({
    Title = "偷一只鱼",
    Desc = "自动偷鱼",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MynameIsDoit/StealAFishAuto/refs/heads/main/AutoSteal.luau"))()
    end
})

Tabs.QTTab:Button({
    Title = "最强战场",
    Desc = "最强战场",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Something478/MainScripts/refs/heads/main/BreezeHub.lua"))()
    end
})

Tabs.QTTab:Button({
    Title = "枪械库大亨",
    Desc = "jjj",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/BeerlDeveloper/e1b9eb788df5e9fbace5b6460e3b91c5/raw/6c1068753fd50bb9e89502cb48b8304b664219ab/GunArmoryTycoonLoader.lua"))()
    end
})

Tabs.QTTab:Button({
    Title = "力量传奇",
    Desc = "密码Benlovesul",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ben1x1x1x1x/V2/refs/heads/main/BeamedV2FreeLoader"))()
    end
})

Tabs.QTTab:Button({
    Title = "格林维尔",
    Desc = "gv",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/GreenvilleWinter"))()
    end
})

Tabs.QTTab:Button({
    Title = "恶魔学",
    Desc = "恶魔学",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/87GTQwtw"))()
    end
})

Tabs.QTTab:Button({
    Title = "墨水游戏",
    Desc = "op",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/inkgames.github.io/refs/heads/main/ringta.lua"))()
    end
})

Tabs.QTTab:Button({
    Title = "爱德华食人列车",
    Desc = "快睡觉觉",
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/mzQH8kbr/raw"))()
    end
})

Tabs.QTTab:Button({
    Title = "scp",
    Desc = "scp",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/voidpathhub/VoidPath/refs/heads/main/VoidPath.luau"))()
    end
})

Tabs.FETab:Button({
    Title = "在别人身上转",
    Desc = "旋转",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoserAlt/hatspin/refs/heads/main/hat"))()        
    end
})

Tabs.TYTab:Button({
    Title = "vapev4",
    Desc = "我是安慕希尺子",
    Callback = function()
loadstring(utf8.char(table.unpack({
108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,55,71,114,97,110,100,68,97,100,80,71,78,47,86,97,112,101,86,52,70,111,114,82,111,98,108,111,120,47,109,97,105,110,47,78,101,119,77,97,105,110,83,99,114,105,112,116,46,108,117,97,34,44,32,116,114,117,101,41,41,40,41
})))()        
    end
})

Tabs.TYTab:Section({Title = "自动传送"})
Tabs.TYTab:Dropdown({
    Title = "选择玩家",
    Values = a.list,
    Value = "",
    Callback = function(option)
        a.selectname = option
    end
})

Tabs.TYTab:Toggle({
    Title = "自动传送",
    Default = false,
    Image = "check",
    Callback = function(state)
        a.autoPush = state
        if state then
            spawn(function()
                while a.autoPush and wait() do
                    local targetPlayer = Players:FindFirstChild(a.selectname)
                    local localChar = LocalPlayer.Character
                    
                    if targetPlayer and targetPlayer.Character and localChar then
                        localChar:MoveTo(targetPlayer.Character:GetPivot().Position)
                        
                        local pushTool = LocalPlayer.Backpack:FindFirstChild("Push")
                        if pushTool then
                            local args = {
                                [1] = "UsingMoveCustom",
                                [2] = pushTool,
                                [4] = {
                                    ["AutoUse"] = true
                                }
                            }
                            ReplicatedStorage.Remotes.UsedTool:FireServer(unpack(args))
                        end
                    end
                end
            end)
        end
    end
})

local Tabs = {}

do
    Tabs.MainTab = Window:Section({Title = "骚逼设置", Opened = true})
    Tabs.WindowTab = Tabs.MainTab:Tab({ Title = "选择主题", Icon = "zap" })
    Tabs.CreateThemeTab = Tabs.MainTab:Tab({ Title = "自制主题", Icon = "zap" })
end

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = Tabs.WindowTab:Dropdown({
    Title = "主题选择",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = Tabs.WindowTab:Toggle({
    Title = "透明切换",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

Tabs.WindowTab:Section({ Title = "保存" })

local fileNameInput = ""
Tabs.WindowTab:Input({
    Title = "配置名输入与处理",
    PlaceholderText = "Enter file name",
    Callback = function(text)
        fileNameInput = text
    end
})

Tabs.WindowTab:Button({
    Title = "保存配置",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

filesDropdown = Tabs.WindowTab:Dropdown({
    Title = "选择配置",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

Tabs.WindowTab:Button({
    Title = "加载配置",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "File Loaded",
                    Content = "Loaded data: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})

Tabs.WindowTab:Button({
    Title = "覆盖配置",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

Tabs.WindowTab:Button({
    Title = "列表刷新",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})

local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].Placeholder

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        Placeholder = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = Tabs.CreateThemeTab:Input({
    Title = "主题名字",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "背景色配置",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "轮廓颜色选择",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "文本颜色选择",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "文本颜色配置",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Button({
    Title = "主题更新",
    Callback = function()
        updateTheme()
    end
})

do
   Tabs.MainTab = Window:Section({Title = "导航", Opened = true})
   Tabs.kkkTab = Tabs.MainTab:Tab({ Title = "导航", Icon = "zap" })
end

Tabs.kkkTab:Paragraph({
    Title = "p站",
    Desc = "全球最大成人网站",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://cn.pornhub.com/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "xvideos",
    Desc = "第二大",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://www.xvideos.com/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "51吃瓜",
    Desc = "骚",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://www.jdxafwa.cc/category/rdsj/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "51爆料",
    Desc = "和51吃瓜不是一个",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://album.abmdihw.cc/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "成人韩漫网站",
    Desc = "这个是真的好看",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://manhwa-raw.com/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "acg黄油",
    Desc = "撸撸撸",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://www.2gouacg.com/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "xhamster",
    Desc = "第三大",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://xhamster.com/?ref=porndude")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "onlyfans",
    Desc = "不用多说",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://onlyfans.com/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "r34",
    Desc = "基本啥都有",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://rule34.xxx/")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.kkkTab:Paragraph({
    Title = "COSplay",
    Desc = "基本上都是糖心的",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("https://rapidtai.com/cn/tag/Cosplay")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})
