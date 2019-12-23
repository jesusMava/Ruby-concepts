class Environment
  def variables
    puts 'Enter the first number'
    number_1 = gets.chomp
    puts 'Enter the second number'
    number_2 = gets.chomp
    return number_1, number_2 
  end
end

class SingsOperations
  def operators
    puts 'please choose an operator'
    puts '1.(*)  2.(/)  3.(+)  4.(-)'
    operator = gets.chomp
    case operator
    when "1"
      operator = "*"
    when "2"
      operator = "/"
    when "3"
      operator = "+"
    when "4"
      operator = "-"
    else
      puts "Error unknown operator"
    end
    return operator
  end
end

class Operations 
  def result_operation(numbers, operation_sing)
    sum = 0 
    numbers.each{ |num| sum = sum.send(operation_sing, num.to_i) }
    puts "The result is #{-(sum)}"
  end
end

environment = Environment.new
numbers = environment.variables

singsOfOperations = SingsOperations.new
operation_sing = singsOfOperations.operators

operation = Operations.new
operation.result_operation(numbers, operation_sing)
