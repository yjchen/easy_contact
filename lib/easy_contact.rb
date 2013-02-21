require "easy_contact/engine"
require "easy_contact/contactable"

module EasyContact
  def self.table_name_prefix
    'easy_contact_'
  end
end

if defined?(ActiveRecord::Base)
  class ActiveRecord::Base
    def self.acts_as_contactable(options = {})
      options.reverse_merge!({})
      include EasyContact::Contactable
    end
  end
end
