fx_version 'adamant'

game 'gta5'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/static/css/app.css',
	'html/static/config/config.json',
	'html/static/js/*.js',
	-- Coque
	'html/static/img/coque/*.png',
	'html/static/img/coque/XCX.png',
	
	-- Background
	'html/static/img/background/*.jpg',
	'html/static/img/background/back001.jpg',
	'html/static/img/background/back002.jpg',
	'html/static/img/background/back003.jpg',
	'html/static/img/background/back004.png',
	'html/static/img/background/back005.jpg',
	'html/static/img/background/back006.png',
	'html/static/img/background/back007.png',
	'html/static/img/background/back008.gif',
	'html/static/img/icons_app/*.png',
	'html/static/img/icons_app/*.jpg',
	'html/static/img/icons_app/*.gif',
	'html/static/img/*.png',
	'html/static/img/*.jpg',
	'html/static/img/*.gif',
	
	'html/static/img/app_bank/*.jpg',
	'html/static/img/app_bank/*.png',

	'html/static/img/app_tchat/splashtchat.png',

	'html/static/img/twitter/bird.png',
	'html/static/img/twitter/default_profile.png',
	'html/static/sound/*.mp3',
	'html/static/sound/*.ogg',

	'html/static/img/courbure.png',
	'html/static/fonts/fontawesome-webfont.ttf',
}

client_script {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/tr.lua',
	"config.lua",
	"client/animation.lua",
	"client/client.lua",
	"client/photo.lua",
	"client/app_tchat.lua",
	"client/bank.lua",
	"client/bourse.lua",
	"client/valet.lua",
	"client/fatura.lua",
	"client/twitter.lua",
	"client/yellowpages.lua",
	"client/news.lua",
	"client/youtube.lua",
	"client/uber.lua"
}

server_script {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/en.lua',
	'locales/tr.lua',
	"config.lua",
	"server/server.lua",
	"server/app_tchat.lua",
	"server/twitter.lua",
	"server/bank.lua",
	"server/valet.lua",
	"server/bourse.lua",
	"server/fatura.lua",
	"server/yellowpages.lua",
	"server/news.lua",
	"server/uber.lua"
}