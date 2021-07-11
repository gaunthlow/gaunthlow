local enroute = false
local mechPed = nil

function setCars(cars)
    SendNUIMessage({event = 'updateCars', cars = cars})
end

RegisterNUICallback('getCars', function(data)
    ESX.TriggerServerCallback('gcPhone:getCars', function(data)
        for i = 1, #data do
            model = GetDisplayNameFromVehicleModel(data[i]["props"].model)
            data[i]["props"].model = model
        end
        setCars(data)
    end)
end)

RegisterNUICallback('getCarsValet', function(data)
    if enroute then
        ESX.ShowNotification("Aynı anda sadece bir vale hizmetini kullanabilirsin.")
        return
    end

    local gameVehicles = ESX.Game.GetVehicles()

    for i = 1, #gameVehicles do
        local vehicle = gameVehicles[i]
        if DoesEntityExist(vehicle) then
            if ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)) == ESX.Math.Trim(data.props.plate) then
                local vehicleCoords = GetEntityCoords(vehicle)
                SetNewWaypoint(vehicleCoords.x, vehicleCoords.y)
                ESX.ShowNotification("Aracın zaten dışarıda, haritada işaretlendi.")
                return
            end
        end
    end

    TriggerServerEvent("gcPhone:valet-car-set-outside", data.props.plate)
    ESX.TriggerServerCallback('m3:garage:checkBills', function(nobills)
        if nobills then
            local player = PlayerPedId()
            local playerPos = GetEntityCoords(player)
            local driverhash = 999748158
            local vehhash = data.props.model
            while not HasModelLoaded(driverhash) and RequestModel(driverhash) or not HasModelLoaded(vehhash) and RequestModel(vehhash) do
                RequestModel(driverhash)
                RequestModel(vehhash)
                Citizen.Wait(0)
            end
            SpawnVehicle(playerPos.x, playerPos.y, playerPos.z, vehhash, driverhash, data.props)
        else
            ESX.ShowNotification('Ödenmemiş faturalarınız olduğundan vale hizmetini kullanamıyorsunuz.')
        end
    end)
end)

function SpawnVehicle(x, y, z, vehhash, driverhash, props)      
	local ped = PlayerPedId()
    local playerCoords = GetEntityCoords(ped)
    local playerPed = PlayerPedId()
	local coords    = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 1.0)
    local heading = GetEntityHeading(playerPed)
    Citizen.Wait(1000)
    ESX.Game.SpawnVehicle(vehhash, coords, heading + 90.0, function(callback_vehicle)
        SetVehicleHasBeenOwnedByPlayer(callback_vehicle, true)
        -- SetEntityAsMissionEntity(callback_vehicle, true, true)
        -- ClearAreaOfVehicles(GetEntityCoords(callback_vehicle), 5000, false, false, false, false, false);  
        SetVehicleOnGroundProperly(callback_vehicle)
        ESX.Game.SetVehicleProperties(callback_vehicle, props)
    end)                          --Car Spawning.
end

function GoToTargetWalking(x, y, z, vehicle, driver)
    Citizen.Wait(500)
    TaskWanderStandard(driver, 10.0, 10)
    TriggerServerEvent('gcPhone:finish')
    Citizen.Wait(5000)
    DeletePed(mechPed)
    mechPed = nil
end