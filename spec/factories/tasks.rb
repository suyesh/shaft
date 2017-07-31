FactoryGirl.define do
  factory :task do
    task_key "MyString"
    title "MyString"
    description "MyText"
    due_date "2017-07-31 17:12:43"
    archive "2017-07-31 17:12:43"
    list nil
  end
end
