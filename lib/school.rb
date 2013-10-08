class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
    
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = @roster.each do |grades, students|
      students.sort!
    end
  end 

end 