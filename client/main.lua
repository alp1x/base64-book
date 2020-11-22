---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)


RegisterNetEvent('base64:onStart')
AddEventHandler('base64:onStart', function()
  SetNuiFocus(true, true)
  SendNUIMessage({
      action = "openui"
  })
end)

RegisterNUICallback('escape', function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
      action = "closeui"
    })
	SetPlayerControl(PlayerId(), 1, 0)
    TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
    Citizen.Wait(100)
    ClearPedSecondaryTask(PlayerPedId())
    DetachEntity(prop, 1, 1)
    DeleteObject(prop)
end)

RegisterNetEvent('base64:book')
AddEventHandler('base64:book', function()
    local player = PlayerPedId()
    local ad = "cellphone@"
                
    local prop_name = prop_name or 'prop_novel_01'
    
    if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
        loadAnimDict( ad )
        if ( IsEntityPlayingAnim( player, ad, "cellphone_text_read_base", 3 ) ) then 
            TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
            Citizen.Wait(100)
            ClearPedSecondaryTask(PlayerPedId())
            DetachEntity(prop, 1, 1)
            DeleteObject(prop)
        else
            local x,y,z = table.unpack(GetEntityCoords(player))
            prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
            AttachEntityToEntity(prop, player, GetPedBoneIndex(player, 6286), 0.15, 0.03, -0.065, 0.0, 180.0, 90.0, true, true, false, true, 1, true) -- lkrp_notepadpad
            TaskPlayAnim( player, ad, "cellphone_text_read_base", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        end     
    end
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
---Base64 tarafından Uranos Roleplay'a yapılmıştır.
