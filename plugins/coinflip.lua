--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local coinflip = {}
local mattata = require('mattata')

function coinflip:init()
    coinflip.commands = mattata.commands(self.info.username)
    :command('coinflip')
    :command('cf').table
    coinflip.help = '/coinflip [guess] - Flips a coin and returns the result! If a guess is given, the result is tested against it and reveals the accuracy accordingly. Alias: /cf.'
end

function coinflip:on_message(message, configuration, language)
    local input = mattata.input(
        message.text:lower()
    )
    local result = 'Heads.'
    local flip = math.random(2)
    if not input
    then
        if flip ~= 1
        then
            result = 'Tails.'
        end
        return mattata.send_reply(
            message,
            '<b>' .. language['coinflip']['1'] .. '</b> ' .. result,
            'html'
        )
    else
        input = input
        :gsub('heads', '1')
        :gsub('tails', '2')
    end
    if tonumber(input) == 1
    or tonumber(input) == 2
    then
        input = tonumber(input)
        if flip ~= 1
        then
            result = 'Tails.'
        end
        if input == flip
        then
            return mattata.send_reply(
                message,
                '<b>' .. language['coinflip']['1'] .. '</b> ' .. result .. '\n<i>' .. language['coinflip']['2'] .. '</i>',
                'html'
            )
        end
        return mattata.send_reply(
            message,
            '<b>' .. language['coinflip']['1'] .. '</b> ' .. result .. '\n<i>' .. language['coinflip']['3'] .. '</i>',
            'html'
        )
    else
        return mattata.send_reply(
            message,
            language['coinflip']['4']
        )
    end
end

return coinflip