Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-knocksensor'
  s.version = '0.1.0'
  s.summary = 'A Humble RPi plug to detect knocks using a knock sensor (piezo element).'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-knocksensor.rb']
  s.add_runtime_dependency('mcp3008pi', '~> 0.1', '>=0.1.1')
  s.signing_key = '../privatekeys/humble_rpi-plugin-knocksensor.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-knocksensor'
end
