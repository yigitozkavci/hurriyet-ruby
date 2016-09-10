require_relative 'lib/hurriyet/version'
Gem::Specification.new do |s|
  s.name        = 'hurriyet'
  s.version     = Hurriyet::VERSION
  s.date        = '2016-09-09'
  s.summary     = 'Hurriyet API Wrapper'
  s.description = 'Ruby wrapper for developers.hurriyet.com API.'
  s.authors     = ['Yigit Ozkavci']
  s.email       = 'yigitozkavci8@gmail.com'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'http://rubygems.org/gems/hurriyet'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.2.0'

  s.add_dependency 'faraday', '0.9.2'

  s.add_development_dependency 'rspec',   '~> 3.3'
  s.add_development_dependency 'rubocop', '~> 0.42'
  s.add_development_dependency 'simplecov', '~> 0.12'
end
