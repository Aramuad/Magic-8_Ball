require_relative "answers"

@answers = [ "As I see it, yes",
"Ask again later",
"Better not tell you now",
"Lets say, you just don't wanna know",
"If I were you I'd jump off a cliff",
"If I tell you, I have to kill you",
"404 error. Cannot predict now",
"Concentrate and ask again",
"Don’t count on it",
"It is certain",
"It is decidedly so",
"Most likely",
"My reply is no",
"My sources say no",
"Outlook good",
"Outlook not so good",
"Reply hazy try again",
"Signs point to yes",
"Very doubtful",
"Without a doubt",
"Yes",
"Yes, definitely",
"You may rely on it",
"You'd wish you were never born",
]


def show_menu(ans)
  while true  
    puts "Type a question to get an answer, or type QUIT to exit the program"
    case gets.strip.upcase 
    when 'QUIT'
      puts "Thank you, and Goodbye, and Good luck"
      exit
    when "ADD"
      ans.add_answer
    when "RESET"
      ans.reset_answers
    when "PRINT"
      ans.print_all_answers
    else
      puts ans.working_arr.sample  
    end
  end
end

ansObj = Answer.new(@answers)
show_menu(ansObj)
