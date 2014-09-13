require 'pry'

require 'bundler/setup'
Bundler.setup
require 'rails/all'

RSpec.configure do |config|
  # some (optional) config here
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'act_as_deleted'