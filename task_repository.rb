# It will work like our DataBase

class TaskRepository
  # TO STORE ALL THE TASKS
  def initialize
    @tasks = [] # instances of the Task class
  end

  # BEHAVIOR

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
end
