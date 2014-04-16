class Bookmark
 attr_accessor :url, :title
 attr_reader :last_visited
 
 def intialize(url, title)
  @url = url
  @title = title
  @last_visited = Time.now
 end
  
 def visit!
  last_visited = Time.now
 end
end
