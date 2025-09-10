# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
math_category = Category.create({ title: "Math" })
programming_category = Category.create({ title: "Programming" })
user_john = User.create({ name: "John" })
user_paul = User.create({ name: "Paul" })
user_george = User.create({ name: "George" })
user_ringo = User.create({ name: "Ringo" })

test_areas = Test.create({ title: "Areas", level: 1, category_id: math_category.id, author_id: user_john.id })
test_ruby = Test.create({ title: "Ruby", level: 2, category_id: programming_category.id, author_id: user_paul.id })
areas_question1 = Question.create({ body: "Area of a triangle?", test_id: test_areas.id })
ruby_question1 = Question.create({ body: "Which year Ruby was released?", test_id: test_ruby.id })
areas_question1_answer1 = Answer.create({ body: 'ah', question_id: areas_question1.id, correct: false })
areas_question1_answer2 = Answer.create({ body: '1/2 ah', question_id: areas_question1.id, correct: true })
ruby_question1_answer1 = Answer.create({ body: '2002', question_id: ruby_question1.id, correct: false })
ruby_question1_answer2 = Answer.create({ body: '1995', question_id: ruby_question1.id, correct: true })
UserTest.create([{user_id: user_john.id, test_id: test_areas.id},
                 {user_id: user_paul.id, test_id: test_ruby.id},
                 {user_id: user_george.id, test_id: test_areas.id},
                 {user_id: user_ringo.id, test_id: test_ruby.id}])
UserAnswer.create([{user_id: user_john.id, answer_id: areas_question1_answer1.id},
                   {user_id: user_paul.id, answer_id: ruby_question1_answer1.id},
                   {user_id: user_george.id, answer_id: areas_question1_answer2.id},
                   {user_id: user_ringo.id, answer_id: ruby_question1_answer2.id}])