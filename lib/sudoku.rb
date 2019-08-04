class Sudoku
  WIN_COMBO = [1, 3, 2, 3, 2, 1, 2, 1, 3]

  def initialize
    @board = Array.new([1, " ", " ", " ", 2, " ", " ", " ", 3])
  end

  def display_board
    puts "******************"
    puts "******************"
    puts "******************"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "-----------"
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, token)
    @board[index] = token
  end

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  def valid_move?(index)
    index.between?(0, 8) && !position_taken?(index)
  end

  def full?
    @board.all? { |token| token != " " }
  end

  def won?
    if @board === WIN_COMBO
      return true
    end
  end

  def over?
    full? || won?
  end

  def turn
    display_board
    index = select_index
    token = select_token
    if valid_move?(index)
      move(index, token)
      display_board
    else
      turn
    end
  end

  def play
    greeting
    turn until over?
    if won?
      puts "********************"
      puts "Yaaaaay!  Well Done!"
      puts "********************"
    else
      binding.pry
      puts "Better luck next time"
    end
  end
end
