# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create!(
         id: 1,
         title: "渋谷LT会",
         date: "2019-03-29",
         description: "個人開発サービスの発表会です",
         address: "渋谷道玄坂",
         created_at: "2019-04-02 02:04:12",
         updated_at: "2019-03-25 02:04:12",
         user_id: 1,
         new_image: nil
)

Event.create!(
         id: 2,
         title: "Rubyカンファレンス",
         date: "2019-03-30",
         description: "世界的なカンファレンス",
         address: "東京",
         created_at: "2019-03-25 06:36:45",
         updated_at: "2019-03-25 06:36:45",
         user_id: 1,
         new_image: nil
)
