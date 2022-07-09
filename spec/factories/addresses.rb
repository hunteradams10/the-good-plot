FactoryBot.define do
  factory :address do
    first_name { "MyString" }
    last_name { "MyString" }
    unit_number { 1 }
    street_number { 1 }
    street_name { "MyString" }
    suburb { "MyString" }
    state { "MyString" }
    post_code { 1 }
    country { "MyString" }
    phone { 1 }
    user { nil }
  end
end
