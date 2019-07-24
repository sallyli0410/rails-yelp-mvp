Restaurant.destroy_all if Rails.env.development?

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create!(
      name: Faker::Hipster.word,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: CATEGORY.sample
    )
end
