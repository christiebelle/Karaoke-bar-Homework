class Guests

  attr_reader :name
  attr_accessor :favesong, :money

  def initialize(name, favesong, money)
    @name = name
    @favesong = favesong
    @money = money
  end

  def guest_name
    return @name
  end

  def guest_fave_song
    return "Woo! #{favesong} is my favourite song!"
  end

  def guest_money
    return @money
  end
end
