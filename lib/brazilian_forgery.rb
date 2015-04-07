require 'brazilian_forgery/version'
require 'forgery'
Dir['lib/forgery/forgeries/*.rb'].each { |f| require File.expand_path(f) }

Forgery.load_from! 'lib/forgery'

module BrazilianForgery; end

require 'forgery/forgery_railtie' if Forgery.rails? && Rails::VERSION::STRING >= "3.0.0"
