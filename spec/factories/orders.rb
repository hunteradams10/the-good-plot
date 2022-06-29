FactoryBot.define do
  factory :order do
    order { "" }
    listing { nil }
    buyer { nil }
    seller { nil }
    address { nil }
  end
end
