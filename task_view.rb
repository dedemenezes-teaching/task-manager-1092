# user communication
# puts / gets

class TaskView
  def ask_for_description
    puts "What's the description?"
    gets.chomp
  end

  def display(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? "[X]" : "[ ]"#=> TERNARY IF
      puts "#{index + 1}. #{status} - #{task.description}"
    end
  end

  def ask_for_index
    puts "Index?"
    gets.chomp.to_i - 1
  end
end
