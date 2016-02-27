ENV['RAILS_ENV'] = 'test'

require 'bundler'

Bundler.require(:default, :test)

require 'share_activerecord_models/all'

require_relative 'setup/factory_girl'
require_relative 'setup/shoulda'
require_relative 'setup/share_activerecord_models'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fail_fast = true

  config.include FactoryGirl::Syntax::Methods
  config.include(Shoulda::Matchers::ActiveModel,  type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)

  config.before(:suite) do
    ShareActiveRecordModels::Base.tap do |klass|
      DatabaseCleaner[:active_record, { model: klass }].clean_with(:truncation)
    end
  end

  config.around(:each) do |example|
    example.run
  end

  config.before(:each) do |example|
    ShareActiveRecordModels::Base.tap do |klass|
      DatabaseCleaner[:active_record, { model: klass }].strategy = :transaction
      DatabaseCleaner[:active_record, { model: klass }].start
    end
  end

  config.after(:each) do
    ShareActiveRecordModels::Base.tap do |klass|
      DatabaseCleaner[:active_record, { model: klass }].clean
    end
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
