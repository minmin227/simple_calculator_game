
require 'active_support/all'

class Person
   attr_accessor :name, :score

   def initialize(name, score)
      @name = name
      @score = score
   end

end
class Question
   attr_accessor :n1, :n2, :func, :result

   def initialize (n1, n2, func, result)
      @n1 = n1
      @n2 = n2
      @func = func
      @result = result.to_i
   end

   def make_question (n1, n2, func)
      @n1 = n1
      @n2 = n2
      if (func == "plus" || func == "+")
         @func = func
         @result = n1 + n2
      end
      if (func == "multiply" || func == "*")
         @func = func
         @result = n1*n2
      end
      if (func == "divide" || func == "/")
         @func = func
         @result = n1/n2
      end
      if(func == "minus" || func == "-")
         @func = func
         @result = n1-n2
      end
      puts "please input again"
      return nil
   end

end