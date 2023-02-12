RegisterCommand("ping", function(source, args, rawCommand)
    local target = tonumber(args[1])
    if target == nil then
        target = source
    end
    local ping = GetPlayerPing(target)
    TriggerClientEvent("chatMessage", source, "Ping", {255, 0, 0}, "The ping of " .. target .. " is " .. ping .. "ms")
end, false)
