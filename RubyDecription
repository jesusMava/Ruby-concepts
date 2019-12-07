###Interpreted language virtual machine
A Ruby interpreter is any program that is able to interpret source code written in the Ruby language.

 **Ruby interpreters**: 
>
 - YARV
 - Ruby MRI/CRuby
 - JRuby
 - Rubinius.
 
###Virtual Machine (vm)
 A VM is a program running on your computer that emulates a separate computer to have better predictability and stability. This ensures that all computers can run Ruby regardless of the specific machine code they use.
Ruby virtual machine is a virtual machine (program) that executes ruby code. Usually a ruby interpreter.

###Dynamically typed languages
In a dynamically typed language, variables’ types are dynamic.
This means that when you associate a variable to a type then you can change it whenever you want.
Actually, typing is associated with the value it assumes rather than the variable itself.

for instance
>
url = 'rubycademy.com'  //url refers to a string
url = 400   //url refers now to number

### weakly typed
 it lets you mix types together in your expressions without throwing an exception. The danger? If you’re not careful you will get weird results.

- A strongly typed language is a language that is being strict about what you can do with your typed variables. (Don’t mix them… or I will throw you an error in the face!)

-A weakly typed language is the opposite. (Do what you want with your different types. Mix them all! We’ll see what happens!)


###Duck typing design
it is a term used in dynamic languages that do not have strong typing.
In Ruby, we rely less on the type (or class) of an object and more on its capabilities. Hence, Duck Typing means an object type is defined by what it can do, not by what it is
. Duck Typing refers to the tendency of Ruby to be less concerned with the class of an object and more concerned with what methods can be called on it and what operations can be performed on it. In Ruby, we would use respond_to? or might simply pass an object to a method and know that an exception will be raised if it is used inappropriately.

# Check in irb, whether the object defines the to_str method  
> 'A string'.respond_to?(:to str)  
=> true  
> Exception.new.respond_to?(:to_str)  
=> false  
> 4.respond_to?(:to_str)  
=> false  

The above example is the simplest example of Ruby's philosophy of "duck typing:" if an object quacks like a duck (or acts like a string), just go ahead and treat it as a duck (or a string). Whenever possible, you should treat objects according to the methods they define rather than the classes from which they inherit or the modules they include.


###Access modifiers
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

~~~

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

###Global variables ($)
Global variables in Ruby are accessible from anywhere in the Ruby program, regardless of where they are declared. Global variable names are prefixed with a dollar sign ($). For example:
```$welcome = "Welcome to Ruby Essentials"```
e of global variables is strongly discouraged. The problem with global variables is that, not only are they visible anywhere in the code for a program, they can also be changed from anywhere in the application. This can make tracking bugs difficult.

###Class variables (```@@```)
 class variable is a variable that is shared amongst all instances of a class. This means that only one variable value exists for all objects instantiated from this class. This means that if one object instance changes the value of the variable, that new value will essentially change for all other object instances.

 Another way of thinking class variables is as global variables within the context of a single class.

 Class variables are declared by prefixing the variable name with two @ characters (```@@```). Class variables must be initialized at creation time. For example:
 ```@@total = 0 ```


###Instance variables
In Ruby, we use ```@``` before a variable to signify that it’s an instance variable. This means that the variable is attached to the instance of the class.
Instance variables are similar to Class variables except that their values are local to specific instances of an object. For example if a class contains an instance variable called @total, if one instance of the object changes the current value of ```@total``` the change is local to only the object that made the change. Other objects of the same class have their own local copies of the variable which are independent of changes made in any other objects.
Instance variables are declared in Ruby by prefixing the variable name with a single ```@``` sign:
```@total = 10```