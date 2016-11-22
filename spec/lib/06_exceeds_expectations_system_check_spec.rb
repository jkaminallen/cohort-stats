#For Exceeds Expecations
require "spec_helper"

describe SystemCheck do
    let(:jane) { Student.new("Jane Smith", "jane.smith@gmail.com") }
    let(:john) { Student.new("John Smith", "john.smith@gmail.com") }
    let(:jack) { Student.new("Jack Smith", "jack.smith@gmail.com") }

    describe "#average_grade" do
      it "returns the average score for all submissions" do
        submission_1 = SystemCheckSubmission.new("binding.pry", jane)
        system_check.add_submission(submission_1)
        submission_1.assign_grade(Grade::MEETS_EXPECTATIONS)

        submission_2 = SystemCheckSubmission.new("require 'sinatra'", john)
        system_check.add_submission(submission_2)
        submission_2.assign_grade(Grade::EXCEEDS_EXPECTATIONS)

        submission_3 = SystemCheckSubmission.new("puts 'steak'", jack)
        system_check.add_submission(submission_3)
        submission_3.assign_grade(Grade::DOES_NOT_MEET_EXPECTATIONS)

        sum = Grade::MEETS_EXPECTATIONS
        sum += Grade::EXCEEDS_EXPECTATIONS
        sum += Grade::DOES_NOT_MEET_EXPECTATIONS
        average = sum / 3.0

        expect(system_check.average_grade).to eq(average)
      end
    end

    describe "#did_student_complete_system_check?" do
      it "returns 'true' if a submission exists for that student" do
        system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2015/08/28"))
        submission = SystemCheckSubmission.new("Bounding Box", jane)
        system_check.add_submission(submission)

        expect(system_check.did_student_complete_system_check?(jane)).
          to eq(true)
      end

      it "returns 'false' if submission does not exist for that student" do
        system_check = SystemCheck.new("Grocery List using Postgres", Date.parse("2015/08/28"))
        expect(system_check.did_student_complete_system_check?(jack)).
          to eq(false)
      end
    end
end
