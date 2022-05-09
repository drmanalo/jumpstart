FactoryBot.define do
  factory :notification do
    recipient { create :user }
    type { "" }
    params { "" }
    read_at { "2022-05-09 18:01:25" }
  end
end
