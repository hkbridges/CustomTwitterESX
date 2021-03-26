tweetPrefix = "" -- sets prefix before twitter messages; Defaults to [Twitter]
prefixColor = "" -- options are: red, orange, yellow, lime, green, teal, lightblue, blue, darkblue, purple, pink, black, gray, or white
handleColor = "" -- sets color of Twitter handle when tweeting; options are: red, blue, yellow, green, or white
messageColor = "" -- sets color of Twitter message; options are: red, blue, yellow, green, or white
handleIdentifier = "" -- sets identifier for handles; default is @; don't use any color codes like ^7 or ~r~.
nameCommand = "" -- sets command for players to change Twitter handle
tweetCommand = "" -- sets command to make a tweet
webhookLink = "" -- Sets Webhook Link
symbolEnabled = "" -- Enables or Disables Twitter Symbol (type true or false) [true by default]

-- DO NOT EDIT BELOW THIS LINE

if symbolEnabled == "" then
    symbolEnabled = true
elseif symbolEnabled == "true" then
    symbolEnabled = true
else symbolEnabled = false
end

if webhookLink == "" then
    webhook = false
else
    webhook = true
end

if tweetPrefix == "" then 
    tweetPrefix = "[Twitter]"
 end 

if handleColor == "red" then
    handleColor = "^8"
elseif handleColor == "blue" then
    handleColor = "^5"
elseif handleColor == "yellow" then
    handleColor = "^3"
elseif handleColor == "green" then
    handleColor = "^2"
elseif handleColor == "white" then
    handleColor = "^7"
else handleColor = "^3"
end

if messageColor == "red" then
    messageColor = "^8"
elseif messageColor == "blue" then
    messageColor = "^5"
elseif messageColor == "yellow" then
    messageColor = "^3"
elseif messageColor == "green" then
    messageColor = "^2"
elseif messageColor == "white" then
    messageColor = "^7"
else messageColor = "^7"
end

if handleIdentifier == "" then
    handleIdentifier = "@"
end

if nameCommand == "" then
    nameCommand = "setname"
end

if tweetCommand == "" then 
    tweetCommand = "tweet"
end

if prefixColor == "red" then
    prefixColor = {255, 0, 0}
elseif prefixColor == "orange" then
    prefixColor = {204, 102, 0}
elseif prefixColor == "yellow" then
    prefixColor = {204, 204, 0}
elseif prefixColor == "lime" then
    prefixColor = {102, 204, 0}
elseif prefixColor == "green" then
    prefixColor = {0, 153, 0}
elseif prefixColor == "teal" then
    prefixColor = {0, 128, 128}
elseif prefixColor == "lightblue" then
    prefixColor = {0, 204, 204}
elseif prefixColor == "blue" then
    prefixColor = {0, 102, 204}
elseif prefixColor == "darkblue" then
    prefixColor = {0, 0, 255}
elseif prefixColor == "purple" then
    prefixColor = {102, 0, 204}
elseif prefixColor == "pink" then
    prefixColor = {205, 102, 255}
elseif prefixColor == "black" then
    prefixColor = {0, 0, 0}
elseif prefixColor == "gray" then
    prefixColor = {64, 64, 64}
elseif prefixColor == "white" then
    prefixColor = {255, 255, 255}
else prefixColor = {0, 128, 255}
end

