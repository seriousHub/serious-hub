local Players = game:GetService("Players")

-- ============================================================================
-- 1. THE DISCONNECT GATE (Put this at the absolute top of your script)
-- ============================================================================
local IsMaintenanceActive = true -- Set this to true to disconnect them, false to let them play

if IsMaintenanceActive then
    local localPlayer = Players.LocalPlayer
    
    -- Format your message exactly like the screenshot
    local kickMessage = "\n\nunnamed is down temporarily.\nwe will ping once its back up, sorry!"
    
    -- Forcibly disconnect them from the server instantly
    localPlayer:Kick(kickMessage)
    
    -- Completely stop the script from running anything else as they are being removed
    return 
end

-- ============================================================================
-- 2. YOUR SCRIPT HUB CODE (Only runs if IsMaintenanceActive is false)
-- ============================================================================
print("Hub initialized successfully.")
