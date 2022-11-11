require_relative 'task_view'
require_relative 'task'

class TasksController
  def initialize(task_repository)
    @view = TaskView.new
    @repo = task_repository
  end

  def create_task
    # 1. Ask the view for the description
    desc = @view.ask_for_description
    # 2. Instantiate the new task
    task = Task.new(desc)
    # 3. Ask the repo to store it
    @repo.add(task)
  end

  def list
    # Ask the repo for all the tasks
    tasks = @repo.all
    # Ask the view to display all the tasks
    @view.display(tasks)
  end

  def mark_task_as_done
    # 1. Display all tasks
    list
    # 2. Ask for the index
    index = @view.ask_for_index
    # 3. Ask for the repo to find the correct task
    task = @repo.find(index)
    # 4. Ask the task to mark as done
    task.mark_as_done!
  end
end
