
class School
  attr_accessor :roster, :student, :grade

  def initialize(roster)
      @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
      @roster[grade]
  end

  def sort 
      new_list = {}
      @roster.each {|k, v| new_list[k] = v.sort}
      new_list
  end
end