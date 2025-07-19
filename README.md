# ✅ Ruby To-Do List Manager (CLI)

A simple, interactive **command-line To-Do List app** written in Ruby. This project lets users add, manage, and persist tasks using YAML for file storage. It's a great beginner-friendly project for practicing object-oriented design, file handling, and serialization in Ruby.

---

## 📦 Features

- 📝 Add new tasks
- 📋 View all tasks (shows completed and pending status)
- ✅ Mark tasks as done
- ❌ Delete tasks
- 💾 Save tasks to `todo.yml`
- 🔄 Load saved tasks when restarting

---

## 🧠 Concepts Practiced

- Ruby Classes & Object-Oriented Programming (OOP)
- YAML serialization/deserialization
- Reading and writing files
- Command-line input/output
- Simple user interaction loop

---

## 🗂️ File Structure

```bash
todo_app/
├── main.rb # CLI interface – handles user input/output
├── task.rb # Task class – represents an individual task
├── todo_list.rb # ToDoList class – manages collection of tasks
└── todo.yml # Serialized task data (auto-created when saving)
```

## 🚀 How to Run the App

1. **Ensure Ruby is installed:**
   ```bash
   ruby -v
   ```

2. Clone or download this repo, then navigate to the project folder in your terminal.

3. Run the app:
    ```bash
    ruby main.rb
    ```

## 🖥️ Sample Menu Output
```mathematica
📝 To-Do List Menu
1. Add Task
2. View Tasks
3. Mark Task as Done
4. Delete Task
5. Save
6. Exit
Choose an option:
```

## 💾 Data Persistence
- Task data is saved in a todo.yml file using YAML.dump.

- When the app starts, it automatically loads previously saved tasks (if the file exists).

## 🎯 Why This Project?
This was created as a self-directed project outside The Odin Project curriculum to reinforce Ruby fundamentals, particularly:

- Object modeling and collection handling

- YAML for simple persistence

- File I/O

- CLI app architecture