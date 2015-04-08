require 'brazilian_forgery'
require 'brazilian_forgery/version'

require 'forgery'
current_path = File.expand_path(File.dirname(__FILE__))

Dir["#{current_path}/brazilian_forgery/forgeries/*"].each {|f| require f }
Forgery.load_from! "#{current_path}/brazilian_forgery"
