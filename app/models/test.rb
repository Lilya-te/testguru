class Test < ApplicationRecord
  def self.tests_by_category(category_title:)
    category_ids = Category.where(title: category_title).pluck(:id)
    Test.where(category_id: category_ids).pluck(:title).sort.reverse
  end
end
