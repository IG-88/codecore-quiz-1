require './titleize.rb'
module Blog

  class Article
    include HelperMethods
    attr_accessor :body, :title

    def initialize(title, body)
      @title = titleize(title)
      @body = body
    end

  end

  class Snippet < Article

    def initialize(article_title, article_body)
      super
    end

    def body
      @body.length > 100 ? @body = @body[0..100] + "..." : @body
    end
  end

end
