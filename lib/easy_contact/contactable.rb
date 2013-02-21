module EasyContact
  module Contactable
    extend ActiveSupport::Concern

    included do
      has_many :addresses, :dependent => :destroy,
        :class_name => 'EasyContact::Address',
        :foreign_key => 'contactable_id'
      has_many :phones, :dependent => :destroy,
        :class_name => 'EasyContact::Phone',
        :foreign_key => 'contactable_id'
    end

    module ClassMethods
    end # end of class methods

  end
end
