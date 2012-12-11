require 'cora'
require 'siri_objects'
require 'httparty'
require 'json'


class SiriProxy::Plugin::Git < SiriProxy::Plugin

    def initialize(config)
    end

    listen_for /The hubs current status/i do
    page = HTTParty.get('https://status.github.com/api/status.json').body rescue nil
    reply = JSON.parse(page) rescue nil
    
    say "The status of github is currently #{reply["status"]}"
    
    request_completed
    end

    listen_for /The hubs last update/i do
    page = HTTParty.get('https://status.github.com/api/status.json').body
    reply = JSON.parse(page)
        
    say "The status report was last updated at #{reply["last_updated"]}"
        
    request_completed
    end

    listen_for /The hubs last message/i do
    page = HTTParty.get('https://status.github.com/api/last-message.json').body
    reply = JSON.parse(page)
    
        say "The last message was: #{reply["body"]}. The status then was '#{reply["status"]}' and that was at #{reply["created_on"]}"
    
    request_completed
    end

end