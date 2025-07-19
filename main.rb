require_relative 'todo_list'

def run
  todo_list = File.exist?('todo.yml') ? TodoList.load : TodoList.new 

  loop do
    puts "\n📝 To-do List Menu"
    puts "1. Add Task"
    puts "2. View Tasks"
    puts "3. Mark Task as Done"
    puts "4. Delete Task"
    puts "5. Save"
    puts "6. Exit"
    print 'Choose an option: '
    choice = gets.chomp

    case choice
    when '1'
      print 'Enter task description: '
      desc = gets.chomp
      todo_list.add_task(desc)
    when '2'
      puts "\n📋 Current Tasks:"
      todo_list.list_tasks
    when '3'
      todo_list.list_tasks
      print 'Enter task number to mark as done: '
      index = gets.chomp.to_i - 1
      if index.between?(0, todo_list.list_tasks.size - 1 )
        todo_list.mark_task_done(index)
        puts 'Task marked as done!'
      else
        puts "Invalid task number."
      end
    when '4'
      todo_list.list_tasks
      print 'Enter a task to delete: '
      index = gets.chomp.to_i - 1
      if index.between?(0, todo_list.list_tasks.size - 1 )
        todo_list.delete_task(index)
        puts 'Task deleted.'
      else 
        puts 'Invalid task number.'
      end
    when '5'
      todo_list.save
      puts 'Tasks saved to todo.yml'
    when '6'
      puts 'Goodbye!'
      break
    else
      puts 'Invalid option. Please try again.'
    end
  end
end

run