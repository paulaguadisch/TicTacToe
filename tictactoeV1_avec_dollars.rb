class Players
    attr_accessor :player1, :player2
    def initialize
        @player1 = player1 #on initialize deux joueurs
        @player2 = player2
    end
    def whats_your_name_p1 #on demande le nom du j1 et un message d'acceuil
        $player1 = gets.chomp
        puts "\nHey #{@player1} \n"
        puts "-------------------------------------------------------------------"
    end
    def whats_your_name_p2 #on demande le nom du j2 et un message d'acceuil
        $player2 = gets.chomp
        puts "\nHello #{@player2} \n"
    end
end

##########################################

class Game
    def welcome_player1 #on welcome le joueur 1 et on lui demande son nom
        puts "\nHey bros, Welcome to the new TicTacToe Gaame ! Ready for the show ? \n"
        puts "-------------------------------------------------------------------"
        print "But first, please enter your name player 1! ---> "
    end
    def welcome_player2 #on welcome le player 2 et on lui demande son nom
        print "Second player please do the same ! --->  "
    end
    def show_the_table #on présente l'arène de jeu
        puts "\nVoici l'arène les petits girls/boys :"
    end
    
    def lets_play_player1 #tour de joueur 1, on lui demande de faire un choix
        print "#{$player1} it's your turn bro, tell us where you wanna play: "
        choice = gets.chomp.to_s #on enregistre son choix dans choice
        if choice == "A1" then $choices[0]="X"
          elsif choice == "B1" then $choices[1]="X"
          elsif choice == "C1" then $choices[2]="X"
          elsif choice == "A2" then $choices[3]="X"
          elsif choice == "B2" then $choices[4]="X"
          elsif choice == "C2" then $choices[5]="X"
          elsif choice == "A3" then $choices[6]="X"
          elsif choice == "B3" then $choices[7]="X"
          else $choices[8]="X"
        end
    end
    def lets_play_player2 #on fait la même chose que pour le player 1 avec le player 2
        print "#{$player2} it's your turn bro, tell us where you wanna play: "
        choice = gets.chomp.to_s
        if choice == "A1" then $choices[0]="O"
          elsif choice == "B1" then $choices[1]="O"
          elsif choice == "C1" then $choices[2]="O"
          elsif choice == "A2" then $choices[3]="O"
          elsif choice == "B2" then $choices[4]="O"
          elsif choice == "C2" then $choices[5]="O"
          elsif choice == "A3" then $choices[6]="O"
          elsif choice == "B3" then $choices[7]="O"
          else $choices[8]="X"
        end
    end
    def win #on définit les conditions de victoires
        if choice == $choice[0]="X" && $choice[1]="X" && $choice[2]="X"
        puts "Congratulation #{$player1} you are a beast"
    else
        nouvelle_partie
    end
    end
end

##########################################

class Board #on dessine le tableau en partant des cases vides en choices et enf faisant des boucles sur ce même tableau pour chaque lignes
$choices = [" "," ", " ", " "," "," "," ", " ", " "]
    def show_the_board
        print "\n    A     B     C"+"\n"
        print "  ------------------"+"\n"+"1|"
        i=0
        for i in 0..2
          print "  "+ $choices [i]+"  |"
          i+=1
        end
        print "\n"+"  ------------------"
        print "\n"+"2|"
        i=3
        for i in 3..5
          print "  "+ $choices [i]+"  |"
          i+=1
        end
        print "\n"+"  ------------------"
        print "\n"+"3|"
        i=6
        for i in 6..8
          print "  "+ $choices [i]+"  |"
          i+=1
        end
        puts "\n"+"  ------------------"
        print "\n"
    end
end

##########################################

class BoardCase 
  attr_accessor :name_case
  def initialize(name_case)
    @name_case = name_case
  end
end

##########################################

nouvelle_partie = Game.new #on lance la partie
nouvelle_partie.welcome_player1 #on welcome j1

player1 = Players.new #on demande à j1 de jouer
player1.whats_your_name_p1

nouvelle_partie.welcome_player2 #on demande à j2 de jouer
player2 = Players.new

player2.whats_your_name_p2 #on demande le nom de j2
nouvelle_partie.show_the_table

board = Board.new #on affiche le board
board.show_the_board

(0..5).each do #on déroule la partie avec la boucle suivante
  nouvelle_partie.lets_play_player1
  board.show_the_board
  nouvelle_partie.lets_play_player2
  board.show_the_board
end

