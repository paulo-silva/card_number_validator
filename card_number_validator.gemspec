Gem::Specification.new do |s|
  s.name        = 'card_number_validator'
  s.version     = '0.1.1'
  s.authors     = ['Paulo Henrique da Silva']
  s.email       = ['paulo.silva1337@gmail.com']
  s.homepage    = 'https://github.com/pauloh-silva/card_number_validator'
  s.summary     = 'Ruby library to validate payment card numbers'
  s.license     = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- spec/*`.split("\n")

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-console'
end
