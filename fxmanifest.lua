fx_version 'cerulean'
game 'gta5'

author 'FireworkShowSystem'
description 'Create a fivem script that I want a proper fully made fire work script with npc running up to the fi'
version '1.0.0'

dependencies {
    'es_extended'
}

client_scripts {
    'client.lua',
    'client/*.lua'
}

server_scripts {
    'server.lua',
    'server/*.lua'
}

shared_scripts {
    'config.lua',
    'shared.lua'
}

ui_page 'html/index.html'

files {
    'html/*.html',
    'html/*.css',
    'html/*.js'
}
