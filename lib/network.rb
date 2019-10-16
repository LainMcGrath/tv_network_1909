class Network

attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
  highest_paid = characters.max_by do |character|
    character.salary
    highest_paid.actor
  end
  end
end
