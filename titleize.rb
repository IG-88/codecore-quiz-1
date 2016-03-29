module HelperMethods

  def titleize(string)
    prepositions = %w(in the of and or from)
    string.split(" ").map do |word|
      if prepositions.include?(word)
        word
      else
        word.capitalize
      end
    end.join(" ")
  end

end
