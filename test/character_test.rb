require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'


class CharacterTest < Minitest::Test
  def setup
    @character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @character
  end
end
