local isFireworkShowActive = false
local fireworkShowThread = nil
local npcs = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isFireworkShowActive then
            for _, location in ipairs(Config.FireworkLocations) do
                RequestNamedPtfxAsset('scr_indep_fireworks')
                while not HasNamedPtfxAssetLoaded('scr_indep_fireworks') do
                    Citizen.Wait(0)
                end
                UseParticleFxAssetNextCall('scr_indep_fireworks')
                StartNetworkedParticleFxNonLoopedAtCoord('scr_indep_firework_trailburst', location.x, location.y, location.z, 0.0, 0.0, 0.0, 2.0, false, false, false, false)
                Citizen.Wait(Config.FireworkInterval * 1000)
            end
        end
    end
end)

function SpawnNPC(location)
    local hash = GetHashKey(Config.NPCModel)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Citizen.Wait(0)
    end
    local npc = CreatePed(4, hash, location.x, location.y, location.z, 0.0, false, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetPedFleeAttributes(npc, 0, 0)
    SetBlockingOfNonTemporaryEvents(npc, true)
    table.insert(npcs, npc)
end

function DeleteNPCs()
    for _, npc in ipairs(npcs) do
        DeleteEntity(npc)
    end
    npcs = {}
end

RegisterNetEvent('fireworkshowsystem:startFireworkShow')
AddEventHandler('fireworkshowsystem:startFireworkShow', function()
    isFireworkShowActive = true
    for _, location in ipairs(Config.FireworkLocations) do
        SpawnNPC(location)
    end
    Citizen.SetTimeout(Config.FireworkShowDuration * 1000, function()
        isFireworkShowActive = false
        DeleteNPCs()
    end)
end)

RegisterNetEvent('fireworkshowsystem:stopFireworkShow')
AddEventHandler('fireworkshowsystem:stopFireworkShow', function()
    isFireworkShowActive = false
    DeleteNPCs()
end)