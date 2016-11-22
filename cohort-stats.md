## Instructions

You have been tasked with creating an Object-Oriented system to keep track of the happenings at a certain educational institution. Based on a product planning session, you have determined these are the classes you will need:

* `Student`
* `SystemCheckSubmission`
* `SystemCheck`
* `Cohort`

### Getting Set Up

Run the following commands from your terminal:

```
$ et get cohort-stats
$ bundle install
$ rspec spec
```

Let the tests guide your development.

## Meeting Expectations Requirements

* All of the following test files must be passing without changing the test code. Write the code to make the following test files pass:
    1. `spec/lib/01_student_spec.rb`
    2. `spec/lib/02_system_check_submission_spec.rb`
    3. `spec/lib/03_system_check_spec.rb`
    4. `spec/lib/04_cohort_spec.rb`
* Once the tests in these files pass, please submit your code by running `et submit`.

### Tips

* Focus on one failing test at a time:
  - Add the line `--fail-fast` to the `.rspec` file if you would like the test suite to stop running on the first failed test.
  - Or to run one spec file at a time type in `rspec` followed by the path to the test file (i.e. `rspec spec/lib/01_student_spec.rb`).
* Complete the tests files in the order listed above.
* RSpec will tell you exactly what to do. Use the following workflow:
  - Run the test suite
  - Read all parts of the error message closely
  - Do the simplest implementation (without "hard coding") that corrects the error
  - Repeat
* **DO NOT** start the requirements for exceeding expectations before you have completed the requirements necessary for meeting expectations.

## Exceeding Expectations Requirements
* In order to get exceeding expectations write the code to make the following test files pass:
    1. `spec/lib/05_exceeds_expectations_system_check_submission_spec.rb`
    2. `spec/lib/06_exceeds_expectations_system_check_spec.rb`
    3. `spec/lib/07_exceeds_expectations_cohort_spec.rb`
* Note, these are currently the pending tests. To start this section, delete line 5 from these spec files that says `pending do` along with the corresponding `end`.
* These need to pass with implementation that does not have "hard coded data". Once these tests pass, you should get `0 failures` when you run `rspec`.

In addition, write a `Lesson` class, then write a the following classes that will inherit from the `Lesson` class: `Article`, `Challenge`, and `Video`. Update the `System Check` class to also inherit from the `Lesson` class.

* The `Lesson` class should have `name` and `body` instance variables, which should be readable and writeable.
* The `Lesson` class should have a `#submittable?` method that returns `false`.
* However, the `Challenge` and `SystemCheck` classes are submittable. Ensure that calling `#submittable?` on these objects returns `true`.
* A `SystemCheck` is the only class that should have an average grade.
* A `Video` class has a `url` instance variable that is readable, but not writeable.
* Write RSpec tests for these functionalities.

__Note__: Make sure to refactor the `SystemCheck` class and RSpec test so that `Lesson` objects have the appropriate functionality.
