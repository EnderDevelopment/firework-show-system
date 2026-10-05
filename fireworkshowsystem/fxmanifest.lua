fx_version 'cerulean'
game 'gta5'

description 'Firework Show System'
version '1.0.0'

author 'EnderDevelopment'

esx_legacy 'yes'

client_scripts {
    'client.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    'server.lua'
}

shared_scripts {
    'config.lua'
}

files {
    'database.sql'
}