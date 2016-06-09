class School

  def initialize(school_name)
    @school_name = school_name
    @roster_hash = {}
    # { 9 => ["student 1", "student 2", "student 3"]}
  end


  def roster
    return @roster_hash
  end

  def add_student(student_name, grade)
    @roster_hash[grade] ||= []
    @roster_hash[grade] << student_name
  end

  def grade(grade)
    return @roster_hash[grade]
  end

  def sort
    @roster_hash.each do |grade, student|
      student.sort!
    end
  end

end

school = School.new("Bayside High School")

