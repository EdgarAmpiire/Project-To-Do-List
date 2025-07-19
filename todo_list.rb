require 'yaml'
require_relative 'task'

class TodoList
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(description)
    @tasks << Task.new(description)
  end

  def list_tasks
    tasks.each_with_index do |task, index|
      status = task.completed ? "✅ Done" : "🕒 Pending"
      puts "#{index + 1}: [#{status}] #{task.description}"
    end
  end

  def mark_task_done(index)
    tasks[index].mark_done
  end

  def delete_task(index)
    tasks.delete_at(index)
  end

  def save(filename = 'todo.yml')
    File.open(filename, 'w') { |file| file.write(YAML.dump(self)) }
  end

  def load(filename = 'todo.yml')
    File.exist?(filename) ? YAML.load_file(filename, permitted_classes[Task, TodoList]) : TodoList.new
  end
end