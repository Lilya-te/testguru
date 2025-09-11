class Test < ApplicationRecord

  def self.tests_by_category(category_title:)
    joins("JOIN categories ON categories.id = tests.category_id")
      .where("categories.title = ?", category_title)
      .order("tests.title desc")
      .pluck("tests.title")
  end
end
