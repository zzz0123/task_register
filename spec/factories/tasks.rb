# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    summary "MyString"
    description "MyString"
    deadline "2014-09-24 01:11:53"
    note "MyString"
  end
end
