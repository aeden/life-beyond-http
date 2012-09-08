#!/usr/bin/env ruby

require 'net/dns'

nameservers = ['127.0.0.1', '8.8.8.8']

resolver = Net::DNS::Resolver.new(
  :nameservers => nameservers, 
  :udp_timeout => 1
)

require 'pp'
pairs = ARGV.empty? ? ['example.com:a'] : ARGV
pairs.each do |pair|
  name, type = pair.split(/:/)
  packet = resolver.query(name, type)
  pp packet
end


