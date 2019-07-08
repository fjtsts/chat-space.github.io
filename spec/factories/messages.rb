FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    image {File.open("#{Rails.root}/public/images/GettyImages-522585140.jpg")}
    user
    group
  end
end

