class Bookmark
 attr_accessor :url, :title
 attr_reader :last_visited
 
 def visit!
  last_visited = Time.now
 end
end
