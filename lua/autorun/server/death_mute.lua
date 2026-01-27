-- Mute players via ULX if they die
hook.Add("PlayerDeath", "AutoMuteOnDeath", function(ply)
    if not IsValid(ply) then return end

    -- ULX mute via SteamID 
    RunConsoleCommand("ulx", "mute", "$" .. ply:SteamID())
end)

-- unmute players if they die
hook.Add("PlayerSpawn", "AutoUnmuteOnSpawn", function(ply)
    if not IsValid(ply) then return end

    RunConsoleCommand("ulx", "unmute", "$" .. ply:SteamID())
end)
