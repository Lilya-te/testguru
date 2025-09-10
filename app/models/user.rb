class User < ApplicationRecord
  has_many :user_tests

  def my_tests(level:)
    self.user_tests.map(&:test).select{_1.level == level}
  end
end
