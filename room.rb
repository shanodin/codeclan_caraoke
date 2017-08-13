require_relative("guest.rb")

class Room

attr_accessor :room_number, :checked_in_guests, :playlist

  def initialize (room_number)
    @room_number = room_number
    @checked_in_guests = []
    @playlist = []
  end

  def check_in_guest(guest)
    @checked_in_guests.push(guest)
  end

  def check_out_guest(guest)
    @checked_in_guests.delete_if {|n| n == guest}
  end

  def add_to_playlist(song)
    @playlist.push(song)
  end

end
