require "./lib/player"
require "./lib/team"
require "minitest/autorun"
require "minitest/pride"

class TeamTest < Minitest::Test
  def test_it_exists
    france = Team.new("France")
    assert_instance_of Team, france
  end

  def test_it_has_a_country
    france = Team.new("France")
    assert_equal "France", france.country
  end

  def test_it_has_default_zero_players
    france = Team.new("France")
    assert_equal [], france.players
  end

  def test_if_it_is_eliminated
    france = Team.new("France")
    assert_equal false, france.eliminated?
    france.eliminated 
    assert_equal true, france.eliminated?
  end
end