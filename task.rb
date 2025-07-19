class Task
  attr_accessor :description, :completed, :created_at

  def initialize(description)
    @description = description
    @completed = false
    @created_at = Time.now
  end

  def mark_down
    @completed = true
  end
end