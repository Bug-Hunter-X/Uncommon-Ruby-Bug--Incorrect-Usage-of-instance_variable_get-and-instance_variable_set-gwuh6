```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value #=> 20

# The issue happens when using instance_variable_get and instance_variable_set with a symbol
puts my_object.instance_variable_get(:@value) #=> 20

#This works well
my_object.instance_variable_set('@value',30)
puts my_object.value #=> 30
```