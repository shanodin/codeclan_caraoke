require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")
require("pry")

class KaraokeTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jonny")
    @guest2 = Guest.new("Rob")
    @room1 = Room.new(1)
    @room2 = Room.new(2)
    @song1 = Song.new("Radioactive", "Imagine Dragons")
  end

  def test_guest_name
    assert_equal("Jonny", @guest1.name)
  end

  def test_room_number
    assert_equal(1, @room1.room_number)
  end

  def test_check_guest_in
    @room1.check_in_guest(@guest1)
    checked_in_guests = @room1.checked_in_guests
    assert_equal(1, checked_in_guests.count )
  end

  def test_check_out_guest
    @room2.check_in_guest(@guest2)
    @room2.check_out_guest(@guest2)
    assert_equal(0, @room2.checked_in_guests.count)
  end

  def test_add_song_to_playlist
    @room1.add_to_playlist(@song1)
    playlist = @room1.playlist
    assert_equal(1, playlist.count)
  end

  def test_correct_song_is_added
    @room1.add_to_playlist(@song1)
    song = @room1.playlist[0]
    title = song.title
    assert_equal("Radioactive", title)
  end

  def test_song_has_correct_artist
    @room1.add_to_playlist(@song1)
    song = @room1.playlist[0]
    artist = song.artist
    assert_equal("Imagine Dragons", artist)
  end
end
