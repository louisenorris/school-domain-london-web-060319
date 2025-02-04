require 'pry'

class School

    attr_accessor :name, :roster, :class, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student
    #  binding.pry
    end

    def grade(grade)
      roster[grade]
    end

    def sort
      sorted_students = {}
      roster.each do |grade, students|
        sorted_students[grade] = students.sort
      end
      sorted_students
    end

end
