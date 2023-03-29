class Team
  attr_accessor :roster, :player_count, :long_term_players, :short_term_players, :total_value
  def initialize(name, home_city)
    @roster = []
    @player_count = 0
    @long_term_players = []
    @short_term_players = []
    @total_value = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1

    if player.contract_length > 24
      @long_term_players << player
    elsif player.contract_length <= 24
      @short_term_players << player
    end

    @total_value += player.total_cost
  end

  def details
    { "total_value" => @total_value, "player_count" => @player_count }
  end

  def average_cost_of_player
    average = @total_value / @player_count
    "$#{average.to_s.chars.reverse.each_slice(3).map(&:join).join(",").reverse}"
  end

  def players_by_last_name
    last_names = []
    @roster.each do |player|
      last_names << player.last_name 
    end
    last_names.join(", ")
  end
end