require('minitest/autorun')
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guests.rb")
require_relative("../songs.rb")



class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("The Goonies", 10, 5)
    @room2 = Room.new("The Breakfast Club", 10, 5)
    @room3 = Room.new("Raiders of the Lost Ark", 10, 5)
    @Guest1 = Guests.new("Christie", "Total Eclipse of the Heart", 25)
    @Guest2 = Guests.new("Rachael", "Sweet Child Of Mine", 30)
    @song1 = Songs.new("Bohemian Rhapsody", "Queen")
    @song2 = Songs.new("Never Forget", "Take That")
    @song3 = Songs.new("I Will Survive", "Gloria Gaynor")
  end


  def test_room_name
    assert_equal("The Goonies", @room1.room_name)
  end

  def test_room_max_capacity
    assert_equal(10, @room2.room_max_capacity)
  end

  def test_room_cost
    assert_equal("Raiders of the Lost Ark room has a £5 entry fee", @room3.room_cost)
  end

  def test_guests_in_room
    assert_equal(0, @room1.guests_in_room())
  end

  def test_check_in_guest
    @room1.check_in_guest(@Guest1)
    assert_equal(1, @room1.guests_in_room())
  end

  def test_check_out_guest
    @room1.check_in_guest(@Guest1)
    @room1.check_in_guest(@Guest2)
    @room1.check_out_guest(@Guest2)
    assert_equal(1, @room1.guests_in_room())
  end

  def test_songs_on_playlist
    assert_equal(0, @room2.songs_on_playlist)
  end

  def test_add_song_to_playlist
    @room2.add_song_to_playlist(@song2)
    assert_equal(1, @room2.songs_on_playlist)
  end


end
