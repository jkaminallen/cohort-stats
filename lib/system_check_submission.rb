class SystemCheckSubmission
  attr_reader :solution, :student
  attr_accessor :submission 

  def initialize(solution, student)
    @solution = solution
    @student = student
    @submission = submission
  end

  def solution
    "#{@solution}"
  end

  def graded?
    if submission.graded?
      return true
    else
      false
    end
  end
end

class InvalidGradeError < StandardError
end
