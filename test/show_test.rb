require './lib/show'
require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'


class ShowTest < Minitest::Test

  def setup
    @character_1 = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @character_2 = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @show = Show.new("Knight Rider", "Glen Larson", ["Michael Knight", "KITT"])
  end

  def test_it_exists
    assert_instance_of Show, @show
  end

  def test_it_has_a_name
    assert_equal "Knight Rider", @show.name
  end

  def test_it_has_a_creator
    assert_equal "Glen Larson", @show.creator
  end

  def test_it_has_a_character
    assert_equal [@character_1.name, @character_2.name], @show.characters
  end
end
