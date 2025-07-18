# 簡易版のCLIで動くTodoアプリ作成
# コンソール上で以下のような操作を実装：
# `add タスク名` でタスクを追加
# `list` で未完了タスクの一覧を表示
# `done 番号` で指定タスクを完了済みにマーク


require 'json' 
# タスクを保存するための配列
$tasks = []
TASKS_FILE = 'tasks.json'

# ファイルから読み込み（なければ空）
$tasks = if File.exist?(TASKS_FILE)
            JSON.parse(File.read(TASKS_FILE), symbolize_names: true)
         else
            []
         end
def save_tasks
  File.write(TASKS_FILE, JSON.pretty_generate($tasks))
end

def add_task(task_name)
  task = { name: task_name, completed: false }
  $tasks << task
  save_tasks
  puts "タスク '#{task_name}' を追加しました。"
end

def list_tasks
  if $tasks.empty?
    puts "未完了のタスクはありません。"
  else
    puts "未完了のタスク一覧:"
    $tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task[:name]}"
    end
  end
end

def mark_task_done(task_number)
  if task_number < 1 || task_number > $tasks.length
    puts "error: そんな番号ないよ。"
  else
    $tasks[task_number - 1][:completed] = true
    save_tasks
    puts "タスク '#{$tasks[task_number - 1][:name]}' を完了済みにしました。"
  end
end

case command = ARGV[0]
when 'add'
  task_name = ARGV[1]
  if task_name.nil? || task_name.empty?
    puts "タスク名を指定してください。"
  else
    add_task(task_name)
  end

when 'list'
  list_tasks

when 'done'
  task_number = ARGV[1].to_i
  if task_number.zero?
    puts "タスク番号を指定してください。"
  else
    mark_task_done(task_number)
  end

else
  puts "error: そんな番号ないよ。"
end
