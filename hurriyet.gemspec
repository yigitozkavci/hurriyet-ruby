Gem::Specification.new do |s|
  s.name        = 'hurriyet'
  s.version     = '0.1.0'
  s.date        = '2016-09-09'
  s.summary     = 'Hurriyet API Wrapper'
  s.description = 'Ruby wrapper for developers.hurriyet.com API.'
  s.authors     = ['Yigit Ozkavci']
  s.email       = 'yigitozkavci8@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    =
    'http://rubygems.org/gems/hurriyet'
  s.license       = 'MIT'
  s.add_dependency 'faraday', '0.9.2'
end
