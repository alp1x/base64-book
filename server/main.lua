ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('dergi', function(source)
	local _source = source
	Citizen.Wait(600)
	TriggerClientEvent('base64:book', _source)
	TriggerClientEvent('base64:onStart', _source)
	
end)

