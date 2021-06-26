class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

attr_encrypted :attribute, key: ENV['MY_KEY'].bytes[0..31].pack( "c" * 32 )
