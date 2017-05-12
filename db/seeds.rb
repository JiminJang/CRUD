# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_post=Post.new
new_post.title="제목"
new_post.content="Sssss"
new_post.save


Post.create(title:'안녕',content:'내용이야')

Comment.create(:content =>'댓글이야', :post_id =>1) #제일 처음으로 썼던 게시물의 댓글로 써지는 거야