class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end


  # def set_student_name(new_name)
  #   @name = new_name
  # end
  #
  # def set_student_cohort(new_cohort)
  #   @cohort = new_cohort
  # end


  def greet_student()
    if @cohort == 'E32'
      return 'I am in this cohort'
    else
      return 'I am in another cohort'
    end
  end

  def fav_language(name)
    return "I love #{name}"
  end

end
