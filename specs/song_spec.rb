require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class KaraokeTest < MiniTest::Test

  def setup
    @song1 = Song.new("Radioactive", "Imagine Dragons")
  end

  def test_song_title
    assert_equal("Radioactive", @song1.title)
  end

  def test_artist
    assert_equal("Imagine Dragons", @song1.artist)
  end
  
end
