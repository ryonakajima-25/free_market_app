FactoryBot.define do
  factory :user do
    id                 { "1" }
    nickname           { "ナナナ" }
    email              { "ccc@gmail.com" }
    encrypted_password { "$2a$11$n79OHUThP67eEGcMxKKprOVBf76/wM" }
    name               { "中村" }
    name_kana          { "なかむら" }
    tel                { "9999" }
    birthday           { "2020-11-11" }
    self_introduction  { "こんにちは" }
    point              { "30" }
    proceed            { "3000" }
  end
end
