class Songs

  attr_accessor :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
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
