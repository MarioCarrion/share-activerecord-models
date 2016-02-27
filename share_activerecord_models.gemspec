require_relative 'lib/share_activerecord_models/version'

Gem::Specification.new do |s|
  s.name          = 'share_activerecord_models'
  s.version       = ShareActiveRecordModels::Version::VERSION
  s.date          = ShareActiveRecordModels::Version::DATE

  s.summary       = 'Share your ActiveRecord models!'
  s.description   = 'Barebones gem describing you how to share your models'\
                    'between multiple projects while keep all your rails magic'
  s.authors       = 'Mario Carrion'
  s.email         = 'info@carrion.ws'
  s.homepage      = 'https://github.com/mariocarrion/share-activerecord-models'

  s.licenses      = ['MIT']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}`.split("\n")
  s.require_path  = 'lib'

  s.required_ruby_version = '~> 2.2'

  s.add_runtime_dependency 'activemodel',   '~> 4.2',   '>= 4.2.5'
  s.add_runtime_dependency 'activerecord',  '~> 4.2',   '>= 4.2.5'
  s.add_runtime_dependency 'activesupport', '~> 4.2.5', '>= 4.2.5'
  s.add_runtime_dependency 'pg',            '~> 0.18',  '>= 0.18.2'

  s.add_development_dependency 'database_cleaner',             '~> 1.4'
  s.add_development_dependency 'factory_girl',                 '~> 4.5',   '>= 4.5.0'
  s.add_development_dependency 'geminabox',                    '~> 0.12'
  s.add_development_dependency 'pronto',                       '~> 0.4',   '>= 0.4.3'
  s.add_development_dependency 'pronto-rubocop',               '~> 0.4',   '>= 0.4.7'
  s.add_development_dependency 'pry',                          '~> 0.10'
  s.add_development_dependency 'pry-nav',                      '~> 0.2'
  s.add_development_dependency 'rails',                        '~> 4.2.5', '>= 4.2.5.1'
  s.add_development_dependency 'rake',                         '~> 10.4',  '>= 10.4.2'
  s.add_development_dependency 'rspec',                        '~> 3.2'
  s.add_development_dependency 'rubocop',                      '~> 0.37'
  s.add_development_dependency 'rubocop-checkstyle_formatter', '~> 0.2'
  s.add_development_dependency 'rubocop-rspec',                '~> 1.4'
  s.add_development_dependency 'scenic',                       '~> 1.2',   '>= 1.2.0'
  s.add_development_dependency 'shoulda-matchers',             '~> 3.0'
  s.add_development_dependency 'simplecov',                    '~> 0.9',   '>= 0.9.1'
  s.add_development_dependency 'simplecov-rcov',               '~> 0.2',   '>= 0.2.3'
  s.add_development_dependency 'simplecov-summary',            '~> 0.0.4'
end
