class User < ApplicationRecord
  def test_list(level)
    question_ids = Answer.where(user_id: self.id).map(&:question_id)
    test_ids = Question.where(id: question_ids).map(&:test_id)
    Test.where(id: test_ids, level: level)
  end
end
