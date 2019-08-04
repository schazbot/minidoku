require_relative "../config/environment"
@prompt = TTY::Prompt.new

def greeting
  puts "Welcome to Mini-doku! All rows and columns must include numbers 1-3"
end

def select_index
  prompt = TTY::Prompt.new
  prompt.select("Select an position") do |menu|
    menu.choice name: "1", value: 0
    menu.choice name: "2", value: 1
    menu.choice name: "3", value: 2
    menu.choice name: "4", value: 3
    menu.choice name: "5", value: 4
    menu.choice name: "6", value: 5
    menu.choice name: "7", value: 6
    menu.choice name: "8", value: 7
    menu.choice name: "9", value: 8
  end
end

def index_select
  case select_token
  when 1
    return 0
  when 2
    return 1
  when 3
    return 2
  when 4
    return 3
  when 5
    return 4
  when 6
    return 5
  when 7
    return 6
  when 8
    return 7
  when 9
    return 8
  end
end

def token_select
  case select_token
  when 1
    return 1
  when 2
    return 2
  when 3
    return 3
  end
end

def select_token
  prompt = TTY::Prompt.new
  prompt.select("Select an Number to place on the grid") do |menu|
    menu.choice name: "1", value: 1
    menu.choice name: "2", value: 2
    menu.choice name: "3", value: 3
  end
end




game = Sudoku.new
game.play


