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
        Title = "欢迎使用K脚本",
        Icon = "rbxassetid://129260712070622",
        Content = "phkillNB "..gradient("WindUI", Color3.fromHex("#00FF87"), Color3.fromHex("#60EFFF")).." NB",
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
        Title = "K脚本控制台",
        Icon = "rbxassetid://129260712070622",
        Author = "phkill",
        Folder = "ColdSilence",
        Size = UDim2.fromOffset(580, 460),
        Theme = "Dark",
        User = {
            Enabled = true,
            Callback = function() print("用户按钮点击") end,
            Anonymous = false
        },
        KeySystem = {
            Key = { "1054706873", "1054706873" },
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

print("🎉 K脚本加载完成!")

local Tabs = {}

do
    Tabs.MainTab = Window:Section({Title = "巴掌模拟器", Opened = true})
    Tabs.SpeedTab = Tabs.MainTab:Tab({ Title = "巴掌模拟器", Icon = "zap" })
end

Tabs.SpeedTabTab:Button({
    Title = "冰霜神",
    Desc = "冰",
    Callback = function()
loadstring(game:HttpGet("https://pastefy.app/LYJzX6un/raw"))();        
    end
})

Tabs.SpeedTab:Button({
    Title = "查拉",
    Desc = "刀",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CelerityRBLX/Roblox/refs/heads/main/Slap%20Battles/Chara.lua"))();        
    end
})

Tabs.SpeedTab:Button({
    Title = "超级人",
    Desc = "人人人",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/main/GodHuman", true))()      
    end
})

Tabs.SpeedTab:Button({
    Title = "远程杀戮",
    Desc = "巴西",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/SlapBattlesIdkWhatToNameIt.lua"))()        
    end
})

Tabs.SpeedTab:Button({
    Title = "边缘领主",
    Desc = "边缘领主",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IncognitoScripts/SlapBattles/refs/heads/main/Edgelord"))()         end
})

Tabs.SpeedTab:Button({
    Title = "死神",
    Desc = "死神",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yuna-ux/Slap-battles/refs/heads/main/Death_glove_V4.lua"))();        
    end
})

Tabs.SpeedTab:Button({
    Title = "监督者",
    Desc = "lll",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/OVERSEERGlove.txt"))()        
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
    Title = "哨声",
    Desc = "ccc",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Umbrella-Scripter/Slap-Battles/refs/heads/main/F.L.O.W.E.R.lua'))()        
    end
})

local Tabs = {}

do
    Tabs.MainTab = Window:Section({Title = "菜单设置", Opened = true})
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