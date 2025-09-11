class User < ApplicationRecord

  def my_tests(level:)
    Test.joins("JOIN user_tests ON user_tests.test_id = tests.id")
        .where("tests.level = ? AND user_tests.user_id = ?", level, self.id)
        .to_a
  end
end
