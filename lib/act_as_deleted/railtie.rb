require "rails/railtie"
require File.expand_path("../engine", __FILE__)

module ActAsDeleted
  extend ActiveSupport::Concern

  class Railtie < ::Rails::Railtie
    ::ActiveRecord::Base.send  :include, ActAsDeleted::Base
  end
end