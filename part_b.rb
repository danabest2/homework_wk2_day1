class Team

  attr_reader :name
  attr_accessor :coach, :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def add_player(team, new_player)
    @team.players << new_player
  end

end
