# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Category.create([{ title: "Math" }, { title: "Programming" }, { title: "English" }])
User.create([{ name: "John" }, { name: "Paul" }, { name: "George" }, { name: "Ringo" }])
Test.create([{ title: "Areas", level: 1, category_id: Category.first.id, author_id: User.first.id },
             { title: "Ruby", level: 2, category_id: Category.second.id, author_id: User.second.id },
             { title: "Tenses", level: 3, category_id: Category.third.id, author_id: User.third.id }])
Question.create([{ body: "Area of a triangle?", test_id: Test.first.id },
                 { body: "Which datatypes do you know?", test_id: Test.second.id },
                 { body: "Which feature tenses do you know?", test_id: Test.third.id }])
Answer.create([{ user_id: User.first.id, question_id: Question.first.id, correct: true },
               { user_id: User.last.id, question_id: Question.second.id, correct: false }])
