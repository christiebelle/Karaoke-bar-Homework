require('minitest/autorun')
require("minitest/rg")

require_relative("../guests.rb")

class GuestsTest < MiniTest::Test
  def setup
    @Guest1 = Guests.new("Christie", "Total Eclipse of the Heart", "25")
    @Guest2 = Guests.new("Rachael", "Sweet Child Of Mine", "30")
    @Guest3 = Guests.new("Darren", "Sweet Caroline", "20")
  end

  def test_guest_name
    assert_equal("Christie", @Guest1.guest_name)
  end

  def test_guest_fave_song
    assert_equal("Woo! Sweet Child Of Mine is my favourite song!", @Guest2.guest_fave_song)
  end

  def test_guest_money
    assert_equal("20", @Guest3.guest_money)
  end


end
