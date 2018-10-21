FactoryBot.define do
  factory :book do
    title { "MyString" }
    description { "MyString" }
    isbn { "MyString" }
    genre { "MyString" }
    publish_date { "2018-10-21" }
    num_pages { 1 }
    image_url { "MyString" }
    author { nil }
  end
end
