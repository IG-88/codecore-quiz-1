
module A_I_HelperMethods
  def intelligence?
    "reason, plan, learn"
  end
end

class Watson
  extend A_I_HelperMethods
end

class AlphaGo
  extend A_I_HelperMethods
end

p Watson.intelligence?
p AlphaGo.intelligence?
#
#
#
module CountingHelperMethods
  def semicolon_count
    @content.scan(/;/).length
  end
end


class Limerick
  include CountingHelperMethods
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

class ToungueTwister
  include CountingHelperMethods
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

p  alpha_centauri= Limerick.new("A handsome young Cyborg named Ace; Wooed women at every base; But once ladies glanced at; His special enhancement; They vanished with nary a trace.")
p  calvin_hobbes= ToungueTwister.new("How many boards could the Mongols hoard; if the Mongol hordes got bored?.")

p alpha_centauri.semicolon_count
p calvin_hobbes.semicolon_count
