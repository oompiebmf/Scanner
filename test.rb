require 'open-uri'


url = 'http://' + '192.168.1.1'
open (url) do |output|
  puts output.readline
end