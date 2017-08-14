require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")


class KaraokeTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jonny")
  end

  def test_guest_name
    assert_equal("Jonny", @guest1.name)
  end

end
