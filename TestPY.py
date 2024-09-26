# --- Basic Data Types ---
# Numbers (int, float), strings, and booleans
integer = 42
floating_point = 3.14
string = "Hello, World!"
boolean = True

# Lists, Tuples, Sets, and Dictionaries
a_list = [1, 2, 3, 'a', 'b', 'c']
a_tuple = (1, 2, 3)
a_set = {1, 2, 3}
a_dict = {'key1': 'value1', 'key2': 'value2'}

# --- Control Structures ---
# If-elif-else
if boolean:
    print("Boolean is True")
elif integer == 42:
    print("Integer is 42")
else:
    print("Neither")

asd

# For loops
for i in a_list:
    print(i)

# While loops
count = 0
while count < 3:
    print(f"Count is {count}")
    count += 1

# --- Functions ---
def add(a, b):
    """Simple function to add two numbers"""
    return a + b

# Lambda functions
multiply = lambda x, y: x * y

# Function call
result = add(5, 3)
print(f"Result of add(5, 3): {result}")

# --- List Comprehensions ---
squares = [x**2 for x in range(10)]
print(f"Squares: {squares}")

# Dictionary Comprehension
dict_comp = {x: x**2 for x in range(5)}
print(f"Dictionary comprehension: {dict_comp}")

# --- Error Handling (Try-Except) ---
try:
    division_result = 10 / 0
except ZeroDivisionError as e:
    print(f"Error: {e}")
finally:
    print("Finally block executed")

# --- Classes and Object-Oriented Programming (OOP) ---
class Animal:
    """Basic class example"""
    def __init__(self, name):
        self.name = name
    
    def speak(self):
        raise NotImplementedError("Subclass must implement this method")

class Dog(Animal):
    """Inheritance in action"""
    def speak(self):
        return f"{self.name} says Woof!"

dog = Dog("Buddy")
print(dog.speak())

# --- Decorators ---
def decorator(func):
    """Decorator example"""
    def wrapper():
        print("Before function call")
        func()
        print("After function call")
    return wrapper

@decorator
def greet():
    print("Hello from inside a decorated function!")

greet()

# --- Generators ---
def countdown(num):
    """Generator example"""
    while num > 0:
        yield num
        num -= 1

for number in countdown(3):
    print(f"Counting down: {number}")

# --- Context Managers (with statement) ---
class CustomContextManager:
    def __enter__(self):
        print("Entering the context")
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        print("Exiting the context")

with CustomContextManager():
    print("Inside the context")

# --- Advanced Features ---
# List unpacking
a, b, *rest = [1, 2, 3, 4, 5]
print(f"a: {a}, b: {b}, rest: {rest}")

# Set operations
set_a = {1, 2, 3}
set_b = {3, 4, 5}
print(f"Union: {set_a | set_b}")
print(f"Intersection: {set_a & set_b}")

# Ternary expressions
x = 10
y = 20
max_value = x if x > y else y
print(f"Max value: {max_value}")

# --- F-strings (Formatted String Literals) ---
name = "Alice"
age = 30
print(f"Name: {name}, Age: {age}")

# --- Type Annotations ---
def annotated_function(a: int, b: str) -> bool:
    return str(a) == b

print(annotated_function(10, "10"))

# --- Importing Modules and Using Libraries ---
import math

# Use of math module
print(f"Square root of 16: {math.sqrt(16)}")

# --- Metaclasses (Advanced OOP) ---
class Meta(type):
    """A metaclass example"""
    def __new__(cls, name, bases, dct):
        print(f"Creating class {name}")
        return super().__new__(cls, name, bases, dct)

class MyClass(metaclass=Meta):
    pass

# --- Static and Class Methods ---
class MyClassWithMethods:
    @staticmethod
    def static_method():
        print("This is a static method")

    @classmethod
    def class_method(cls):
        print("This is a class method")

MyClassWithMethods.static_method()
MyClassWithMethods.class_method()

# --- Coroutines (Async/Await) ---
import asyncio

async def async_func():
    print("Start async function")
    await asyncio.sleep(1)
    print("End async function")

asyncio.run(async_func())

'''
def example_function(name):
	print("Hello", name)
'''
"""
def example_function(name):
	print("Hello", name)
"""
f'''
def example_function(name):
	print("Hello", name)
'''
f"""
def example_function(name):
	print("Hello", name)
"""