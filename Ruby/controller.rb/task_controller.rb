class TaskController
  def initialize
    @tasks = []
    @view = TaskView.new
    @next_id = 1
  end

  def list_tasks
    @view.show_tasks(@tasks)
  end

  def add_task
    name = @view.ask_for_task_name
    task = Task.new(@next_id, name)
    @tasks << task
    @next_id += 1
    @view.show_message("Tarefa '#{name}' adicionada!")
  end

  def complete_task
    id = @view.ask_for_task_id
    task = @tasks.find { |t| t.id == id }
    if task
      task.complete!
      @view.show_message("Tarefa '#{task.name}' concluída!")
    else
      @view.show_message("Tarefa não encontrada.")
    end
  end
end
