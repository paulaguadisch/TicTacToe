class Player

    attr_reader :symbol
    
    def initialize(symbol)
        @symbol = symbol
        @name = ask_player_name
    end
    
    def ask_player_name
        puts "What is your name?"
        @answer = gets.chomp
    end

    def ask_for_a_move
        puts "What is your move?"
        $move = gets.chomp.to_s
        return $move
    end

end

##########################################

class Game

    def initialize
        puts "\nHey bros, Welcome to the new TicTacToe Gaame ! Ready for the show ? \n"
        puts "-------------------------------------------------------------------"
        $players = [Player.new("X"), Player.new("O")]
        @board = Board.new
        @board.empty_board
    end

    def start
        $move = $players[0].ask_for_a_move.to_s
        @board.updated_board 
    end


end


##########################################

class BoardCase
  attr_accessor :content, :full

  def initialize(row,column)
    @content = " "
    @full = false
  end

end

##########################################

class Board

  attr_accessor :board_case, :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize

      @a1 = BoardCase.new(1,1)
      @b1 = BoardCase.new(1,2)
      @c1 = BoardCase.new(1,3)
      @a2 = BoardCase.new(2,1)
      @b2 = BoardCase.new(2,2)
      @c2 = BoardCase.new(2,3)
      @a3 = BoardCase.new(3,1)
      @b3 = BoardCase.new(3,2)
      @c3 = BoardCase.new(3,3)

  @board_case = [@a1.content,@b1.content,@c1.content,@a2.content,@b2.content,@c2.content,@a3.content,@b3.content,@c3.content]

  end

=begin
  def display_board
    puts " ------BOARD------"
    puts "Row1 :: [#{@a1.value},#{@b1.value},#{@c1.value}]"
    puts "Row2 :: [#{@a2.value},#{@b2.value},#{@c2.value}]"
    puts "Row3 :: [#{@a3.value},#{@b3.value},#{@c3.value}]"
    puts " -----------------"
  end

  def update_case(case_row,case_column,symbol)
    eval("@case#{case_row}#{case_column}.value = symbol")
    eval("@case#{case_row}#{case_column}.full = true")
  end
=end

  def empty_board

      print "\n    A     B     C"+"\n"
      print "  ------------------"+"\n"+"1|"
      i=0
      for i in 0..2
        print "  "+ " "+"  |"
        i+=1
      end
      print "\n"+"  ------------------"
      print "\n"+"2|"
      i=3
      for i in 3..5
        print "  "+ " "+"  |"
        i+=1
      end
      print "\n"+"  ------------------"
      print "\n"+"3|"
      i=6
      for i in 6..8
        print "  "+ " "+"  |"
        i+=1
      end
      puts "\n"+"  ------------------"
      print "\n"

  end

  def updated_board

      if $move == "A1" then @board_case[0]=$players[0].symbol
          elsif $move == "B1" then @board_case[1]=$players[0].symbol
          elsif $move == "C1" then @board_case[2]=$players[0].symbol
          elsif $move == "A2" then @board_case[3]=$players[0].symbol
          elsif $move == "B2" then @board_case[4]=$players[0].symbol
          elsif $move == "C2" then @board_case[5]=$players[0].symbol
          elsif $move == "A3" then @board_case[6]=$players[0].symbol
          elsif $move == "B3" then @board_case[7]=$players[0].symbol
          else $board_case[8]=$players[0].symbol
      end

      print "\n    A     B     C"+"\n"
      print "  ------------------"+"\n"+"1|"
      i=0
      for i in 0..2
        print "  "+ @board_case[i]+"  |"
        i+=1
      end
      print "\n"+"  ------------------"
      print "\n"+"2|"
      i=3
      for i in 3..5
        print "  "+ @board_case[i]+"  |"
        i+=1
      end
      print "\n"+"  ------------------"
      print "\n"+"3|"
      i=6
      for i in 6..8
        print "  "+ @board_case[i]+"  |"
        i+=1
      end
      puts "\n"+"  ------------------"
      print "\n"

  end


end




##########################################

nouvelle_partie = Game.new
nouvelle_partie.start
