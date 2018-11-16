# code here!
require 'pry'

class School 
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster 
    @roster 
    # or you can create attribute reader up top 
  end 
  
  def add_student(name, grade)
    @roster[grade] ||= []
     
    # the array has to first be empty/created in order to add items to that array 
    # if what is in [grade] is defined and evaluates to truthy, then the right hand side of the operator is not evaluated, and no assignment takes place
    # ?? Can you swap name and grade for key > values? no b/c roster is the name 
    @roster[grade] << name
    # grade is the key you have created and name is the value
  end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) {|(grade, names), sorted_roster| sorted_roster[grade] = names.sort}
    
    # each_with_object is changing a hash to an array (grade,names) then creating a sorted roster based by grade as the key and sorted names for the values. 
  end 
    
end


   