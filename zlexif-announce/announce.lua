QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('announce', function(source, args, rawCommand)
    if source == 0 or QBCore.Functions.HasPermission(source, 'admin') then
        local msg = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(52, 73, 94, 0.6); border-radius: 3px;"><i class="fas fa-bullhorn"></i> ANNOUNCEMENT: {0}</div>',
            args = { msg }
        })
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't have permission to use this command", 'error')
    end
end, false)
