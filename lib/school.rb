# code here!

class School
    attr_accessor :roster, :student, :grade

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]
          @roster[grade] << student
        else
          @roster[grade] = []
          @roster[grade] << student
        end
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
