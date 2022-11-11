class Task
  attr_reader :description

  def initialize(description)
    # instance variables => they represent the attribute
    # each new task has a different value for those attributes
    @description = description
    @done        = false
  end

  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end
