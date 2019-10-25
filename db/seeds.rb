# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'Elwick1', age: '27', bio: 'A chill guy who loves star wars, slapping the bass, reading books and DnD', password: 'Alligator1')
user2 = User.create(username: 'BackyardDave', age: '29', bio: 'I really like the outdoors, specifically backyards', password: 'outside')
user3 = User.create(username: 'Tarzan', age: '32', bio: 'lives in the jungle, raised by gorillas after my parents were eaten by a leopard', password: 'jane69')
user4 = User.create(username: 'Timbo55', age: '20', bio: 'I am Very Young, in fact the MATRIX is older than me', password: 'timber')

# article1 = Article.create(title: 'STAR WARS', content: )
