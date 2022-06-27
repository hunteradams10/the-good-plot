FactoryBot.define do
  factory :listing do
    title { "MyString" }
    author { "MyString" }
    publisher { "MyString" }
    price { 1 }
    summary { nil }
    sold { false }
    condition { 1 }
    genre { nil }
    user { nil }
  end
end
