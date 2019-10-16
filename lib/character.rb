class Character

attr_reader :name, :actor, :salary
  def initialize(setup)
    @name = setup[:name]
    @actor = setup[:actor]
    @salary = setup[:salary]
  end
end
