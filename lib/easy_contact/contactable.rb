module EasyContact
  module Contactable
    extend ActiveSupport::Concern

    included do
      has_many :entries, :dependent => :destroy,
        :class_name => 'EasyContact::Entry',
        :foreign_key => 'contactable_id'
      has_many :names, :dependent => :destroy,
        :class_name => 'EasyContact::Name',
        :foreign_key => 'contactable_id'
      has_many :addresses, :dependent => :destroy,
        :class_name => 'EasyContact::Address',
        :foreign_key => 'contactable_id'
      has_many :phones, :dependent => :destroy,
        :class_name => 'EasyContact::Phone',
        :foreign_key => 'contactable_id'

      accepts_nested_attributes_for :entries, :names
    end

    module ClassMethods
    end # end of class methods

  end
end
