require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def sort
    @roster.each do |grade|
      grade[1].sort!
    end
  end

  def grade(grade)
    @roster[grade]
  end



end
