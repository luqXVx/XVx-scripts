local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "🔥 Slayers 2 Script Hub",
    LoadingTitle = "⚔️ Slayers 2",
    LoadingSubtitle = "by 1_F0",

    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "Slayers 2 Hub"
    },

    Discord = {
        Enabled = false,
        Invite = "YBTJFTpget",
        RememberJoins = true
    },

    KeySystem = true,

    KeySettings = {
        Title = "Key | XVx scripts",
        Subtitle = "Key System",
        Note = "Key In Discord Server",
        FileName = "XVx scripts",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = {
            "K7XQ-9M2P-V4ZT-8RWL"
        }
    }
})


-- HOME TAB
local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Slayers 2")


Rayfield:Notify({
    Title = "Slayers 2",
    Content = "XVx Scripts loaded successfully!",
    Duration = 5,
    Image = 13047715178,

    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("Slayers 2 Hub loaded!")
            end
        }
    }
})


-- INFINITE JUMP
local InfiniteJumpButton = MainTab:CreateButton({
    Name = "Infinite Jump",

    Callback = function()
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            _G.infinJumpStarted = true

            game.StarterGui:SetCore("SendNotification", {
                Title = "XVx Scripts",
                Text = "Infinite Jump Activated!",
                Duration = 5
            })

            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local mouse = player:GetMouse()

            mouse.KeyDown:Connect(function(key)
                if _G.infinjump and key:byte() == 32 then
                    local character = player.Character

                    if character then
                        local humanoid =
                            character:FindFirstChildOfClass("Humanoid")

                        if humanoid then
                            humanoid:ChangeState(
                                Enum.HumanoidStateType.Jumping
                            )

                            task.wait()

                            humanoid:ChangeState(
                                Enum.HumanoidStateType.Seated
                            )
                        end
                    end
                end
            end)
        end
    end
})


-- WALKSPEED
local WalkSpeedSlider = MainTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {1, 350},
    Increment = 1,
    Suffix = " Speed",
    CurrentValue = 16,
    Flag = "sliderws",

    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character

        if character then
            local humanoid =
                character:FindFirstChildOfClass("Humanoid")

            if humanoid then
                humanoid.WalkSpeed = Value
            end
        end
    end
})


-- JUMP POWER
local JumpPowerSlider = MainTab:CreateSlider({
    Name = "JumpPower",
    Range = {1, 350},
    Increment = 1,
    Suffix = " Power",
    CurrentValue = 16,
    Flag = "sliderjp",

    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character

        if character then
            local humanoid =
                character:FindFirstChildOfClass("Humanoid")

            if humanoid then
                humanoid.JumpPower = Value
            end
        end
    end
})


-- SLAYERS 2 AREAS
local Dropdown = MainTab:CreateDropdown({
    Name = "Select Area",

    Options = {
        "Windy Peak",
        "Bamboo Grove",
        "Mistfall Harbor",
        "Butterfly Estate",
        "Final Selection",
        "Iceveil Valley",
        "Hidden Mist Village",
        "Demon Hideout"
    },

    CurrentOption = {"Windy Peak"},
    MultipleOptions = false,
    Flag = "slayers2area",

    Callback = function(Option)
        print("Selected Slayers 2 Area:", Option)
    end
})


-- WALKSPEED INPUT
local Input = MainTab:CreateInput({
    Name = "Walkspeed",
    PlaceholderText = "1-500",
    RemoveTextAfterFocusLost = true,

    Callback = function(Text)
        local value = tonumber(Text)

        if value then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character

            if character then
                local humanoid =
                    character:FindFirstChildOfClass("Humanoid")

                if humanoid then
                    humanoid.WalkSpeed = value
                end
            end
        end
    end
})


-- OTHER
local OtherSection = MainTab:CreateSection("Other")


local AutoFarmToggle = MainTab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "Toggle1",

    Callback = function(Value)
        if Value then
            print("SLAYERS 2 FARMING ENABLED")
        else
            print("SLAYERS 2 FARMING DISABLED")
        end
    end
})


-- TELEPORT TAB
local TPTab = Window:CreateTab("🏝 Teleports", nil)

local Button1 = TPTab:CreateButton({
    Name = "Windy Peak",

    Callback = function()
        print("Windy Peak")
        -- Teleport-Code hier einfügen
    end
})


local Button2 = TPTab:CreateButton({
    Name = "Bamboo Grove",

    Callback = function()
        print("Bamboo Grove")
        -- Teleport-Code hier einfügen
    end
})


local Button3 = TPTab:CreateButton({
    Name = "Mistfall Harbor",

    Callback = function()
        print("Mistfall Harbor")
        -- Teleport-Code hier einfügen
    end
})


local Button4 = TPTab:CreateButton({
    Name = "Butterfly Estate",

    Callback = function()
        print("Butterfly Estate")
        -- Teleport-Code hier einfügen
    end
})


local Button5 = TPTab:CreateButton({
    Name = "Final Selection",

    Callback = function()
        print("Final Selection")
        -- Teleport-Code hier einfügen
    end
})


local Button6 = TPTab:CreateButton({
    Name = "Iceveil Valley",

    Callback = function()
        print("Iceveil Valley")
        -- Teleport-Code hier einfügen
    end
})


local Button7 = TPTab:CreateButton({
    Name = "Hidden Mist Village",

    Callback = function()
        print("Hidden Mist Village")
        -- Teleport-Code hier einfügen
    end
})


local Button8 = TPTab:CreateButton({
    Name = "Demon Hideout",

    Callback = function()
        print("Demon Hideout")
        -- Teleport-Code hier einfügen
    end
})


-- MISC TAB
local MiscTab = Window:CreateTab("🎲 Misc", nil)
