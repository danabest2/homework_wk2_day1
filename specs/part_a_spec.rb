require('minitest/autorun')
require('minitest/rg')

require_relative('../part_a.rb')

class TestStudent < MiniTest::Test

  def setup

    @student1 = Student.new('John', 'E32')
    @student2 = Student.new('Mary', 'E31')

  end

    def test_student_name
      assert_equal('John', @student1.name())
    end



    def test_student_cohort
      assert_equal('E32', @student1.cohort())

    end

    def test_set_student_name
      @student1.name = 'Mary'
      assert_equal('Mary', @student1.name())
    end

    def test_set_student_cohort
      @student1.name = 'E30'
      assert_equal('E30', @student1.name())
    end

    def test_greet_student__E32
      @student1.greet_student()
      assert_equal('I am in this cohort', @student1.greet_student)

    end

    def test_greet_student__not_E32
      @student2.greet_student()
      assert_equal('I am in another cohort', @student2.greet_student)
    end

    def test_student_fav_language
      assert_equal('I love Ruby', @student2.fav_language("Ruby"))
    end

  end
