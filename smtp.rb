#!/usr/bin/env ruby
require 'mail'

message = Mail.new do
  from 'anthonyeden@gmail.com'
  to 'anthony.eden@dnsimple.com'
  subject 'This is a test'
  body "This is just a test of the SMTP protocol"
end

message.delivery_method :smtp, {
  :address => "127.0.0.1",
  :port => "1025"
}
message.deliver!
