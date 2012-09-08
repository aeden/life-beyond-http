require 'net/ssh'

Net::SSH.start('test.dnsimple.com', 'aeden') do |ssh|
  p ssh.exec!("hostname")
  
  stdout = ""
  ssh.exec!('ls -l /') do |channel, stream, data|
    stdout << data if stream == :stdout
  end
  puts stdout
end
