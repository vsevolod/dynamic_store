require 'active_record'
require 'active_record/version'
require 'active_support/core_ext/module'

module DynamicStore
  extend ActiveSupport::Autoload

  autoload :Dictionary
end
