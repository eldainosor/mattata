return { -- rename this file to configuration.lua for mattata to work
	botToken = '', -- In order for your copy of mattata to actually work, you MUST insert the Telegram bot API token you received from @BotFather.
	admins = {  -- Here you need to specify the numerical ID of the users who shall have FULL control over mattata, this includes access to server files via the lua and shell plugins.
		nil,
		nil,
		nil
	},
	language = 'en', -- two character locale, this is the default language for all users who haven't adjusted their language
	adminGroup = nil, -- This needs to be the numerical identifier of the chat you wish to log errors into. If it's not a private chat it should begin with a '-' symbol.
 	kickLog = nil,
 	commandPrefix = '/', -- the symbol bot commands will be executed with ('/' by default)
	fileDownloadLocation = '/tmp/', -- the location to save all downloaded media to
	processEdits = true, -- change this to false to stop mattata from processing message edits
	announceMigration = true, -- change this to false to stop mattata from announcing chat migration information
	respondToMemes = true, -- This setting determines whether your copy of mattata will respond to certain memes. It MUST be a boolean value.
	respondToLyrics = true, -- This value determines whether your copy of mattata will respond to certain lyrics. Like the 'respondToMemes' setting, it MUST be a boolean value.
	maximumCopypastaLength = 300, -- the maximum number of characters a message can have to be parsed through /copypasta
	debugMode = true,
	plugins = { -- This table lists the plugins which your copy of mattata will load upon each instance.
		'control',
		-- To allow things to work properly, you MUST place all new plugins BELOW this line. It is recommended to keep the list clean by ensuring it keeps its alphabetical order.
		'9gag',
		'apod',
		'appStore',
		'bandersnatch',
		'bible',
		'bing',
		'calc',
		'canitrust',
		'catfact',
		'cats',
		'channel',
		'chuck',
		'coinflip',
		'commit',
		'copypasta',
		'currency',
		'deadbaby',
		'dice',
		'dns',
		'doge',
		'doggo',
		'echo',
		'eightball',
		-- 'exec',
		'facebook',
		'faces',
		'fact',
		'flickr',
		'frombin',
		'get',
		'giphy',
		'github-feed',
		'github',
		'guidgen',
		'hackernews',
		'hastebin',
		'help',
		'hextorgb',
		'id',
		'identicon',
		'imdb',
		'instagram',
		'insult',
		'isp',
		'ispwned',
		'istuesday',
		'isup',
		'itunes',
		'jsondump',
		'language',
		'lastfm',
		'location',
		'loremipsum',
		'lua',
		'lyrics',
		'mchistory',
		'mcmigrated',
		'mcuuid',
		'minecraft',
		'news',
		'nick',
		'pastebin',
		'ping',
		'plugins',
		'pokedex',
		'preview',
		'prime',
		'pun',
		'pwgen',
		'qotd',
		'qrgen',
		'randomword',
		'reddit',
		'sed',
		'set',
		'shell',
		'shorten',
		'shout',
		'slap',
		'speechToText',
		'spotify',
		'starwars',
		'statistics',
		'synonym',
		'telegram',
		'time',
		'tobase64',
		'tobin',
		'tohex',
		'translate',
		'trump',
		'tts',
		'twitch',
		'unformat',
		'unicode',
		'urbandictionary',
		'weather',
		'wikipedia',
		'xkcd',
		'yeoldinsult',
		'yify',
		'yomama',
		-- 'youtube-dl',
		'youtube'
	},
	inlinePlugins = { -- This table lists the inline plugins which your copy of mattata will load upon each instance.
		'9gag',
		'apod',
		'bandersnatch',
		'catfact',
		'cats',
		'chuck',
		'flickr',
		'giphy',
		'id',
		'lastfm',
		'location',
		'lyrics',
		'translate',
		'urbandictionary'
	},
	administrationPlugins = { -- This table lists the administration plugins which your copy of mattata will load upon each instance.
		'ban',
		'blacklist',
		'groups',
		'kick',
		'link',
		'report',
		'rules',
		'unban',
		'warn'
	},
	channelPlugins = { -- This table lists the channel plugins which your copy of mattata will load upon each instance.
		'9gag',
		'apod',
		'appStore',
		'bandersnatch',
		'bible',
		'bing',
		'calc',
		'canitrust',
		'catfact',
		'cats',
		'chuck',
		'coinflip',
		'commit',
		'currency',
		'deadbaby',
		'dice',
		'doge',
		'doggo',
		'echo',
		'eightball',
		'facebook',
		'faces',
		'fact',
		'flickr',
		'frombin',
		'giphy',
		'github-feed',
		'github',
		'groups',
		'hastebin',
		'help',
		'hextorgb',
		'instagram',
		'insult',
		'isp',
		'ispwned',
		'istuesday',
		'itunes',
		'jsondump',
		'location',
		'loremipsum',
		'lyrics',
		'mcuuid',
		'mchistory',
		'mcmigrated',
		'news',
		'pastebin',
		'ping',
		'pokedex',
		'preview',
		'prime',
		'pun',
		'pwgen',
		'qotd',
		'randomword',
		'reddit',
		'shorten',
		'shout',
		'spotify',
		'starwars',
		'synonym',
		'time',
		'tobase64',
		'tobin',
		'tohex',
		'translate',
		'twitch',
		'unformat',
		'urbandictionary',
		'weather',
		'wikipedia',
		'xkcd',
		'yeoldinsult',
		'yify',
		'yomama',
		-- 'youtube-dl',
		'youtube'
	},
	groups = { -- A table of groups that will be sorted and displayed upon execution of the groups plugin.
		['Memes'] = 'https://telegram.me/joinchat/D9oCfkExFv_O2b2HnppZsQ',
		['Off-Topic Geeks'] = 'https://telegram.me/joinchat/DTcYUD8crPKua-yd0gL3bg',
		['Programming'] = 'https://telegram.me/ProgrammingChat',
		['mattata Development'] = 'https://telegram.me/mattata',
		['Music'] = 'https://telegram.me/MusicChat',
		['Cancer'] = 'https://telegram.me/CancerChat',
		['Rextesters'] = 'https://telegram.me/Rextesters',
		['TV/Films'] = 'https://telegram.me/joinchat/D9oCfkE6o5jW5WZAjg7BLQ',
		['Web Design/Development'] = 'https://telegram.me/joinchat/D9oCfj_GgKRY0cc4IKws3w',
		['Android'] = 'https://telegram.me/joinchat/DTcYUEFZwMkqVYuInGCm3g',
		['Post-Elections Discussion'] = 'https://telegram.me/joinchat/D9oCfkDJS6XhsMBt9RRLYQ',
		['Arch Linux'] = 'https://telegram.me/joinchat/D9oCfj_vyorPUa2npKHazg'
	},
	redis = { -- Configurable options for binding your copy of mattata to Redis. Do NOT modify these settings if you don't know what you're doing!
		host = '127.0.0.1',
		port = 6379,
		usePassword = false,
		password = '',
		database = 2
	},
	keys = { -- API keys needed for the full functionality of several plugins.
		cats = '', -- http://thecatapi.com/api-key-registration.html
		translate = '', -- https://tech.yandex.com/keys/get/?service=trnsl
		lyrics = '', -- https://developer.musixmatch.com/admin/applications
		canitrust = '', -- https://www.mywot.com/en/signup
		apod = '', -- https://api.nasa.gov/index.html#apply-for-an-api-key
		bible = '', -- https://api.biblia.com/v1/RegisteredApplications/Create
		synonym = '', -- https://tech.yandex.com/keys/get/?service=dict
		lastfm = '', -- http://www.last.fm/api/account/create
		weather = '', -- https://openweathermap.org/api
		google = '', -- https://console.developers.google.com/apis
		bing = '', -- https://datamarket.azure.com/account/keys
		flickr = '', -- https://www.flickr.com/services/apps/create/noncommercial/?
		github_feed = '',
		news = '',
		witai = '',
		twitch = '',
		pastebin = ''
	},
	joinChatMessages = { -- A table of messages where one is selected by random to be sent upon each instance of a user entering the chat. 'NAME' is a placeholder for the said user's name to be later inserted.
		'Welcome, NAME!',
		'Hello, NAME!',
		'Enjoy your stay, NAME!',
		'I\'m glad you joined, NAME!',
		'Howdy, NAME!',
		'Hi, NAME!',
		'Bonjour, NAME!'
	},
	leftChatMessages = { -- A table of messages where one is selected by random to be sent upon each instance of a user leaving the chat. 'NAME' is a placeholder for the said user's name to be later inserted.
		'RIP NAME.',
		'Rest in peace, NAME!',
		'Boy, I sure hope NAME enjoyed their stay!',
		'Was it something I said, NAME?',
		'But we were just getting to know each other, NAME...',
		'Gosh, NAME - am I really THAT bad?',
		'It\'s your loss, NAME.',
		'Come again soon, NAME!',
		'Bye, NAME!',
		'Goodbye, NAME.',
		'Farewell, NAME.'
	},
	errors = { -- Messages to provide a more user-friendly approach to instances of errors.
		generic = 'I\'m afraid an error has occured!',
		connection = 'I\'m sorry, but there was an error whilst I was processing your request, please try again later.',
		results = 'I\'m sorry, but I couldn\'t find any results for that.',
		argument = 'I\'m sorry, but the arguments you gave were either invalid or non-existent. Please try again',
		syntax = 'Syntax error, please try again.'
	},
	dice = {
		maximumRange = 200,
		maximumCount = 200,
		minimumRange = 2
	},
	bing = {
		maximumResultsPrivate = 8,
		maximumResultsGroup = 4
	},
	remind = {
		persist = true,
		maximumLength = 1000,
		maximumDuration = 526000,
		maximumGroupReminders = 10,
		maximumPrivateReminders = 50
	},
	eightball = {
		answers = {
			'It is certain.',
			'It has been confirmed.',
			'Without any doubts.',
			'Yes, definitely.',
			'You may rely on it.',
			'As I see it, yes.',
			'Most likely.',
			'Outlook: not so good.',
			'Yes.',
			'Signs point to yes.',
			'The reply is very weak, try again.',
			'Ask again later.',
			'I can not tell you right now.',
			'Cannot predict right now.',
			'Concentrate, and then ask again.',
			'Do not count on it.',
			'My reply is no.',
			'My sources say possibly.',
			'Outlook: very good.',
			'Very doubtful.',
			'Rowan\'s voice echoes: There is a time and place for everything, but not now.'
		},
		yes_no_answers = {
			'Absolutely.',
			'In your dreams.',
			'Yes.',
			'No.',
			'It is likely so.',
			'Never!'
		}
	},
	faces = { -- Just uh, faces? I don't even know anymore...
		['shrug'] = '¯\\_(ツ)_/¯',
		['lenny'] = '( ͡° ͜ʖ ͡°)',
		['flip'] = '(╯°□°）╯︵ ┻━┻',
		['look'] = 'ಠ_ಠ',
		['shots'] = 'SHOTS FIRED',
		['facepalm'] = '(－‸ლ)',
		['vibrator'] = 'ヽヽ༼༼ຈຈل͜ل͜ຈຈ༽༽ﾉﾉ TURN OFF THE VIBRATOR ヽヽ༼༼ຈຈل͜ل͜ຈຈ༽༽ﾉﾉ',
		['africa'] = '( ͡° ͜ʖ ͡°) Every 60 seconds in Africa, a minute passes. Together we can stop this. Please spread the word ( ͡° ͜ʖ ͡°)',
		['chocolate'] = '\n╔╦╦\n╠╬╬╬╣\n╠╬╬╬╣OK! WHO ATE MY\n╠╬╬╬╣CHOCOLATE!!\n╚╩╩╩╝',
		['kirby'] = '(つ -‘ _ ‘- )つ',
		['finger'] = '\n⁣               /´¯/)\n             ,/¯  /\n             /   /\n          /´¯/’  ’/´¯¯`·¸\n        /’/  /   /    /¨¯\\\n       (‘(   ´  ´   ¯~/’  ’)\n        \\          ’    /\n        \\   \\       _ ·´\n         \\          (\n          \\          \\,',
		['rub'] = 'ヽ( ° ͜ʖ͡°)ﾉ ʀuʙ ᴍʏ ᴅᴏɴɢᴇʀ ヽ( ° ͜ʖ͡°)ﾉ',
		['flo'] = '<b>:3</b>',
		['eli'] = '<b>xDDD</b>',
		['both'] = '<b>:3 xDDD</b>',
		['hitler'] = '<b>HEIL HITLER?! 卐</b>',
		['party'] = '୧༼ ͡◉ل͜ ͡◉༽୨ (ง ͠° ل͜ °)ง ヽ༼ຈل͜ຈ༽ﾉ ༼ ºل͟º ༽ Join da Party ୧༼ ͡◉ل͜ ͡◉༽୨ (ง ͠° ل͜ °)ง ヽ༼ຈل͜ຈ༽ﾉ ༼ ºل͟º ༽',
		['lift'] = '\n❚█══█❚\nDo you even lift?',
		['specs'] = 'ᒡ◯ᵔ◯ᒢ',
		['tobs'] = '<b>TOBS IS A SEXY FUCKER AYYYYY LMAOOOOOOO</b>'
	}
} -- Well, it looks like you've reached the end of the configuration file, so you're good to go! After you've ensured this file is called 'configuration.lua' then you can run ./launch.sh and have fun! :^)