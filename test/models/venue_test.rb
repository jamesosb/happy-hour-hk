require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save venue without name" do
    venue = Venue.new
    assert_not venue.save, "Saved the venue without a title"
  end


end
