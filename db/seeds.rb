# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adrian = User.create(name: 'Adrian Mejia', email: 'adriansky@gmail.com', password: '1234')
post = adrian.posts.create(:name=>'Adrian Mejia', :title=>'Ruby on Rails Rocks!', :content=>'This is just my humble opinion :)')
tag_rails = Tag.create(:name=>"rails")
tag_ruby = Tag.create(:name=>"ruby")
tag_economy = Tag.create(:name=>"economy")
post.tags << tag_rails

# adrian.posts
# adrian.posts.first.tags

#
# Le olde model
#

# post = Post.create(:name=>'Adrian Mejia', :title=>'Ruby on Rails Rocks!', :content=>'This is just my humble opinion :)')
# com1 = Comment.create(:commenter=>"Isis Q.", :body=>"Suerte!",:post=>post)
# p2 = Post.create(:name=>'Ivan', :title=>'La Microeconomia Dominicana', :content=>'Aqui va tu contenido...')
# post.tags << tag_rails
# post.tags << tag_ruby
# p2.tags << tag_economy