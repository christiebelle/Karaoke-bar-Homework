class Guests

  attr_reader :name
  attr_accessor :favesong, :money

  def initialize(name, favesong, money)
    @name = name
    @favesong = favesong
    @money = money
  end

  def song_title
    return @title
  end

  def song_artist
    return @artist
  end

  def play_song
    return "Now playing #{title}"
  end


end
