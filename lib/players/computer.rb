require 'pry'
module Players
  class Computer < Player
    WINS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
<<<<<<< HEAD

=======
    CHECK = [[0,1,2], [0,2,1], [1,2,0]] 
    # for winning combos, check positions 1,2,3 for matching tokens
    
>>>>>>> c6e49ae8d5c09043a5ea9832c738a426cb9d0271
    def move(board=nil)

      my_move = ""

      WINS.find do |combo|
        if board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[0]] != " " && board.cells[combo[2]] == " "
          return (combo[2] + 1).to_s
          
        elsif board.cells[combo[0]] == board.cells[combo[2]] && board.cells[combo[0]] != " " && board.cells[combo[1]] == " "
          return (combo[1] + 1).to_s
        
        elsif board.cells[combo[1]] == board.cells[combo[2]] && board.cells[combo[1]] != " " && board.cells[combo[0]] == " "
          return (combo[0] + 1).to_s
        end
      end
      
      if board.turn_count == 0
        my_move = "5"
      
      elsif board.turn_count == 1
        my_move = "1"
  
      elsif board.turn_count == 2
        my_move = ["1", "3", "5", "7"].sample
      
<<<<<<< HEAD
      else
        my_move = rand(1..9).to_s
        until board.valid_move? (my_move)
          my_move = rand(1..9).to_s
        end
        my_move
      end  
=======
      WINS.each do |combo|
        CHECK.each do |index|
          
          if board.cells[combo[index[0]]] == board.cells[combo[index[1]]] && board.cells[combo[index[0]]] != " "
            puts "match"
            my_move = (combo[index[2]] + 1).to_s
              
            if board.valid_move? (my_move)
              puts "valid"
              return my_move
            end
          
          elsif board.turn_count == 0
            puts "first"
            my_move = "5"
        
            
          elsif board.turn_count == 1
            puts "second"
            my_move = "1"
        
          elsif board.turn_count == 2
            puts "third"
            my_move = ["1", "3", "5", "7"].sample
            
          else
            puts "other"
            my_move = rand(1..9).to_s
          end
        end
        # if board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[0]] != " "
        #   if board.cells[combo[2]] == " "
        #     my_move =  (combo[2] + 1).to_s
        #   end
        
          
        # elsif board.cells[combo[0]] == board.cells[combo[2]] && board.cells[combo[0]] != " "
        #   if board.cells[combo[1]] == " "
        #     my_move = (combo[1] + 1).to_s
        #   end
        
          
        # elsif board.cells[combo[1]] == board.cells[combo[2]] && board.cells[combo[1]] != " "
        #   if board.cells[combo[0]] == " "
        #     my_move = (combo[0] + 1).to_s
      
      end
      my_move
>>>>>>> c6e49ae8d5c09043a5ea9832c738a426cb9d0271
    end
  end
end

# How to play TTT logically (from wikipedia)

#Win: If the player has two in a row, they can place a third to get three in a row.
#Block: If the opponent has two in a row, the player must play the third themselves to block the opponent.
#Fork: Create an opportunity where the player has two threats to win
#Blocking an opponent’s fork
#Center: A player marks the center.
#Opposite corner: If the opponent is in the corner, the player plays the opposite corner.
#Empty corner: The player plays in a corner square.
#Empty side: The player plays in a middle square on any of the 4 sides.

# WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], # [6,4,2]]
