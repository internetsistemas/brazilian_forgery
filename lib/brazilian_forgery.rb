require 'brazilian_forgery'
require 'brazilian_forgery/version'

require 'forgery'
#require 'forgery/forgeries/bank'

Dir['forgery/forgeries/*.rb'].each { |f| require File.expand_path(f) }

Forgery.load_from! 'lib/forgery'

module BrazilianForgery
end
