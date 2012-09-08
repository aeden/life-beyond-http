#!/usr/bin/env ruby
require 'onstomp'

client = OnStomp.connect('stomp://admin:password@127.0.0.1')
client.connect
client.subscribe('/queue/test', :ack => 'client') do |m|
  client.ack m
  puts "Got and ACK'd a message: #{m.body}"
end

while(true) do
end
