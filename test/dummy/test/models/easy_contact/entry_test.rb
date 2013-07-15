require 'test_helper'

describe EasyContact::Entry do
  describe 'Basic' do
    it 'create nested attributes' do
      params = { :entries_attributes => [
        { :content => 'first entry' },
        { :content => 'second entry' }
      ]}

      user = User.create(params)
      user.entries.count.must_equal(2)
    end

    it 'create nested names' do
      params = { :names_attributes => [
        { :content => 'first name' },
        { :content => 'second name' }
      ]}

      user = User.create(params)
      user.names.count.must_equal(2)
      user.entries.count.must_equal(2)
    end

    it 'reject blank field' do
      params = { :names_attributes => [
        { :content => '' },
        { :content => 'second name' }
      ]}

      user = User.create(params)
      user.names.count.must_equal(1)
    end
  end
end
