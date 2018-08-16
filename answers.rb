
class Answer
  attr_accessor :working_arr
  def initialize(answer_arr)
    @answer = answer_arr
    @working_arr = @answer.clone
  end

  def add_answer
    puts 'What answer would you like to add?'
    ans = gets.strip
    
    if @answer.include? ans
      puts 'Already a possible answer.'
    else
      @working_arr << ans
    end
  end

  def print_all_answers
    @working_arr.each {|answer| puts answer}
  end
 
  def reset_answers
   
    @working_arr = @answer
    
  end
end