# code here!
# require 'pry'

class School 
  def initialize(school_name)
  @school_name = school_name
  @roster = {}
  end
  
  def roster 
    @roster 
  end 
  
  def add_student(name, grade)
      @roster[grade] ||= []
     
      # the array has to first be empty/created in order to add items to that array 
      # if what is in [grade] is defined and evaluates to truthy, then the right hand side of the operator is not evaluated, and no assignment takes place
      @roster[grade] << name
    # grade is the key you have created and name is the value
  end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
      # we are pulling the grade roster and then sorting it by name 
    end 
  end
end

   