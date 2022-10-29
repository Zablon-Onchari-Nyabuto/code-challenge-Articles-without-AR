class Magazine
  attr_accessor :name, :category
  
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @authors = []
    @@all << self

  end

  def self.all
    @@all
  end

  def contributors
    articles = Article.all.filter do |article|
    self == article.magazine
    end

    articles.map do |article|
      article.author
    end
  end

  def self.find_by_name(name)
    all.find {|magazine| magazine.name == name}
  end

  def article_titles
    articles = Article.all.filter do |article|
      self == article.magazine
      end
  
      articles.map do |article|
        article.title
      end
    end

    def contributing_authors
      articles = Article.all.filter do |article|
        self == article.magazine
        end
    
        all_authors = articles.map do |article|
          article.author 
        end

        uniq_authors = all_authors.uniq 
        uniq_authors.filter do |author|
           all_authors.count(author) > 2
        end
    end
end

