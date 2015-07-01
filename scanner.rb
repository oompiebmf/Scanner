require 'socket'
require 'open-uri'
require 'net/http'
class Scanner
  def initialize(ip, port)
    @ip = ip
    @port = port
  end

  def banner
  if @port == 80
    url = 'http://' + @ip + '/'
    uri = URI.parse(url)
    http_request = Net::HTTP::Get.new(uri.path)
    http_request.each_header {|header| puts header}
    http_response = Net::HTTP::start(uri.hostname, uri.port) do |http|
      htt
    end
  end

  end
  end


toot = Scanner.new('192.168.1.5', 80)
loot = toot.banner
puts loot