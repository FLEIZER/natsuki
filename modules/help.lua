function help(msg)
	local table = {
		title = '**Бот в разработке**',
		description = '**[Ссылка на GitHub страницу](https://github.com/ProfessorBrain/natsuki)**',
		author = {
			icon_url = msg.author.avatarURL,
			name = msg.author.tag
		},
		footer = {
			icon_url = _G.cl.user.avatarURL,
			text = _G.cl.user.tag
		},
		color = 3586419,
		fields = {
			{name=_G.pref..'help',value='Выводит помощь по командам'},
			{name=_G.pref..'img',value='NSFW и SFW картинки с сайта nekos.life'},
			{name=_G.pref..'say[d] <text>',value='Сказать <text>\nd - удалить ваше сообщение'},
			{name=_G.pref..'fox',value='Картинки с лисичками :3'}
		},
		timestamp = _G.disc.Date():toISO('T', 'Z')
	}
	msg:reply { embed = table }
end
_G.cl:on('messageCreate', function(msg)
	local cont = msg.content
        local args = cont:split(' ')
        if msg.author.bot == true then return end
        if args[1] == _G.pref..'help' then
                help(msg)
        end
end)
