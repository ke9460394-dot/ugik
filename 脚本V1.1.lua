local TextChatService = game:GetService("TextChatService") local ReplicatedStorage = game:GetService("ReplicatedStorage") local function SendChatMessage(message) if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then local textChannel = TextChatService.TextChannels.RBXGeneral textChannel:SendAsync(message) else ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All") end end SendChatMessage("Kennynb666") SendChatMessage("DHJB")
local LP = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local customNotificationGui = Instance.new("ScreenGui")
customNotificationGui.Name = "CustomNotificationGui"
customNotificationGui.Parent = playerGui

local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 300, 0, 100)
notificationFrame.Position = UDim2.new(1, 0, 1, -110) 
notificationFrame.BackgroundColor3 = Color3.new(0, 0, 0) 
notificationFrame.BackgroundTransparency = 0.2 
notificationFrame.BorderSizePixel = 0 
notificationFrame.Parent = customNotificationGui

local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(1.2, 0, 1.2, 0) 
loadingRing.Position = UDim2.new(-0.1, 0, -0.1, 0) 
loadingRing.BackgroundTransparency = 1 
loadingRing.Image = "rbxassetid://1011584077" 
loadingRing.ImageColor3 = Color3.new(1, 1, 1) 
loadingRing.Parent = notificationFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.BackgroundTransparency = 1 
titleLabel.TextColor3 = Color3.new(1, 1, 1) 
titleLabel.Text = "大黑鸡巴脚本" 
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.Parent = notificationFrame

local contentLabel = Instance.new("TextLabel")
contentLabel.Size = UDim2.new(1, -20, 0, 40)
contentLabel.Position = UDim2.new(0, 10, 0, 45)
contentLabel.BackgroundTransparency = 1
contentLabel.TextColor3 = Color3.new(1, 1, 1)
contentLabel.Text = "大黑鸡巴脚本加载完成开始导管吧小兄弟" 
contentLabel.Font = Enum.Font.SourceSans
contentLabel.TextSize = 16
contentLabel.Parent = notificationFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -30, 0, 10)
closeButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = notificationFrame

closeButton.MouseButton1Click:Connect(function()
    customNotificationGui:Destroy()
end)

local rotateTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1)
local rotateTween = TweenService:Create(loadingRing, rotateTweenInfo, {Rotation = 360})
rotateTween:Play()

local targetPosition = UDim2.new(1, -310, 1, -110)
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = TweenService:Create(notificationFrame, tweenInfo, {Position = targetPosition})
tween:Play()

wait(5)
customNotificationGui:Destroy()

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
        Title = "欢迎使用大黑鸡巴脚本全网最烂全缝合脚本",
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
        Title = "大黑鸡巴脚本V1.1正式版",
        Icon = "rbxassetid://129260712070622",
        Author = "我有大鸡巴",
        Folder = "ColdSilence",
        Size = UDim2.fromOffset(400, 430),
        Theme = "Dark",
        User = {
            Enabled = true,
            Callback = function() print("用户按钮点击") end,
            Anonymous = false
        },
        KeySystem = {
            Key = { "wjbhd", "wjbhd" },
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
  Tabs.FETab = Tabs.MainTab:Tab({ Title = "FE", Icon = "zap" })    
   Tabs.TYTab = Tabs.MainTab:Tab({ Title = "通用", Icon = "zap" })
   Tabs.TY2Tab = Tabs.MainTab:Tab({ Title = "通用2", Icon = "zap" })    
   Tabs.QTTab = Tabs.MainTab:Tab({ Title = "其他游戏", Icon = "zap" })  
   Tabs.FEGTab = Tabs.MainTab:Tab({ Title = "FE2", Icon = "zap" })
   Tabs.CSJTab = Tabs.MainTab:Tab({ Title = "创世纪FE", Icon = "zap" })
   Tabs.ZQTab = Tabs.MainTab:Tab({ Title = "最强战场", Icon = "zap" }) 
   Tabs.BZTab = Tabs.MainTab:Tab({ Title = "巴掌模拟器", Icon = "zap" })
   Tabs.MLTab = Tabs.MainTab:Tab({ Title = "甜瓜FE", Icon = "zap" })  
end

Tabs.MLTab:Button({
    Title = "不朽领主",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/342631416698bc733c93dbce1fc43371/raw/5b506412e72fbc1b9e9730ae7f096d33bf06e128/ImmortalityLord.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "大锤近战",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/bc7a020c542be0b7f528a5d8fda5ad52/raw/0db8993dc638613bd91b10fdbceb5c2d0754711e/SledgeHammer.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "杰森",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/6203b323781cfb0a7ad35e4e9f60e026/raw/222815c2a4f6ffe38f8ae3965f6b3640c180ab4c/Jason.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "反派本色",
    Desc = "无碰撞甩飞",
    Callback = function()
loadstring(game:HttpGet(('https://gist.githubusercontent.com/axelinharlem182/1ee425c9d850af697f8c3cb108a9d816/raw/c4660b01faf4db266e8031e310121a65836f98a7/The%2520Villain'),true))()
    end
})

Tabs.MLTab:Button({
    Title = "内部战台",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/20eeb7c97303b19d6079b35de1e71df4/raw/129bb5c45933671097386bcd9d944ab4e7ecc55b/InternalWar.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "速度之星",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/e75f359fee8f18a171962df8c020ed95/raw/7106700d10ec2efc084b8879048dca72f86a10e7/KyusEnder.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "地平线加农炮",
    Desc = "无碰撞甩飞",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/34653df65434cbbbc36b3ec51d03e7a3/raw/8bd9ef0ad4495baa06f435629b562a103eaf2bf8/HorizonLC"))()
    end
})

Tabs.MLTab:Button({
    Title = "机枪手",
    Desc = "无碰撞甩飞",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/e7b408abcb813525d37e9b7a6bf301c9/raw/6421f9000e90e8a4c2ed57052208acbd6f9648dd/Minigun.txt"))()
    end
})

Tabs.MLTab:Button({
    Title = "消色差",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/1e606bc885a3c12fd50bc8f29ae6ac49/raw/6f2e187cc59818d2a308bdd055ae2a93bf2fcb64/Achromatic.lua"))()
    end
})

Tabs.MLTab:Button({
    Title = "虚空领主怪物",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/MelonsStuff/679dc6167ec854831759f495b970cc71/raw/9663b65e4df1fa491f1227aee8cbea43cbfe04d8/VoidBoss.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "一键全徽章手套",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/UltimateBadgeHub/main/main.lua'))()
    end
})

Tabs.BZTab:Button({
    Title = "boos战脚本",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/File-Script/Slap_Battles.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "死神手套",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yuna-ux/Slap-battles/refs/heads/main/Death_glove_V4.lua"))();
    end
})

Tabs.BZTab:Button({
    Title = "全自动刷巴掌",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CelerityRBLX/Roblox/refs/heads/main/Slap%20Battles/Slap%20Farm%20Loader.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "能力gui",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheLostStar7/Scripts/refs/heads/main/Slap%20battles%20ability%20gui"))()
    end
})

Tabs.BZTab:Button({
    Title = "米诺斯",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/MinosPrimeFanMade2.0.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "弥诺斯",
    Desc = "超级牛逼",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crossattic/SBS/refs/heads/main/Minos%20Prime%20v1%20BETA"))()
    end
})

Tabs.BZTab:Button({
    Title = "监督者",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/OVERSEERGlove.txt"))()
    end
})

Tabs.BZTab:Button({
    Title = "戴夫手套",
    Desc = "可叠加别的",
    Callback = function()
loadstring(game:HttpGet('https://pastefy.app/Tau7Gnno/raw'))()
    end
})

Tabs.BZTab:Button({
    Title = "超本能",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/MUI%5BGloveCustom%5D.lua'))()
    end
})

Tabs.BZTab:Button({
    Title = "边缘领主",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/Edgelord"))()
    end
})

Tabs.BZTab:Button({
    Title = "边缘领主v2",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/FeEdgelord2.0.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "远程杀戮+巴西",
    Desc = "超级牛逼装备rob手套",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/SlapBattlesIdkWhatToNameIt.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "超级人类",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/main/GodHuman", true))()
    end
})  

Tabs.BZTab:Button({
    Title = "查拉技能组",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CelerityRBLX/Roblox/refs/heads/main/Slap%20Battles/Chara.lua"))();
    end
})

Tabs.BZTab:Button({
    Title = "冰霜神",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/LYJzX6un/raw"))();
    end
})

Tabs.BZTab:Button({
    Title = "表情动作",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/FeEmote.lua"))()
    end
})

Tabs.BZTab:Button({
    Title = "sans手套",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/main/SansComeback", true))()
    end
})

Tabs.BZTab:Button({
    Title = "哨声",
    Desc = "可以炸服",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Umbrella-Scripter/Slap-Battles/refs/heads/main/F.L.O.W.E.R.lua'))()
    end
})

Tabs.BZTab:Button({
    Title = "500连杀",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/FEcustom500killstreak.lua"))()
    end
})

Tabs.ZQTab:Button({
    Title = "索尼克",
    Desc = "索尼克",
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/4zLt8a2P/raw"))()
    end
})

Tabs.ZQTab:Button({
    Title = "悟空",
    Desc = "动画",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkRandomUsernameok/PublicAssets/refs/heads/main/Releases/MUI.lua"))()
    end
})

Tabs.ZQTab:Button({
    Title = "调节场景",
    Desc = "lll",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/refs/heads/main/SG_DEMO.lua"))()
    end
})

Tabs.ZQTab:Button({
    Title = "月光",
    Desc = "用格斗家",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/SlimJimShady/sungjin/refs/heads/main/Protected_7329509552810618.lua.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "宿傩",
    Desc = "装备琦玉",
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/3dQB5Mv5/raw"))();
    end
})

Tabs.ZQTab:Button({
    Title = "加百列",
    Desc = "装备英雄猎人",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/damir512/youinsinificants/main/insignificantFuck.txt",true))()
    end
})

Tabs.ZQTab:Button({
    Title = "狼牙",
    Desc = "装备琦玉",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/GoldenHeads2/f66279000c58a020e894a6db44914838/raw/62e53e1acacec0b38b43cd0f594292c32e09c39b/gistfile1.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "黄金",
    Desc = "使用琦玉",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Saitama%20to%20golden%20sigma'))()
    end
})

Tabs.ZQTab:Button({
    Title = "狼牙",
    Desc = "装备琦玉",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/GoldenHeads2/f66279000c58a020e894a6db44914838/raw/62e53e1acacec0b38b43cd0f594292c32e09c39b/gistfile1.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "光的速度",
    Desc = "装备琦玉",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nova2ezz/west/refs/heads/main/Protected_4638864115822087.lua.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "夜神月",
    Desc = "装备英雄猎人",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/GoldenHeads2/35ca43410a2e96102f73dca904137973/raw/c4cb113194c35e0439151b06ea82dcc8053ff2c3/gistfile1.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "火车头",
    Desc = "装备英雄猎人",
    Callback = function()
getgenv().settings = {
    ["morph"] = {
        ["enabled"] = false,
        ["dontchangeskincolor"] = false,
    },
    ["ult_forcewalkspeed"] = true, -- forces walkspeed even if set to 0
    ["ult_walkspeed"] = 64, -- how fast you walk in ult
    ["tp_duration"] = 0.15 -- how long it takes to tp
} 

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/ATrainSounds/refs/heads/main/ATrain.lua"))()
    end
})

Tabs.ZQTab:Button({
    Title = "45%",
    Desc = "装备英雄猎人",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/xKextYP5"))()
    end
})

Tabs.ZQTab:Button({
    Title = "真人",
    Desc = "装备琦玉",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Mahito%20v2%20sigma%20tp%20exploit'))()
    end
})

Tabs.ZQTab:Button({
    Title = "火影忍者",
    Desc = "三个角色",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LolnotaKid/SCRIPTSBYVEUX/refs/heads/main/BoombasticLol.lua.txt"))()
    end
})

Tabs.ZQTab:Button({
    Title = "米诺斯",
    Desc = "装备英雄猎人",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/S1gmaGuy/MinosPrimeFixed/refs/heads/main/ThefixIsSoSigma"))()
    end
})

Tabs.FEGTab:Button({
    Title = "变成车",
    Desc = "赛博坦",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-SILLY-CAR-V1-48227"))()        
    end
})

Tabs.FETab:Button({
    Title = "隐身",
    Desc = "嘿嘿嘿",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/vP6CrQJj"))()        
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

Tabs.TY2Tab:Button({
    Title = "LALOL",
    Desc = "后门执行器",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
    end
})

Tabs.TY2Tab:Button({
    Title = "backdoorv6",
    Desc = "后门执行器",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "prizz",
    Desc = "cmd",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
    end
})

Tabs.TY2Tab:Button({
    Title = "cmd",
    Desc = "cmd",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Cool-10379"))()
    end
})

Tabs.TYTab:Button({
    Title = "心灵牵引",
    Desc = "可以磁吸和控制掉落物",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E7%BF%BB%E8%AF%91.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "QuirkyCMD",
    Desc = "cmd",
    Callback = function()
loadstring(game: HttpGet("https://gist.github.com/someunknowndude /38cecea5be9d75cb743eac8b1eaf6758 /raw"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "偷别人物品",
    Desc = "一键获得所有人的物品",
    Callback = function()
for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end
    end
})

Tabs.TY2Tab:Button({
    Title = "秘密聊天",
    Desc = "只有同样使用这个脚本的人可以看见",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MtgpaZaf"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "聊天查找器",
    Desc = "可以查找他人聊天记录",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/v-oidd/chat-tracker/main/chat-tracker.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "刷屏机器",
    Desc = "一键自定义发言",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%88%B7%E5%B1%8F.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "变成球",
    Desc = "滚动",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/scripts/refs/heads/main/unofficial-Projects/FEHamsterBall.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "FPS提升器",
    Desc = "这个脚本超级猛",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JoshzzAlteregooo/JoshzzFpsBoosterVersion3/refs/heads/main/JoshzzNewFpsBooster"))()
    end
})

Tabs.FEGTab:Button({
    Title = "蜘蛛侠",
    Desc = "四百大妈",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E8%9C%98%E8%9B%9B%E4%BE%A0.txt"))()
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
    Title = "遁地",
    Desc = "别人可见",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rTvXTs8F16D8D2oiLxZ62E1E9jT1we312yUyJr2h72Vwqr32l37rirU1S89hqRV7.lua.txt"))()
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
    Desc = "这个漏洞和车有关系",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/AC6.txt"))()
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

Tabs.TYTab:Button({
    Title = "假朋友",
    Desc = "假朋友",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaboy123z/MYFRIENDSCRIPT/refs/heads/main/MYNEWFRIENDSPAWNER"))();
    end
})

Tabs.TYTab:Button({
    Title = "我的世界",
    Desc = "真的能玩别人看不见",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Biem6ondo/mc/refs/heads/main/STARTUP"))()
    end
})

Tabs.TYTab:Button({
    Title = "更好的dex",
    Desc = "dex++",
    Callback = function()
loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
    end
})

Tabs.TYTab:Button({
    Title = "更好的spy",
    Desc = "抓包工具",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Ketamine/refs/heads/main/Ketamine.lua"))()
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
    Title = "火车头",
    Desc = "越跑越快",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E8%B6%8A%E8%B7%91%E8%B6%8A%E5%BF%AB.txt"))();
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
    Desc = "这个要饰品可以在有碰撞的服甩飞",
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

Tabs.TYTab:Button({
    Title = "飞行",
    Desc = "飞行",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1)%20(1).txt"))()
    end
})

Tabs.CSJTab:Button({
    Title = "AK47",
    Desc = "AK47",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47"))()
    end
})

Tabs.CSJTab:Button({
    Title = "封禁之锤",
    Desc = "ban",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()
    end
})

Tabs.CSJTab:Button({
    Title = "放逐者",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Banisher"))()
    end
})

Tabs.CSJTab:Button({
    Title = "亲爱的姐妹",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"))()
    end
})

Tabs.CSJTab:Button({
    Title = "大风战士",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Gale%20Fighter"))()
    end
})

Tabs.CSJTab:Button({
    Title = "死",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"))()
    end
})

Tabs.CSJTab:Button({
    Title = "好警察坏警察",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))()
    end
})

Tabs.CSJTab:Button({
    Title = "卡兰比特",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Karambit"))()
    end
})

Tabs.CSJTab:Button({
    Title = "闪电炮",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"))()
    end
})

Tabs.CSJTab:Button({
    Title = "连身剑",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"))()
    end
})

Tabs.CSJTab:Button({
    Title = "转轮机枪",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun"))()
    end
})

Tabs.CSJTab:Button({
    Title = "摩托车",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Motorcycle"))()
    end
})

Tabs.CSJTab:Button({
    Title = "海王星五号",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()
    end
})

Tabs.CSJTab:Button({
    Title = "傀儡师",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Puppet%20Master"))()
    end
})

Tabs.CSJTab:Button({
    Title = "虐待狂种族灭绝",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"))()
    end
})

Tabs.CSJTab:Button({
    Title = "罪恶龙",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sin%20Dragon"))()
    end
})

Tabs.CSJTab:Button({
    Title = "狙击手",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()
    end
})

Tabs.CSJTab:Button({
    Title = "工作室假人",
    Desc = "",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy"))()
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

Tabs.TYTab:Button({
    Title = "忍者同款键盘",
    Desc = "键盘",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E9%94%AE%E7%9B%98.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "第一人称自瞄",
    Desc = "只能在第一人称射击游戏用",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Roblox-HttpSpy/Random-Silly-stuff/refs/heads/main/AimBotV2.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "iy指令",
    Desc = "iy",
    Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
})

Tabs.TY2Tab:Button({
    Title = "CET",
    Desc = "扫描服务器",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Executor-Tests/refs/heads/main/Environment/Test.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "透视",
    Desc = "透视",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/raw/refs/heads/main/ESP.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "蓝屏报错",
    Desc = "无法关闭",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
    end
})

Tabs.TY2Tab:Button({
    Title = "秒互动",
    Desc = "一秒互动",
    Callback = function()
game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(v)
    v.HoldDuration = 0
end)
    end
})

Tabs.TY2Tab:Button({
    Title = "无敌黑洞什么都可以吸",
    Desc = "仅自己可见娱乐用",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "青蛙走路特效",
    Desc = "仅自己可见",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/vhis9HZy"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "镰刀死神可传送踏空",
    Desc = "只有自己能看到死神和镰刀特效",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/srzmnx/OLD-roblox-scripts/refs/heads/master/Scythe.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "坐标传送1",
    Desc = "这个不挡视野",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%9D%90%E6%A0%87%E4%BC%A0%E9%80%81.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "坐标传送2",
    Desc = "这个有点挡",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%9D%90%E6%A0%87%E6%9F%A5%E7%9C%8B%E5%8A%A0%E4%BC%A0%E9%80%81.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "实时数据",
    Desc = "玩家实时数据",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%AE%9E%E6%97%B6%E6%95%B0%E6%8D%AE.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "本地音乐播放器",
    Desc = "输入音乐ID使用",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E6%9C%AC%E5%9C%B0%E9%9F%B3%E4%B9%90%E6%92%AD%E6%94%BE%E5%99%A8.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "自定义角色动画",
    Desc = "可调节",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E8%87%AA%E5%AE%9A%E4%B9%89%E5%8A%A8%E7%94%BB.txt"))()
    end
})

Tabs.TY2Tab:Button({
    Title = "计时器",
    Desc = "速通大佬说是",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E8%AE%A1%E6%97%B6%E5%99%A8.txt"))()
    end
})

Tabs.TYTab:Button({
    Title = "玩家进入提示",
    Desc = "玩家进入提示",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
    end
})

Tabs.TYTab:Button({
    Title = "自瞄",
    Desc = "自瞄",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
    end
})

Tabs.TYTab:Button({
    Title = "变流畅",
    Desc = "变流畅",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
    end
})

Tabs.TYTab:Button({
    Title = "光影",
    Desc = "光影",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()     
    end
})

Tabs.TYTab:Toggle({
    Title = "夜视",
    Desc = "夜视功能",
    Default = false,
    Callback = function(value)
        if value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})

Tabs.TYTab:Button({
    Title = "反挂机",
    Desc = "反挂机",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
    end
})

Tabs.TYTab:Button({
    Title = "飞车",
    Desc = "飞车",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
    end
})

Tabs.TYTab:Button({
    Title = "踏空",
    Desc = "踏空",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    end
})

Tabs.TYTab:Button({
    Title = "爬墙",
    Desc = "爬墙",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))() 
    end
})

Tabs.TYTab:Button({
    Title = "无敌",
    Desc = "j",
    Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
    end
})

Tabs.TYTab:Button({
    Title = "坐标仪1",
    Desc = "第一种",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E5%9D%90%E6%A0%87%E4%BB%AA.txt"))()
    end
})

Tabs.TYTab:Button({
    Title = "坐标仪2",
    Desc = "第二种",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/%E4%BD%8D%E7%BD%AE%E4%BB%AA.txt"))()
    end
})

Tabs.TYTab:Button({
    Title = "时间",
    Desc = "实时显示北京时间",
    Callback = function()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(0, 3, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 3, 1)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(0, 3, 3)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
    FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
  CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("当前时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
      end
    })
 
Tabs.TYTab:Button({
    Title = "掉头",
    Desc = "头会掉",
    Callback = function()
   local lp = game:GetService "Players".LocalPlayer
    if lp.Character:FindFirstChild "Head" then
      local char = lp.Character
      char.Archivable = true
      local new = char:Clone()
      new.Parent = workspace
      lp.Character = new
      wait(0.1)
      local oldhum = char:FindFirstChildWhichIsA "Humanoid"
      local newhum = oldhum:Clone()
      newhum.Parent = char
      newhum.RequiresNeck = false
      oldhum.Parent = nil
      wait(0.1)
      lp.Character = char
      new:Destroy()
      wait(0.1)
      newhum:GetPropertyChangedSignal("Health"):Connect(
      function()
        if newhum.Health <= 0 then
          oldhum.Parent = lp.Character
          wait(0.1)
          oldhum:Destroy()
        end
      end)
      workspace.CurrentCamera.CameraSubject = char
      if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(0.1)
        char.Animate.Disabled = false
      end
      lp.Character:FindFirstChild "Head":Destroy()
    end
end
})

Tabs.TYTab:Input({
    Title = "重力设置",
    Value = "",
    Placeholder = "修改重力",
    Callback = function(input)
        game.Workspace.Gravity = tonumber(input) or game.Workspace.Gravity
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
    Title = "布鲁克斯海文",
    Desc = "kkk",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cat558-uz/Add/refs/heads/main/obfuscated_script-1753064471386.lua.txt"))()
    end
})

Tabs.QTTab:Button({
    Title = "布鲁克海文FE音效",
    Desc = "别人可见",
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Audio-Player-Script-Brookhaven-RP-33531"))()
    end
})

Tabs.QTTab:Button({
    Title = "刀剑对决",
    Desc = "oo",
    Callback = function()
loadstring(game:HttpGet("https://paste.yt/P31468.txt"))()
    end
})

Tabs.QTTab:Button({
    Title = "尘土飞扬的旅行",
    Desc = "ccb",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/EruditeHub/main/A%20Dusty%20Trip/V3F"))()
    end
})

Tabs.QTTab:Button({
    Title = "犯罪",
    Desc = "脚本",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/UNDETECTEDWARE/SCRIPT/refs/heads/main/UNDETECTEDWARENEW"))()
    end
})

Tabs.QTTab:Button({
    Title = "模仿者",
    Desc = "kk",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/FlowRewrite/refs/heads/main/Main.FCinsoticularisolnialkavoltPxcloudfile"))();
    end
})

Tabs.QTTab:Button({
    Title = "项目粉碎",
    Desc = "鸡吧",
    Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/KVxwiyL7"))()
    end
})

Tabs.QTTab:Button({
    Title = "木材大亨2",
    Desc = "223322",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/DevKron/Kron_Hub/refs/heads/main/version_1.0'))("")
    end
})

Tabs.QTTab:Button({
    Title = "泡泡糖跳跃",
    Desc = "yyyy",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sylolua/mine/refs/heads/main/BubbleGumJumping",true))()
    end
})

Tabs.QTTab:Button({
    Title = "收养我",
    Desc = "jjj",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Ankazcx/Loader/main/AdoptMe'))()
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

local a = {
    list = {},
    selectname = "",
    autoPush = false
}

for _, v in pairs(Players:GetPlayers()) do
    if v ~= LocalPlayer then
        table.insert(a.list, v.Name)
    end
end

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
   Tabs.kkkTab = Tabs.MainTab:Tab({ Title = "簧片导航", Icon = "zap" })
   Tabs.MXTab = Tabs.MainTab:Tab({ Title = "鸣谢名单", Icon = "zap" })
   Tabs.YPTab = Tabs.MainTab:Tab({ Title = "约炮热线", Icon = "zap" })
   Tabs.JBTab = Tabs.MainTab:Tab({ Title = "脚本", Icon = "zap" })
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

Tabs.MXTab:Paragraph({
    Title = "冷寂",
    Desc = "大红眼睛的恩情还不完",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("2893403284")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.MXTab:Paragraph({
    Title = "唐尧",
    Desc = "提供了自动发言和坐标仪",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("唐尧")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.MXTab:Paragraph({
    Title = "我",
    Desc = "Kenny",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("1531514159")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.YPTab:Paragraph({
    Title = "骚鸡吧d4shie",
    Desc = "求操",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制QQ",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("3848683541")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.JBTab:Paragraph({
    Title = "创世纪官方频道",
    Desc = "genesis",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("http://www.youtube.com/@GENESIS-FE")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})

Tabs.JBTab:Paragraph({
    Title = "melon官方频道",
    Desc = "melon",
    Image = "github",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "点击复制",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("http://www.youtube.com/@MelonScripter")
                WindUI:Notify({
                    Title = "复制!",
                    Content = "群1054706873",
                    Duration = 2
                })
            end
        }
    }
})