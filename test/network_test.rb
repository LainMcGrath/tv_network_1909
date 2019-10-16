require './lib/show'
require './lib/character'
require './lib/network'
require 'minitest/autorun'
require 'minitest/pride'


class NetworkTest < Minitest::Test

  def setup
    @network = Network.new("NBC")
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @show = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", @character)
    @characters = [@leslie_knope, @ron_swanson]
  end

  def test_it_exists
    assert_instance_of Network, @network
  end

  def test_it_can_add_a_show
    assert_equal "Parks and Recreation", @show.name
  end

  def test_highest_paid_actor
    assert_equal "Amy Poehler", @characers.highest_paid_actor
  end
end
