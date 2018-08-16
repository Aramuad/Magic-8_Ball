
class Answer
  def initialize(answer_arr)
    @answer = answer_arr
    @working_arr = []
  end

  def add_answer
    puts 'What answer would you like to add?'
    ans = gets.strip
    
  if @answer.include? @user_input
    puts 'Already a possible answer.'
  else
    @working_arr = @answer.clone
    @working_arr << @user_input
  end
end

  def print_all_answers
    @working_arr.each {|answer| puts answer}
  end
 
  def reset_answers(user_choice)
    if user_choice == 'Yes'
    @working_arr = @answer_arr
    end
  end
end