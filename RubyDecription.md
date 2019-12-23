### Interpreted language virtual machine
A Ruby interpreter is any program that is able to interpret source code written in the Ruby language.

 **Ruby interpreters**: 
 - YARV
 - Ruby MRI/CRuby
 - JRuby
 - Rubinius

### Virtual Machine (vm)
 A VM is a program running on your computer that emulates a separate computer to have better predictability and stability. This ensures that all computers can run Ruby regardless of the specific machine code they use.
Ruby virtual machine is a virtual machine (program) that executes ruby code. Usually a ruby interpreter.

### Dynamically typed languages
In a dynamically typed language, variables’ types are dynamic.
This means that when you associate a variable to a type then you can change it whenever you want.
Actually, typing is associated with the value it assumes rather than the variable itself.

for instance
>  url = 'rubycademy.com'  //url refers to a string
  url = 400   //url refers now to number

### weakly typed
 it lets you mix types together in your expressions without throwing an exception. The danger? If you’re not careful you will get weird results.

- A strongly typed language is a language that is being strict about what you can do with your typed variables. (Don’t mix them… or I will throw you an error in the face!)

-A weakly typed language is the opposite. (Do what you want with your different types. Mix them all! We’ll see what happens!)


### Duck typing design
it is a term used in dynamic languages that do not have strong typing.
In Ruby, we rely less on the type (or class) of an object and more on its capabilities. Hence, Duck Typing means an object type is defined by what it can do, not by what it is
. Duck Typing refers to the tendency of Ruby to be less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it. In Ruby, we would use respond_to? or might simply pass an object to a method and know that an exception will be raised if it is used inappropriately.

**Check in irb, whether the object defines the to_str method** 
> 'A string'.respond_to?(:to str)  
=> true  
> Exception.new.respond_to?(:to_str)  
=> false  
> 4.respond_to?(:to_str)  
=> false  

The above example is the simplest example of Ruby's philosophy of "duck typing:" if an object quacks like a duck (or acts like a string), just go ahead and treat it as a duck (or a string). Whenever possible, you should treat objects according to the methods they define rather than the classes from which they inherit or the modules they include.


### Access modifiers
In Ruby the only way we can control changes to state of an Object is using instance methods. This is because instance variable that starts with ```@``` is private.
In ruby, we have the following access modifiers to be used on methods

- Public:
  We can access these methods anywhere
  Methods can be called by everyone - no access control is enforced. A class's instance methods (these do not belong only to one object; instead, every instance of the class can call them) are public by default; anyone can call them. The initialize method is always private.

class Employee
  public
  def setEmployeeId(empId)
    @employeeId = empId
  end```
  def setEmployeeName(empName)
    @employeeName = empName
  end

  def getEmployeeId
    return @employeeId
  end

  def getEmployeeName
    return @employeeName
  end

  end 


Result:
~~~

employee1 = Employee.new
employee1.setEmployeeId(5)
  employee1.setEmployeeName('Water')
  puts "Employee ID is #{employee1.getEmployeeId()}"
  puts "Employee Name is #{employee1.getEmployeeName()}"

~~~

- Private:
  In this the members can only be accessed by functions inside the class.
  methods cannot be called with an explicit receiver - the receiver is always self. This means that private methods can be called 
only in the context of the current object; you cannot invoke another object's private methods.
  ~~~ 
  class Employee
    def initialize(exp)
    @experience = exp
  end

  private
  def setSalary(salary)
    @salary = salary
  end

  public
  def setData
    if @experience == "Fresher"
      setSalary("1000 Rupees")
    elsif @experience == "One"
      setSalary("100000 Dollars")
    elsif @experience == "Ten"
      setSalary("700000000 Dollars")
    end
  end

  def getSalary
    return @salary
  end
  
  end

  ~~~

  Result:
  ~~~

  fresher = Employee.new("Fresher")
  fresher.setData()
  puts "Fresher Salary is #{fresher.getSalary()}"

  oneYearExperience = Employee.new("One")
  oneYearExperience.setData()
  puts "One Year Experience Salary is #{oneYearExperience.getSalary()}"

  tenYearExperience = Employee.new("Ten")
  tenYearExperience.setData()
  puts "Ten Year Experience Salary is #{tenYearExperience.getSalary()}"



- Protected:
  The members in protected class can only be accessed by functions inside subclass. We will see subclass concept in Inheritance.
  methods can be invoked only by objects of the defining class and its subclasses. Access is kept within the family. However, usage of protected is limited.

~~~ 

class Employee
  protected
  def setSalary(salary)
    @salary = salary
  end
  
  public
  def getSalary
    return @salary
  end
  
  end

  class Manager < Employee
    def initialize
      setSalary(1000)
    end
  end

  employee1 = Manager.new
  puts "Employee Salary is #{employee1.getSalary()}"


~~~

As Result:
~~~
Employee Salary is 1000
~~~

### Global variables ($)
Global variables in Ruby are accessible from anywhere in the Ruby program, regardless of where they are declared. Global variable names are prefixed with a dollar sign ($). For example:
```$welcome = "Welcome to Ruby Essentials"```
e of global variables is strongly discouraged. The problem with global variables is that, not only are they visible anywhere in the code for a program, they can also be changed from anywhere in the application. This can make tracking bugs difficult.

### Class variables (```@@```)
 class variable is a variable that is shared amongst all instances of a class. This means that only one variable value exists for all objects instantiated from this class. This means that if one object instance changes the value of the variable, that new value will essentially change for all other object instances.

 Another way of thinking class variables is as global variables within the context of a single class.

 Class variables are declared by prefixing the variable name with two @ characters (```@@```). Class variables must be initialized at creation time. For example:
 ```@@total = 0 ```


### Instance variables
In Ruby, we use ```@``` before a variable to signify that it’s an instance variable. This means that the variable is attached to the instance of the class.
Instance variables are similar to Class variables except that their values are local to specific instances of an object. For example if a class contains an instance variable called @total, if one instance of the object changes the current value of ```@total``` the change is local to only the object that made the change. Other objects of the same class have their own local copies of the variable which are independent of changes made in any other objects.
Instance variables are declared in Ruby by prefixing the variable name with a single ```@``` sign:
```@total = 10```
### --------------------------------------------------------------------------------------
## Concepts

### Classes
A class is blueprint for making object, when you use it to make a object
A class describe two things
1.- what that object knows about itself (
2.- what the object does 

### Objects
a strange thing in ruby is that everything is a object, a object is a fragment of code that you can execute on demant

### inheritance
in Ruby the inheritance is when anther class can use your methods and instances variables ```<``` 
if one class has some functionality, classes that inherit from it can get that functionality automatically.
1. - the class tha inherit (parent) is referred to as SuperClass
2.- the class thar recieve that inherit is called subclass

### Overriding
method overriding refers to replacing a method of parent class in its subclass.
The method definition in the subclass should have same signature as the method in the parent class
for call  the method in the superclass too you can use super keyword
-> super called without any argument i,e simply as super then the argument passed to subclass method will be passed as argument to parent class .

-> super called with empty argument i,e as super() then no argument is passed to the parent method. It is useful if the parent method set some defaults and you want to stick to that . But, it will throw error, if the parent method expecting some arguments.

-> super called with arguments i,e as super(a,b,c) then only the argument a,b,c will be passed to the parent method.

### Mixins/Modules
is a powerful way to group methods together and then share them only with particular classes that need them.

a module starts with module keyword and the module name and ends with the keyword end, the modules can't create instances of modules (for instance myModule.new it is wrong)
The mix is into the class with the keyword include ModuleName

### Polymorphism


### Arrays and hashes
a hash is a collection where each value is accessed via a key 
hash = {"key" => "value","anotherkey" => "value"}
you accesse throw its key with [] example hash["key"]
Whereas a array can use only integers as indexes, a hash can use any object as a key. That include numbers,string, and symbols.
in other words an array can only use integers as indexes, but a hash can use any object as a key.
the array's index is determined by its position within the array by square brackets and starts with the same e.i
array = [1, 2, 3]

### Blocks as parameters and lambdas
the blocks as parameters most common are when you use the loop each all that inside to | are elements like this |elemente|
anothe instances is when you pass block to a method my_method { |name, age| puts "#{name} is #{age} years old" } using the keyword yield

- A lambda is a way to define a block & its parameters with some special syntax 
to run the code inside it, you need to use the call method for that
~~~
say_something = -> { puts "This is a lambda" }
say_something.call
~~~
lambda with arguments
~~~
times_two = ->(x) { x * 2 }
times_two.call(10)
~~~


### Symbols
a simbols always begins with a colon (:), a simbol can't be changed later, they are used to refer to anything whose name doesn't change 
> . You don't have to pre-declare a symbol and they are guaranteed to be unique. There's no need to assign some kind of value to a symbol - Ruby takes care of that for you. Ruby also guarantees that no matter where it appears in your program, a particular symbol will have the same value.

### Control structutre
ruby uses the keyword end  to end signify the end of a body. e.g if .... end, while ...end
 > Ruby can control the execution of code using Conditional branches. A conditional Branch takes the result of a test expression and executes a block of code depending whether the test expression is true or false. If the test expression evaluates to the constant false or nil, the test is false; otherwise, it is true. Note that the number zero is considered true, whereas many other programming languages consider it false.

### Metaprogramming
you can write code dinamically.

### SOLID
SOLID principles
- S: single responsability principle
every module o class should have just one responsabily, "Do one thing and do it well"

- O: Open/Closed principle
In programming, the open/closed principle states that software entities (classes, modules, functions, etc.) should be open for extensions, but closed for modification

- L: Liskov substitution principle

-I — Interface segregation principle

- D - Dependency inversion principle

