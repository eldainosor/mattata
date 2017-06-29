--[[
    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.
]]

local playstore = {}
local mattata = require('mattata')
local https = require('ssl.https')
local url = require('socket.url')
local json = require('dkjson')

function playstore:init()
    playstore.commands = mattata.commands(self.info.username)
    :command('playstore')
    :command('app').table
    playstore.help = '/playstore <query> - Displays information about the first app returned by iTunes for the given search query. Alias: /app.'
end

function playstore.get_app_info(jdat)
    local categories = {}
    for n in pairs(jdat.results[1].genres)
    do
        table.insert(
            categories,
            jdat.results[1].genres[n]
        )
    end
    local rating = tonumber(jdat.results[1].userRatingCount)
    if rating ~= nil
    then
        if rating == 1
        then
            rating = utf8.char(11088) .. ' 1 rating'
        elseif rating > 0
        then
            rating = utf8.char(11088) .. ' ' .. mattata.comma_value(
                tostring(rating)
            ) .. ' ratings (' .. jdat.results[1].averageUserRating .. ')'
        else
            rating = utf8.char(11088) .. ' ' ..  mattata.comma_value(
                tostring(rating)
            ) .. ' ratings'
        end
    else
        rating = 'N/A'
    end
    if jdat.results[1].description:len() > 250
    then
        jdat.results[1].description = jdat.results[1].description:sub(1, 250) .. '...'
    end
    return string.format(
        '<b>%s</b> - v%s, %s/%s/%s\n\n<i>%s</i>\n\n%s\n%s <b>|</b> iOS %s+',
        mattata.escape_html(jdat.results[1].trackName),
        jdat.results[1].version,
        jdat.results[1].currentVersionReleaseDate:sub(9, 10),
        jdat.results[1].currentVersionReleaseDate:sub(6, 7),
        jdat.results[1].currentVersionReleaseDate:sub(1, 4),
        mattata.escape_html(jdat.results[1].description),
        table.concat(
            categories,
            ' <b>|</b> '
        ),
        rating,
        jdat.results[1].minimumOsVersion
    )
end

function playstore:on_message(message, configuration, language)
    local input = mattata.input(message.text)
    if not input
    then
        return mattata.send_reply(
            message,
            playstore.help
        )
    end
    local jstr, res = https.request('https://itunes.apple.com/search?term=' .. url.escape(input) .. '&lang=en&entity=software')
    if res ~= 200
    then
        return mattata.send_reply(
            message,
            language['errors']['connection']
        )
    end
    local jdat = json.decode(jstr)
    if jdat.resultCount == 0
    then
        return mattata.send_reply(
            message,
            language['errors']['results']
        )
    end
    return mattata.send_message(
        message.chat.id,
        playstore.get_app_info(jdat),
        'html',
        true,
        false,
        nil,
        mattata.inline_keyboard():row(
            mattata.row():url_button(
                language['playstore']['1'],
                jdat.results[1].trackViewUrl
            )
        )
    )
end

return playstore
