ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterCommand(Config.AdminCommands.start, 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('fireworkshowsystem:startFireworkShow', -1)
    local startTime = os.date('%Y-%m-%d %H:%M:%S')
    local endTime = os.date('%Y-%m-%d %H:%M:%S', os.time() + Config.FireworkShowDuration)
    MySQL.Async.execute('INSERT INTO firework_shows (start_time, end_time, duration, status) VALUES (?, ?, ?, ?)', {startTime, endTime, Config.FireworkShowDuration, 'active'}, function(rowsChanged)
        if rowsChanged > 0 then
            print('Firework show started and logged in database.')
        else
            print('Failed to log firework show in database.')
        end
    end)
end, true, {help = 'Start the firework show'})

ESX.RegisterCommand(Config.AdminCommands.stop, 'admin', function(xPlayer, args, showError)
    TriggerClientEvent('fireworkshowsystem:stopFireworkShow', -1)
    MySQL.Async.execute('UPDATE firework_shows SET status = ? WHERE status = ?', {'completed', 'active'}, function(rowsChanged)
        if rowsChanged > 0 then
            print('Firework show stopped and updated in database.')
        else
            print('Failed to update firework show in database.')
        end
    end)
end, true, {help = 'Stop the firework show'})