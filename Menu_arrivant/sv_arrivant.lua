ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('pigeon:roucoule')
AddEventHandler('pigeon:roucoule', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2500
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('pigeon:roucoulepu')
AddEventHandler('pigeon:roucoulepu', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1000
    xPlayer.removeMoney(price)
end)

RegisterNetEvent('pigeon:roucouleencore')
AddEventHandler('pigeon:roucouleencore', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200
    xPlayer.removeMoney(price)
end)