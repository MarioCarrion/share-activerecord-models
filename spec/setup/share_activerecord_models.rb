config_yml = File.expand_path(File.join('..',
                                        '..',
                                        '..',
                                        'config',
                                        'database.yml'),
                              __FILE__)
config = YAML.load(File.read(config_yml))
ActiveRecord::Base.establish_connection(config['test'])
