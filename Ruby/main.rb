require_relative './app/models/task'
require_relative './app/views/task_view'
require_relative './app/controllers/task_controller'

controller = TaskController.new

loop do
  puts "\n📌 MENU:"
  puts "1. Listar tarefas"
  puts "2. Adicionar tarefa"
  puts "3. Concluir tarefa"
  puts "4. Sair"
  print "\nEscolha uma opção: "

  option = gets.chomp.to_i

  case option
  when 1 then controller.list_tasks
  when 2 then controller.add_task
  when 3 then controller.complete_task
  when 4 then break
  else
    puts "\n❌ Opção inválida!"
  end
end

puts "\n👋 Saindo do programa..."
