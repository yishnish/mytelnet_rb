require 'mytelnet_rb/version'
require 'net/telnet'

module MytelnetRb
  class Telnet
    def initialize telnet_connection
      @_telnet = telnet_connection
    end

    def read
      socket.readpartial(1024)
    end

    private

    def socket
      @_telnet.sock
    end
  end
end
