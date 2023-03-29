class Player
  attr_accessor :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end

  def first_name
    names = @name.split
    names[0]
  end

  def last_name
    names = @name.split
    names[1]
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def set_nickname!(name)
    @nickname = name
  end
end