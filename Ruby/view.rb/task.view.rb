class TaskView
  def show_tasks(tasks)
    puts "\n📌 Lista de Tarefas:"
    tasks.each do |task|
      status = task.completed ? "[✔]" : "[ ]"
      puts "#{status} #{task.id}: #{task.name}"
    end
  end

  def ask_for_task_name
    print "\nDigite o nome da nova tarefa: "
    gets.chomp
  end

  def ask_for_task_id
    print "\nDigite o ID da tarefa para marcar como concluída: "
    gets.chomp.to_i
  end

  def show_message(message)
    puts "\n🔹 #{message}"
  end
end
