# responsible to ask for the user action
# dispatch to right controller action
class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # DIsplay to user the option
      puts 'What do you want to do?'
      puts '1. List all tasks'
      puts '2. Create a task'
      puts '3. Mark task as done'
      puts '0. Quit'
      # get the user action
      user_action = gets.chomp.to_i
      # displatch to the controller
      case user_action
      when 1
        @controller.list
      when 2
        @controller.create_task
      when 3
        @controller.mark_task_as_done
      when 0
        puts 'Bye zo/'
        break
      else
        puts "Wrong action...choose a valid option"
      end
    end
  end
end
