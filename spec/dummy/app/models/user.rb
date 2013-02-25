class User < ActiveRecord::Base
  acts_as_contactable

  attr_accessible :entries_attributes, :names_attributes
end
