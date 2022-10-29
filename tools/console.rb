require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author = Author.new("Ken Walibora")
magazine = Magazine.new("The Sun", "Cjhuhuh")
article1 = Article.new(author, magazine, "New string")
article2 = Article.new(author, magazine, "Newark station")
article3 = Article.new(author, magazine, "Chihuahua")








### DO NOT REMOVE THIS
binding.pry

0
