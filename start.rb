players = []
#GET USER NAME
player1 = Person.new("Player1", 3)
puts "Please input your name as Player 1:"
print"> "
player1.name = gets.chomp
puts "new player: #{player1.name} with begin score: #{player1.score}/3, DONE!"
players.push(player1);

player2 = Person.new("Player2", 3)
puts "Please input your name as Player 2:"
print"> "
player2.name = gets.chomp
puts "new player: #{player2.name} with begin score: #{player2.score}/3, DONE!"
players.push(player2);

puts"#{player1.name.upcase} vs #{player2.name.upcase}"
puts "1......2......3"
puts "START !"

def playgame(players)
   question = Question.new(0, 0, "+", 0)
   while players[0].score > 1 && players[1].score > 1
      players.each do |player|
         puts "Question: "
         print "please input number 1:> "
         question.n1 = gets.chomp.to_i
         print "please input number 2:> "
         question.n2 = gets.chomp.to_i
         print "please input function:> "
         question.func = gets.chomp
         puts "#{player.name}: What does #{question.n1} #{question.func} #{question.n2} equal ?"
         question.make_question(question.n1, question.n2, question.func)
         print "> "
         answer = gets.chomp.to_i
         if (answer != question.result)
            player.score -= 1
            puts "your answer is wrong ! it should be #{question.result}"
            puts "P1: #{players[0].score}/3 vs P2: #{players[1].score}/3"
            puts "----------------NEW TURN----------------"
         else
            puts "YES ! you are correct"
            puts "P1: #{players[0].score}/3 vs P2: #{players[1].score}/3"
            puts "----------------NEW TURN----------------"
         end
      end
   end
   if players[0].score = 0
      puts "#{players[1].name} WON !"
      puts "P1: #{players[0].score}/3 vs P2: #{players[1].score}/3"
      puts " --------GAME OVER------- "
      return puts "Good bye !"
   else
      puts "#{players[0].name} WON !"
      puts "P1: #{players[0].score}/3 vs P2: #{players[1].score}/3"
      puts " --------GAME OVER------- "
      return puts "Good bye !"
   end
end

playgame(players)

