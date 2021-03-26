fx_version 'bodacious'
game 'gta5'

author 'HBridges'
description 'CustomTwitter'
version '1.0.0'

-- What to run
client_scripts {
    'config.lua',
    'client.lua'
}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}

