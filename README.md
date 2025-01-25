# README

# String Calculator

It is rails application of String calculator with following cases:

* Create a method that takes a string input and returns an integer result.
* The string may represent a single number or a series of numbers separated by delimiters (such as commas or newline characters)
* The method should handle edge cases, such as:
	* Empty strings (return 0).
	* Strings containing a single number (return that number).
	* Strings containing multiple numbers with commas or newlines separating them.
	* Handle multiple custom delimiter with any length.


Installation
1. **Clone the Repository**
   ```bash
   git clone https://github.com/nencywadhvana/string_calculator
2. **Navigate to the Project string_calculator**
   ```bash
   cd string_calculator
3. Install Bundle Dependencies
   ```bash
   bundle install
## Usage

 Initialize an instance of a class Calculator and call add method.

```ruby
calculator = Calculator.new
result = calculator.add("1,2,3")
puts result  # Output: 6
```
### Handle multiple new lines
```ruby
calculator.add("1\n2,3") 
puts result  # Output: 6
```

### Negative Numbers
```ruby
calculator.add("1,2,-3") # Output: Raised exception
```

### Restrict number bigger than 1000
```ruby
calculator.add("1001,2,3,2001") # Output: 5
```

### Handle Custom delimiter
```ruby
calculator.add("//;\n1;2") # Output: 3
```
### Handle delimiter of any length
```ruby
calculator.add("//[***]\n1***2***3") # Output: 6
```

### Handle multiple delimiter
```ruby
calculator.add("//[*][%]\n1*2%3") # Output: 6
```

### Handle multiple delimiter of any length
```ruby
calculator.add("//[***][%%]\n1***2%%3") # Output: 6
```