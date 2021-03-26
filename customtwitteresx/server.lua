print('^2[twitter]^7 ^2Successfully ESX mode start.^7')


ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("dotweet")
AddEventHandler("dotweet", function()
   TriggerEvent("addTweet", fulluser, fullmessage)
end)

RegisterNetEvent("namelogging")
AddEventHandler("namelogging", function(tusername, logname)
   if webhook then
      PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({username = "Twitter Name Change", content = "```".. logname.. "" .. " set their handle to "..tusername .. "```", avatar_url = "https://i.imgur.com/HC5ViBC.png"}), { ['Content-Type'] = 'application/json' })
   end
end)

RegisterNetEvent("tweetlogging")
AddEventHandler("tweetlogging", function(tusername, message, loggingname)
   if webhook then
      PerformHttpRequest(webhookLink, function(err, text, headers) end, 'POST', json.encode({username = "Twitter Logs", content = "```".. "".. loggingname.. "" .. " tweeted as @".. tusername .. " | " .. '"' .. message .. '"'.. "```", avatar_url = "https://www.southernbank.com/wp-content/uploads/twitter.png"}), { ['Content-Type'] = 'application/json' })
   end
end)

function notify(msg)
   SetNotificationTextEntry("STRING")
   AddTextComponentString(msg)
   DrawNotification(true, false)
end

RegisterNetEvent("addTweet")
AddEventHandler("addTweet", function(fulluser, fullmessage)
   if symbolEnabled then
      TriggerClientEvent('chat:addMessage', -1, {
         templateId = 'tweet',
         color = prefixColor,
         multiline = true,
         args = {tweetPrefix.. " " .. fulluser, fullmessage}
      })
   else
      TriggerClientEvent('chat:addMessage', -1, {
         color = prefixColor,
         multiline = true,
         args = {tweetPrefix.. " " .. fulluser, fullmessage}
      })
   end
   
   
end)

ESX.RegisterServerCallback('twt:getname', function(source, cb) -- ao ti porto io nel client
   local source = source
   local xPlayer = ESX.GetPlayerFromId(source)
   
   local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height FROM users WHERE identifier = @identifier', {
      ['@identifier'] = xPlayer.identifier
   })

   local firstname = result[1].firstname
   local lastname  = result[1].lastname

   
      if xPlayer then
         local data = {
            firstname = firstname,
            lastname  = lastname
         }
   
               cb(data)
         else
            cb(data)
       end 
 end)
   