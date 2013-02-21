class EasyContact::Entry < ActiveRecord::Base
  belongs_to :contactable
  attr_accessible :addition, :content, :country, :extra, :label, :locale, :primary, :type
end
