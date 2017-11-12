require 'spec_helper'

module MytelnetRb

  describe MytelnetRb do
    it 'reads from a telnet connection' do
      mock_telnet = mock_telnet_connection
      expect(mock_telnet).to receive(:readpartial).and_return('hello')
      telnet = Telnet.new @telnet
      expect(telnet.read).to eq('hello')
    end

    def mock_telnet_connection
      @telnet = double('mock connection')
      @socket = instance_double(TCPSocket)
      expect(@telnet).to receive(:sock).and_return(@socket)
      @socket
    end
  end
end
