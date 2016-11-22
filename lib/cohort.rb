class Cohort
  attr_reader :title, :start_date, :end_date
  attr_accessor :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def career_day
    @end_date + 4
  end

  def enroll(student)
    @students << student
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = ""
    roster << "#{title}"
    students.each do |student|
      roster << "#{student.name}#{student.email}"
    end
    roster
  end
end
