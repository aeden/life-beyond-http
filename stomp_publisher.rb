#!/usr/bin/env ruby
require 'onstomp'

client = OnStomp.connect('stomp://admin:password@127.0.0.1')
while(true) do
  client.send('/queue/test', "the time is: #{Time.now}")
  sleep(5)
end
client.disconnect
