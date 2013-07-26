require './blogger_api.rb'

class Blogger
  include BloggerAPI
  connect "database.yml"
  
  def self.play
    
    last_2_users.each{|u| puts u.name}
    last_2_blogs.each{|b| puts b.title}
    last_n_posts.each{|p| puts p.content}
    first_1_comments.each{|c| puts c.content}
    
    posts_in_blog.each{|b| b.posts.each{|p| puts p.content}}
    comments_by_user.each{|u| u.comments.each{|c| puts c.content}}
    
    puts "The number of blogs created at 07-13 is "
    puts Blogger.group_blogs["07-13"]
    
    puts "The Blogs are:"
    (blogs_by_date year:'13',month:'07').each_with_index{|b,i|puts "#{i+1}. #{b.title}"}
    
    puts "total number of blogs is #{total_blogs}"
    puts "total number of users is #{total_users}"
    
  end
end

Blogger.play