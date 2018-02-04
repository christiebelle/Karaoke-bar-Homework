class Room

  attr_reader :name, :capacity, :cost
  attr_accessor :inroom, :playlist

  def initialize(name, capacity, cost)
    @room_name = name
    @capacity = capacity
    @cost = cost
    @inroom = []
    @playlist = []
  end

  def room_name
    return @room_name
  end

  def room_capacity
    return @capacity
  end

  def room_cost
    return "#{room_name} room has a £#{cost} entry fee"
  end
  #
  def guests_inroom(room)
    return @inroom.count
  end
  #
  def check_in_guest(guest)
    @inroom << guest
  end

  def check_out_guest(guest)
    @inroom.delete(guest)
  end

  def songs_on_playlist
    return @playlist.count
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

end
