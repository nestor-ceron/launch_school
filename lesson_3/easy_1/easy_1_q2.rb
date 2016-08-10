# easy_1_q2.rb

=begin
  What is the difference between ! and ? in Ruby. And explain what would happen 
  in the following senarios:

  First the ! symbol is distructive indentifier, meaning it can mutate a variable.
  The ? symbol is a boolean indentifier, and is used maninly to check whether a 
  condition is true or false. The actaul use varies on how the sybols are used. 

  1. != is the not equals operator. It should be used when you need to know that a 
  condition can be all but varaible or condition after the operator. 
  Example : number != 2 # all i want to know is that the variable number is not 2 
                          so i can continue my desired execution

  2. ! before something like !user_name just denotes that !user_name is not user_name

  3. ! after something like words.uniq! mean that it mutates or changes the contents of that 
  variable permanently. 

  4. ? Before something would mean that a teranary operator. 

  5. !! before something like !!user_name would convert the value into its boolean equivalent.

=end
  
