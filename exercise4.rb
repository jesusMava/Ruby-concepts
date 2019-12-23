class Environment
  def variables
    array_numbers = []
    until array_numbers.length >= 2
      puts 'Enter the number '
      number_n = gets.chomp
      array_numbers.push(number_n)
    end
      puts 'Do you want to add another number? y/n'
      answer = gets.chomp
      while answer == 'y'
      puts 'Enter the number '
      number_n = gets.chomp
      array_numbers.push(number_n)
      puts 'Do you want to add another number? y/n'
      answer = gets.chomp
      end
    return array_numbers
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
  def result_operation(array_numbers, operation_sing)
    sum = array_numbers.delete_at(0).to_i
    array_numbers.each{ |num| sum = sum.send(operation_sing, num.to_i) }
    puts "The result is #{sum}"
  end
end

environment = Environment.new
array_numbers = environment.variables

singsOfOperations = SingsOperations.new
operation_sing = singsOfOperations.operators

operation = Operations.new
operation.result_operation(array_numbers, operation_sing)
