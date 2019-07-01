require('minitest/autorun')
require('minitest/rg')

require_relative('../part_b.rb')

class TestTeam < MiniTest::Test

  def setup

    array = ['G. Kepper', 'D. Efender', 'A. Ttacker']
    @team = Team.new('Codeclan FC', 'M. Anager', array)

    @team2 = Team.new('Codeclan FC', 'M. Anager', ['G. Kepper', 'D. Efender', 'A. Ttacker'])

    @new_player = 'N. Player'

  end

  def test_team_name
    assert_equal('Codeclan FC', @team.name())
  end

  def test_team_coach
    assert_equal('M. Anager', @team.coach())
  end

  def test_team_players
    assert_equal(['G. Kepper', 'D. Efender', 'A. Ttacker'], @team.players())
  end

  def test_set_coach
    @team.coach = 'A. Manager'
    assert_equal('A. Manager', @team.coach())
  end

  def test_add_player
    add_player(@team, @new_player)
    assert_equal(['G. Kepper', 'D. Efender', 'A. Ttacker', 'N. Player'], @team.players())
  end



end
