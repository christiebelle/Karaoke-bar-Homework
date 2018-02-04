require('minitest/autorun')
require("minitest/rg")

require_relative("../songs.rb")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Bohemian Rhapsody", "Queen")
    @song2 = Songs.new("Never Forget", "Take That")
    @song3 = Songs.new("I Will Survive", "Gloria Gaynor")
  end


  def test_song_title
    assert_equal("Never Forget", @song2.song_title)
  end

  def test_song_artist
    assert_equal("Gloria Gaynor", @song3.song_artist)
  end

  def test_play_song
    assert_equal("Now playing Bohemian Rhapsody", @song1.play_song)
  end


end
