class Task
  attr_accessor :id, :name, :completed

  def initialize(id, name, completed = false)
    @id = id
    @name = name
    @completed = completed
  end

  def complete!
    @completed = true
  end
end
