local QBCore = exports['qb-core']:GetCoreObject()

-- Events 

RegisterNetEvent('vendingDrink:buy', function()
    local ShopItems = {}
    ShopItems.label = "Vending Machine"
    ShopItems.items = Config.itemDrink
    ShopItems.slots = #Config.itemDrink
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Vendingshop_", ShopItems)
end)

RegisterNetEvent('vendingSnack:buy', function()
    local snackItems = {}
    snackItems.label = "Vending Machine"
    snackItems.items = Config.itemSnack
    snackItems.slots = #Config.itemSnack
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Vendingshop_", snackItems)
end)

RegisterNetEvent('vendingCoffee:buy', function()
    local coffeeItems = {}
    coffeeItems.label = "Coffee Machine"
    coffeeItems.items = Config.itemCoffee
    coffeeItems.slots = #Config.itemCoffee
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Vendingshop_", coffeeItems)
end)

-- QB-Target

exports['qb-target']:AddTargetModel(Config.VendingObjects, {  --Uncomment lines 966-1012 to QB-Target Vending Machines
options = {
    {
        type = "client",
        event = 'vendingDrink:buy',
        icon = "fas fa-shopping-basket",
        label = "Insert Coin",
    },
    {
        type = "client",
        event = 'vendingSnack:buy',
        icon = "fas fa-shopping-basket",
        label = "Insert Coin",
    },
    {
        type = "client",
        event = 'vendingCoffee:buy',
        icon = "fas fa-shopping-basket",
        label = "Insert Coin",
    },
},
distance = 2.5,
})