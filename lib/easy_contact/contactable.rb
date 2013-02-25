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
      has_many :emails, :dependent => :destroy,
        :class_name => 'EasyContact::Email',
        :foreign_key => 'contactable_id'
      has_many :websites, :dependent => :destroy,
        :class_name => 'EasyContact::Website',
        :foreign_key => 'contactable_id'

      accepts_nested_attributes_for :entries, 
        :names, :phones, :addresses, :emails, :websites,
        :reject_if => :reject_entries,
        :allow_destroy => true
    end

    module ClassMethods
    end # end of class methods

    def reject_entries(attributes)
      attributes['content'].blank?
    end

  end
end
