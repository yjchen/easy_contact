require 'spec_helper'

describe EasyContact::Entry do
  describe 'Basic' do
    it 'create nested attributes' do
      params = { :entries_attributes => [
        { :content => 'first entry' },
        { :content => 'second entry' }
      ]}

      user = User.create(params)
      user.entries.count.should eq(2)
    end
  end
end
