# Introducing the HumbleRPi-plugin-knocksensor gem


## Testing the plugin

    require 'humble_rpi-plugin-knocksensor'


    class Echo

      def notice(s)
        puts "%s: %s" % [Time.now, s]
      end
    end

    sensor = HumbleRPiPluginKnockSensor.new(settings: {pin: 0}, 
                                            variables: {notifier: Echo.new})
    sensor.start

Output:

<pre>
2016-03-06 22:53:02 +0000: pi/knock: detected
2016-03-06 22:53:02 +0000: pi/knock: detected
2016-03-06 22:53:03 +0000: pi/knock: detected
2016-03-06 22:53:03 +0000: pi/knock: detected
2016-03-06 22:53:04 +0000: pi/knock: detected
2016-03-06 22:53:05 +0000: pi/knock: detected
2016-03-06 22:53:06 +0000: pi/knock: detected
2016-03-06 22:53:06 +0000: pi/knock: detected
2016-03-06 22:53:07 +0000: pi/knock: detected
2016-03-06 22:53:07 +0000: pi/knock: detected
2016-03-06 22:53:08 +0000: pi/knock: detected
2016-03-06 22:53:09 +0000: pi/knock: detected
2016-03-06 22:53:09 +0000: pi/knock: detected
</pre>


Note: The default threshold is set to 10, and the default analog pin is set to 0.

## Using the plugin with the HumbleRPi gem

    require 'humble_rpi'
    require 'humble_rpi-plugin-knocksensor'

    r = HumbleRPi.new device_name: 'ottavia', sps_address: '192.168.4.140',\
      plugins: {KnockSensor: {pin: 0} }
    r.start

## Resources

* A knock sensor example using a piezo element + MCP3008 + Raspberry Pi http://www.jamesrobertson.eu/snippets/2016/mar/06/a-knock-sensor-example-using-a-piezo-element-mcp3008-raspberry-pi.html
* humble_rpi-plugin-knocksensor https://rubygems.org/gems/humble_rpi-plugin-knocksensor

## See also

* Introducing the Humble_RPi-plugin-TiltSensor gem http://www.jamesrobertson.eu/snippets/2016/mar/05/introducing-the-humble_rpi-plugin-tiltsensor-gem.html

humblerpi gem knocksensor sensor plugin
