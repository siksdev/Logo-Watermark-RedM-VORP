local isUiOpen = false
local nuiReady = false
local shown = false

-- Callback para avisar que a NUI carregou
RegisterNUICallback('ready', function(data, cb)
    nuiReady = true
    cb('ok')
end)

-- Função para mostrar a logo
local function showLogo()
    if not shown then
        CreateThread(function()
            while not nuiReady do
                Wait(100)
            end
            SendNUIMessage({ action = "show" })
            isUiOpen = true
            shown = true
        end)
    end
end

-- Thread para esperar o jogador estar completamente spawnado
CreateThread(function()
    while true do
        Wait(500)
        local ped = PlayerPedId()
        if DoesEntityExist(ped) and not IsEntityDead(ped) and NetworkIsPlayerActive(PlayerId()) then
            showLogo() -- mostra a logo automaticamente
            break
        end
    end
end)

-- Toggle manual
RegisterCommand('logo', function()
    if isUiOpen then
        SendNUIMessage({ action = "hide" })
        isUiOpen = false
    else
        SendNUIMessage({ action = "show" })
        isUiOpen = true
    end
end)
