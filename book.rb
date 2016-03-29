class Book
  attr_accessor :title, :chapters

  def initialize(title="", chapters={})
    @title = title
    @chapters = chapters
  end

  def add_chapter(str)
       chapter_number = @chapters.length + 1
       @chapters[chapter_number] = str
  end

  def chapters
    msg = "Your book, #{@title}, has #{@chapters.length} chapters: "
      @chapters.each do |chapter_num, chapter_title|
        msg += "#{chapter_num}. #{chapter_title} \n"
      end
    msg
  end

end

book = Book.new
book.title = "Dune"
book.add_chapter("Chapter 1")
book.add_chapter("Chapter 2")
p book.chapters
