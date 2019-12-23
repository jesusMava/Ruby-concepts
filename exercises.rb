puts "----------------------------Exercise 1-----------------------------------"
class FirstExercise
 $welcome = 'Hello everyonei this is a global variable' 
 @@total_students = 0
  def initialize(name,last)
    @name = name
    @last = last
  end

  def my_method
    puts "name: #{@name} \n total students: #{@@total_students}"
    @@total_students += 1
  end

  def test_value_variables
    puts "my variable global #{$welcome}"
    puts "my class variable  #{@name}"
    puts "my instance variable #{@@total_students}"
  end
end

my_class = FirstExercise.new('jesus','mava')
my_class.my_method
my_class.test_value_variables

puts "------------------------------Exercise 2---------------------------------"
# create a class in which you can show how the dynamic typing works
class Dynamic 
  def show_me
    variable = 'Hello I am a string'
    puts "variable: #{variable}, and my .class show you #{variable.class}"
    variable = 5
    puts "but now my value change #{variable} and my class too #{variable.class}"
  end
end

exercise_2 = Dynamic.new
exercise_2.show_me

puts "----------------------------Exercise 3-----------------------------------"
#Make a class in which you can show how the ruby interpreted language works
class Interpreted
  @@text = "x < 1"
  def tokenizing
    puts 'first all we need to do  is break the program into chunks. These chunks are called tokens'
    puts 'these are the tokens ["x", "<", "1"]'
  end
  def lexing
    puts 'in this part each token is tagging begin an identifier :on_ident,' +
      ':on_op, :on_int, and so on'
    puts '[[[1, 0], :on_ident, "x"],'
    puts '[[1, 2], :on_op, ">"],'
    puts '[[1, 4], :on_int, "1"],'
  end

  def parsing
    puts 'Ruby transforms the text into something called an abstract syntax tree,'+
    'or AST. The abstract syntax tree is a representation of your program in memory'
  end

  def compiling
    puts 'Nowadays Ruby compiles the abstract syntax tree into lower-level byte code 
          throw virtual machine(VM)'
  end
end

interpreted = Interpreted.new
puts '***Step 1***'
interpreted.tokenizing
puts '***Step 2***'
interpreted.lexing
puts '***Step 3***'
interpreted.parsing
puts '***Step 4***'
interpreted.compiling
