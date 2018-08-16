
class Answer
  def initialize(answer_arr)
    @answer = answer_arr
    @working_arr = []
  end

  def add_answer
    puts 'What answer would you like to add?'
    ans = gets.strip
    
  if @answers.include? @user_input
    puts 'Already a possible answer.'
  else
    @working_arr = @answer.clone
    @working_arr << @user_input
  end
end

