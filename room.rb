class Room

  attr_reader :name, :capacity, :cost
  attr_accessor :inroom, :playlist

  def initialize(name, capacity, cost)
    @room_name = name
    @capacity = capacity
    @cost = cost
    @in_room = []
    @playlist = []
  end

  def room_name
    return @room_name
  end

  def room_max_capacity
    return @capacity
  end

  def room_cost
    return "#{room_name} room has a £#{cost} entry fee"
  end

  def guests_in_room()
    return @in_room.length
  end

  def check_in_guest(guest)
    @in_room << guest
  end

  def check_out_guest(guest)
    @in_room.delete(guest)
  end

  def songs_on_playlist
    return @playlist.length
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

end
