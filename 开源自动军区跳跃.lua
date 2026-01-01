---二改去圈钱死全家二改给别人免费用可以
local sb = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"

local cao = loadstring(game:HttpGet(sb .. "Library.lua"))()
local nima = loadstring(game:HttpGet(sb .. "addons/ThemeManager.lua"))()
local diu = loadstring(game:HttpGet(sb .. "addons/SaveManager.lua"))()

local gan = cao.CreateWindow(cao, {
    Title = "KENNY开源自动跳",
    Footer = "UID:1531514159",
    Icon = 1234567890123,
    NotifingSide = "Right"
})

local ma = {
    Main = gan:AddTab("开合跳"),
    Devil = gan:AddTab("魔鬼跳"),
    Combo = gan:AddTab("拼音+英文"),
    Eng = gan:AddTab("英文开合跳"),
    EngDevil = gan:AddTab("英文魔鬼跳"),
    UI = gan:AddTab("设置")
}

local bi = game.Players.LocalPlayer

local function gun()
    local sha = bi.Character
    if sha then
        local si = sha:FindFirstChildOfClass("Humanoid")
        if si then
            si:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end

local function kou(nmsl)
    local wcnm = {
        [1] = nmsl,
        [2] = "All"
    }
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(unpack(wcnm))
end

local cnm = {
    Start = 1,
    EndAt = 10,
    Prefix = "",
    Delay = 2.5
}

local mlgb = {
    Start = 1,
    EndAt = 10,
    Prefix = "",
    Speed = 1
}

local wqnmlgb = {
    Start = 1,
    EndAt = 10,
    Prefix = "",
    Delay = 2.5,
    Separator = "-",
    Upper = true
}

local nmb = {
    Start = 1,
    EndAt = 10,
    Prefix = "",
    Delay = 2.5,
    Upper = true
}

local mmp = {
    Start = 1,
    EndAt = 10,
    Prefix = "",
    Speed = 1,
    Upper = true
}

local tm1 = nil
local tm2 = nil
local tm3 = nil
local tm4 = nil
local tm5 = nil

local nb = {
    [0] = "LING",
    [1] = "YI",
    [2] = "ER",
    [3] = "SAN",
    [4] = "SI",
    [5] = "WU",
    [6] = "LIU",
    [7] = "QI",
    [8] = "BA",
    [9] = "JIU"
}

local function zz(fuck)
    local shit = {
        [1] = "YI", [2] = "ER", [3] = "SAN", [4] = "SI", [5] = "WU",
        [6] = "LIU", [7] = "QI", [8] = "BA", [9] = "JIU", [10] = "SHI"
    }
    
    local function ass(damn)
        if damn <= 0 then return "LING" end
        if damn <= 10 then return shit[damn] end
        
        if damn < 20 then
            local dick = damn % 10
            return "SHI" .. (dick > 0 and shit[dick] or "")
        end
        
        if damn < 100 then
            local ball = math.floor(damn / 10)
            local cock = damn % 10
            local hole = shit[ball] .. "SHI"
            if cock > 0 then hole = hole .. shit[cock] end
            return hole
        end
        
        if damn < 1000 then
            local pee = math.floor(damn / 100)
            local poo = damn % 100
            local wtf = shit[pee] .. "BAI"
            if poo > 0 then
                if poo < 10 then
                    wtf = wtf .. "LING" .. shit[poo]
                else
                    wtf = wtf .. ass(poo)
                end
            end
            return wtf
        end
        
        if damn < 10000 then
            local fk = math.floor(damn / 1000)
            local u = damn % 1000
            local mom = shit[fk] .. "QIAN"
            if u > 0 then
                if u < 100 then
                    mom = mom .. "LING" .. ass(u)
                else
                    mom = mom .. ass(u)
                end
            end
            return mom
        end
        
        return "SHUZITAIDA"
    end
    
    if fuck >= 1 and fuck <= 9999 then
        return true, ass(fuck)
    else
        return false, ""
    end
end

local function ri(num, upper)
    local dog = {
        [0] = "zero", [1] = "one", [2] = "two", [3] = "three", [4] = "four",
        [5] = "five", [6] = "six", [7] = "seven", [8] = "eight", [9] = "nine",
        [10] = "ten", [11] = "eleven", [12] = "twelve", [13] = "thirteen",
        [14] = "fourteen", [15] = "fifteen", [16] = "sixteen", [17] = "seventeen",
        [18] = "eighteen", [19] = "nineteen"
    }
    
    local pig = {
        [2] = "twenty", [3] = "thirty", [4] = "forty", [5] = "fifty",
        [6] = "sixty", [7] = "seventy", [8] = "eighty", [9] = "ninety"
    }
    
    local function die(kill)
        if kill < 20 then return dog[kill] end
        
        if kill < 100 then
            local gg = math.floor(kill / 10)
            local ez = kill % 10
            if ez > 0 then
                return pig[gg] .. "-" .. dog[ez]
            else
                return pig[gg]
            end
        end
        
        if kill < 1000 then
            local rip = math.floor(kill / 100)
            local gg = kill % 100
            local noob = dog[rip] .. " hundred"
            if gg > 0 then noob = noob .. " " .. die(gg) end
            return noob
        end
        
        if kill < 10000 then
            local lol = math.floor(kill / 1000)
            local kys = kill % 1000
            local trash = dog[lol] .. " thousand"
            if kys > 0 then trash = trash .. " " .. die(kys) end
            return trash
        end
        
        return ""
    end
    
    if num >= 1 and num <= 9999 then
        local result = die(num)
        if upper then
            result = string.upper(result)
        end
        return true, result
    else
        return false, ""
    end
end

local function nbe(digit, upper)
    local words = {
        [0] = "zero", [1] = "one", [2] = "two", [3] = "three", [4] = "four",
        [5] = "five", [6] = "six", [7] = "seven", [8] = "eight", [9] = "nine"
    }
    local result = words[digit]
    if upper then
        result = string.upper(result)
    end
    return result
end

local function cao1(num)
    if num < 10 then return false end
    return num % 10 == 0
end

local function cao2(num)
    local shit = {}
    local tmp = num
    while tmp > 0 do
        table.insert(shit, 1, tmp % 10)
        tmp = math.floor(tmp / 10)
    end
    return shit
end

local function cao3(py, spd)
    for i = 1, #py do
        local c = string.sub(py, i, i)
        gun()
        kou(c)
        task.wait(0.3 * spd)
    end
    gun()
    kou(py)
    task.wait(0.8 * spd)
end

local function cao7(en, spd)
    for i = 1, #en do
        local c = string.sub(en, i, i)
        gun()
        kou(c)
        task.wait(0.3 * spd)
    end
    gun()
    kou(en)
    task.wait(0.8 * spd)
end

local function cao4(num, suffix, spd)
    if num < 10 then
        local py = nb[num] .. (suffix or "")
        cao3(py, spd)
        return
    end
    
    if cao1(num) then
        local ok, py = zz(num)
        if ok then
            py = py .. (suffix or "")
            cao3(py, spd)
        end
        return
    end
    
    local shit = cao2(num)
    for i, d in ipairs(shit) do
        local py = nb[d]
        if i == #shit and suffix and suffix ~= "" then
            py = py .. suffix
        end
        cao3(py, spd)
        if i < #shit then
            task.wait(1.5 * spd)
        end
    end
end

local function cao8(num, suffix, spd)
    if num < 10 then
        local en = nbe(num, mmp.Upper) .. (suffix or "")
        cao7(en, spd)
        return
    end
    
    if cao1(num) then
        local ok, en = ri(num, mmp.Upper)
        if ok then
            en = en .. (suffix or "")
            cao7(en, spd)
        end
        return
    end
    
    local shit = cao2(num)
    for i, d in ipairs(shit) do
        local en = nbe(d, mmp.Upper)
        if i == #shit and suffix and suffix ~= "" then
            en = en .. suffix
        end
        cao7(en, spd)
        if i < #shit then
            task.wait(1.5 * spd)
        end
    end
end

local function cao5(num, suffix)
    local ok, py = zz(num)
    if ok then
        gun()
        kou(py .. (suffix or ""))
    end
end

local function cao6(num, suffix)
    local ok1, py = zz(num)
    local ok2, en = ri(num, wqnmlgb.Upper)
    if ok1 and ok2 then
        gun()
        kou(py .. wqnmlgb.Separator .. en .. (suffix or ""))
    end
end

local function cao9(num, suffix)
    local ok, en = ri(num, nmb.Upper)
    if ok then
        gun()
        kou(en .. (suffix or ""))
    end
end

local function fuck1()
    if tm1 then task.cancel(tm1) end
    tm1 = task.spawn(function()
        for i = cnm.Start, cnm.EndAt do
            cao5(i, cnm.Prefix)
            task.wait(cnm.Delay)
        end
        gun()
        kou("DONE")
        cao:Notify("开合跳完成", 3)
    end)
end

local function fuck2()
    if tm2 then task.cancel(tm2) end
    tm2 = task.spawn(function()
        for i = mlgb.Start, mlgb.EndAt do
            cao4(i, mlgb.Prefix, mlgb.Speed)
            task.wait(1.5 * mlgb.Speed)
        end
        gun()
        kou("DONE")
        cao:Notify("魔鬼跳完成", 3)
    end)
end

local function fuck3()
    if tm3 then task.cancel(tm3) end
    tm3 = task.spawn(function()
        for i = wqnmlgb.Start, wqnmlgb.EndAt do
            cao6(i, wqnmlgb.Prefix)
            task.wait(wqnmlgb.Delay)
        end
        gun()
        kou("DONE")
        cao:Notify("拼音+英文完成", 3)
    end)
end

local function fuck4()
    if tm4 then task.cancel(tm4) end
    tm4 = task.spawn(function()
        for i = nmb.Start, nmb.EndAt do
            cao9(i, nmb.Prefix)
            task.wait(nmb.Delay)
        end
        gun()
        kou("DONE")
        cao:Notify("英文跳完成", 3)
    end)
end

local function fuck5()
    if tm5 then task.cancel(tm5) end
    tm5 = task.spawn(function()
        for i = mmp.Start, mmp.EndAt do
            cao8(i, mmp.Prefix, mmp.Speed)
            task.wait(1.5 * mmp.Speed)
        end
        gun()
        kou("DONE")
        cao:Notify("英文魔鬼跳完成", 3)
    end)
end

local g1 = ma.Main:AddLeftGroupbox("开合跳设置")

g1:AddInput("a1", {
    Text = "消息后缀",
    Default = "",
    Placeholder = "在这里输入后缀...",
    Callback = function(v) cnm.Prefix = v end
})

g1:AddInput("a2", {
    Text = "起始数字",
    Default = "1",
    Numeric = true,
    Placeholder = "从这里开始...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then cnm.Start = n end
    end
})

g1:AddInput("a3", {
    Text = "结束数字",
    Default = "10",
    Numeric = true,
    Placeholder = "到这里结束...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then cnm.EndAt = n end
    end
})

g1:AddSlider("a4", {
    Text = "速度",
    Default = 2.5,
    Min = 0.5,
    Max = 5,
    Rounding = 1,
    Callback = function(v) cnm.Delay = v end
})

g1:AddButton({
    Text = "开始",
    Func = fuck1
})

g1:AddButton({
    Text = "停止",
    Func = function()
        if tm1 then
            task.cancel(tm1)
            tm1 = nil
            cao:Notify("已停止", 2)
        end
    end
})

local g2 = ma.Devil:AddLeftGroupbox("魔鬼跳设置")

g2:AddInput("b1", {
    Text = "消息后缀",
    Default = "",
    Placeholder = "在这里输入后缀...",
    Callback = function(v) mlgb.Prefix = v end
})

g2:AddInput("b2", {
    Text = "起始数字",
    Default = "1",
    Numeric = true,
    Placeholder = "从这里开始...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then mlgb.Start = n end
    end
})

g2:AddInput("b3", {
    Text = "结束数字",
    Default = "10",
    Numeric = true,
    Placeholder = "到这里结束...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then mlgb.EndAt = n end
    end
})

g2:AddSlider("b4", {
    Text = "速度",
    Default = 1,
    Min = 0.5,
    Max = 3,
    Rounding = 1,
    Callback = function(v) mlgb.Speed = v end
})

g2:AddButton({
    Text = "开始",
    Func = fuck2
})

g2:AddButton({
    Text = "停止",
    Func = function()
        if tm2 then
            task.cancel(tm2)
            tm2 = nil
            cao:Notify("已停止", 2)
        end
    end
})

local g3 = ma.Combo:AddLeftGroupbox("拼音+英文设置")

g3:AddInput("c1", {
    Text = "消息后缀",
    Default = "",
    Placeholder = "在这里输入后缀...",
    Callback = function(v) wqnmlgb.Prefix = v end
})

g3:AddInput("c2", {
    Text = "分隔符",
    Default = "-",
    Placeholder = "例如: - 或 =",
    Callback = function(v) wqnmlgb.Separator = v end
})

g3:AddInput("c3", {
    Text = "起始数字",
    Default = "1",
    Numeric = true,
    Placeholder = "从这里开始...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then wqnmlgb.Start = n end
    end
})

g3:AddInput("c4", {
    Text = "结束数字",
    Default = "10",
    Numeric = true,
    Placeholder = "到这里结束...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then wqnmlgb.EndAt = n end
    end
})

g3:AddSlider("c5", {
    Text = "速度",
    Default = 2.5,
    Min = 0.5,
    Max = 5,
    Rounding = 1,
    Callback = function(v) wqnmlgb.Delay = v end
})

g3:AddToggle("c6", {
    Text = "英文大写",
    Default = true,
    Callback = function(v) wqnmlgb.Upper = v end
})

g3:AddButton({
    Text = "开始",
    Func = fuck3
})

g3:AddButton({
    Text = "停止",
    Func = function()
        if tm3 then
            task.cancel(tm3)
            tm3 = nil
            cao:Notify("已停止", 2)
        end
    end
})

local g5 = ma.Eng:AddLeftGroupbox("英文跳设置")

g5:AddInput("e1", {
    Text = "消息后缀",
    Default = "",
    Placeholder = "在这里输入后缀...",
    Callback = function(v) nmb.Prefix = v end
})

g5:AddInput("e2", {
    Text = "起始数字",
    Default = "1",
    Numeric = true,
    Placeholder = "从这里开始...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then nmb.Start = n end
    end
})

g5:AddInput("e3", {
    Text = "结束数字",
    Default = "10",
    Numeric = true,
    Placeholder = "到这里结束...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then nmb.EndAt = n end
    end
})

g5:AddSlider("e4", {
    Text = "速度",
    Default = 2.5,
    Min = 0.5,
    Max = 5,
    Rounding = 1,
    Callback = function(v) nmb.Delay = v end
})

g5:AddToggle("e5", {
    Text = "英文大写",
    Default = true,
    Callback = function(v) nmb.Upper = v end
})

g5:AddButton({
    Text = "开始",
    Func = fuck4
})

g5:AddButton({
    Text = "停止",
    Func = function()
        if tm4 then
            task.cancel(tm4)
            tm4 = nil
            cao:Notify("已停止", 2)
        end
    end
})

local g6 = ma.EngDevil:AddLeftGroupbox("英文魔鬼跳设置")

g6:AddInput("f1", {
    Text = "消息后缀",
    Default = "",
    Placeholder = "在这里输入后缀...",
    Callback = function(v) mmp.Prefix = v end
})

g6:AddInput("f2", {
    Text = "起始数字",
    Default = "1",
    Numeric = true,
    Placeholder = "从这里开始...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then mmp.Start = n end
    end
})

g6:AddInput("f3", {
    Text = "结束数字",
    Default = "10",
    Numeric = true,
    Placeholder = "到这里结束...",
    Callback = function(v)
        local n = tonumber(v)
        if n and n >= 1 then mmp.EndAt = n end
    end
})

g6:AddSlider("f4", {
    Text = "速度",
    Default = 1,
    Min = 0.5,
    Max = 3,
    Rounding = 1,
    Callback = function(v) mmp.Speed = v end
})

g6:AddToggle("f5", {
    Text = "英文大写",
    Default = true,
    Callback = function(v) mmp.Upper = v end
})

g6:AddButton({
    Text = "开始",
    Func = fuck5
})

g6:AddButton({
    Text = "停止",
    Func = function()
        if tm5 then
            task.cancel(tm5)
            tm5 = nil
            cao:Notify("已停止", 2)
        end
    end
})

local g4 = ma.UI:AddLeftGroupbox("界面设置")

g4:AddButton("卸载脚本", function()
    if tm1 then task.cancel(tm1) end
    if tm2 then task.cancel(tm2) end
    if tm3 then task.cancel(tm3) end
    if tm4 then task.cancel(tm4) end
    if tm5 then task.cancel(tm5) end
    cao:Unload()
end)

nima:SetLibrary(cao)
diu:SetLibrary(cao)
nima:ApplyToTab(ma.UI)
diu:BuildConfigSection(ma.UI)
