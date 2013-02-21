class User < ActiveRecord::Base
  acts_as_contactable

  # attr_accessible :title, :body
end
