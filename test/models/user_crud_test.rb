# frozen_string_literal: true

require 'test_helper'

class UserCrudTest < ActiveSupport::TestCase
  test 'can create user' do
    assert_difference 'User.count', +1 do
      User.create(first_name: 'Test', last_name: 'Case')
    end
  end

  test 'can edit user' do
    users(:Bob).update(first_name: 'Robert')
    assert users(:Bob).first_name == 'Robert'
  end

  test 'can delete user' do
    assert_difference 'User.count', -1 do
      User.last.delete
    end
  end
end
