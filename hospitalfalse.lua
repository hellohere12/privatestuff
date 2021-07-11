_G.toggle = false 
game:getService("RunService"):BindToRenderStep(
    "",
    0,
    function()
        if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then
            return
        end
        while wait() do
            if _G.toggle == true then
                game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
            end
        end
    end
)
while wait(1) do
    if _G.toggle == true then
        pcall(
            function()
                for i, v in pairs(game:GetService("Workspace").Ignored.HospitalJob:GetChildren()) do
                    if v:IsA("Model") then
                        _G.patient = v.Name
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Workspace.Ignored.HospitalJob[v.Name].HumanoidRootPart.CFrame *
                            CFrame.new(Vector3.new(0, -6.5, 0), Vector3.new(0, 100, 0))
                    end
                end
                for i, v in pairs(game.Workspace.Ignored.HospitalJob:GetChildren()) do
                    if v.Name == "Can I get the Red bottle" then
                        local clickdetector = game.Workspace.Ignored.HospitalJob.Red.ClickDetector
                        fireclickdetector(clickdetector)
                    elseif v.Name == "Can I get the Blue bottle" then
                        local clickdetector = game.Workspace.Ignored.HospitalJob.Blue.ClickDetector
                        fireclickdetector(clickdetector)
                    elseif v.Name == "Can I get the Green bottle" then
                        local clickdetector = game.Workspace.Ignored.HospitalJob.Green.ClickDetector
                        fireclickdetector(clickdetector)
                    end
                end
                local clickdetector2 = game:GetService("Workspace").Ignored.HospitalJob[_G.patient].ClickDetector
                fireclickdetector(clickdetector2)
            end
        )
    elseif _G.toggle == false then
        return
    end
end
