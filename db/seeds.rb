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
    created_at: "2019-03-25 16:36:45",
    updated_at: "2019-03-25 16:36:45",
    user_id: 1,
    new_image: nil
)

Event.create!(
    id: 3,
    title: "AWSハンズオン",
    date: "2019-03-30",
    description: "2時間でAWSの基本が学べます",
    address: "渋谷",
    created_at: "2019-03-25 06:36:49",
    updated_at: "2019-03-25 06:36:75",
    user_id: 1,
    new_image: nil
)

Event.create!(
    id: 4,
    title: "データサイエンス勉強会",
    date: "2019-03-30",
    description: "データサイエンスについて学びます",
    address: "品川",
    created_at: "2019-03-25 06:66:45",
    updated_at: "2019-03-25 06:38:45",
    user_id: 1,
    new_image: nil
)

Event.create!(
    id: 5,
    title: "こどもプログラミング教室",
    date: "2019-03-30",
    description: "0から無料で教えます。5歳から参加可能です！",
    address: "目黒",
    created_at: "2019-03-25 05:36:45",
    updated_at: "2019-03-25 06:46:45",
    user_id: 1,
    new_image: nil
)

Event.create!(
    id: 6,
    title: "javascript入門会",
    date: "2019-03-30",
    description: "簡単なアプリを作りながらjavascriptを学べます",
    address: "五反田",
    created_at: "2019-03-25 04:36:45",
    updated_at: "2019-03-25 04:36:45",
    user_id: 1,
    new_image: nil
)
