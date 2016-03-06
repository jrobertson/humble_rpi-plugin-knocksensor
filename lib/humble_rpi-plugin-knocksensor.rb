#!/usr/bin/env ruby

# file: humble_rpi-plugin-knocksensor.rb

require 'mcp3008pi'


class HumbleRPiPluginKnockSensor < Mcp3008Pi

  def initialize(settings: {}, variables: {})

    @threshold = variables[:threshold] || 10
    @notifier = variables[:notifier]
    @device_id = variables[:device_id] || 'pi'
    super pin: settings[:pin], clock: 18, dout: 23, din: 24, cs: 25
    
  end

  def start()
    
    
    t0 = Time.now + 1
    
    puts 'ready to detect knocks'
    
    loop do
      
      value = self.read()
      
      next if value <= @threshold

      # ignore any movements that happened less than 100
      #               milliseconds ago since the last movement
      if t0 + 0.1 < Time.now then          
                  
        @notifier.notice "%s/knock: detected" % [@device_id]        
        t0 = Time.now

      end
            
    end
    
    
  end
  
  alias on_start start  
  
end
