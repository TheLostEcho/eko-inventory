fx_version 'cerulean'
game 'gta5'

author 'TheLostEcho'
description 'QB-Core'
version '1.0'

shared_scripts {
	'@qb-weapons/config.lua',
	'config.lua',
}

client_scripts {
	"config.lua",
	--"client/optional.lua",
	"client/main.lua",
	"client/cloth.lua",
}

server_scripts {
	"server/main.lua",
}

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/*.ttf',
	'html/cloth/*.png',
	'html/cloth/*.svg',
	'html/sound.mp3'
}

provide 'qb-inventory'