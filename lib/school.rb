# code here!
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   @roster
  # end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort
    new_hash = {}
    roster.sort.to_h.each {|key, value| new_hash[key] = value.sort}
    roster = new_hash
    roster
  end
end
