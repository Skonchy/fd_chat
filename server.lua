RegisterCommand("tweet", function(source, args, raw)
    local playerName = exports["drp_id"]:GetCharacterName(source)
    local msg = raw:sub(6)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); border-radius: 3px;"><i class="fab fa-twitter"></i> @{0}:<br> {1}</div>',
        args = { playerName, msg }
    })
end, false)

RegisterCommand('ad', function(source, args, raw)
    local playerName = exports["drp_id"]:GetCharacterName(source)
    local msg = raw:sub(4)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(214, 168, 0, 1); border-radius: 3px;"><i class="fas fa-ad"></i> Advertisement: {0}<br> {1}<br></div>',
        args = { playerName, msg }
    })
end, false)

RegisterCommand('ooc', function(source, args, raw)
    local playerName = GetPlayerName(source)
    local msg = raw:sub(5)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;"><i class="fas fa-globe"></i> {0}:<br> {1}</div>',
        args = { playerName, msg }
    })
end, false)