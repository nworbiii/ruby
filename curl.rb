require 'HTTParty'
action = ARGV[0].chomp.downcase
site = ARGV[1]


case action
when 'get'
  p response = HTTParty.get(ARGV[1])
else
  raise Exception, "Unknown Action"
end