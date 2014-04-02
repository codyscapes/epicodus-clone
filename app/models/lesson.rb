class Lesson < ActiveRecord::Base
  validates :name, :presence => true

  def next
    @current_lesson = Lesson.find_by(number: number)
    if number < Lesson.all.length
      Lesson.find_by(number: number+1)
    else
      @current_lesson
    end
  end

  def previous
    @current_lesson = Lesson.find_by(number: number)
    if number > 1
      Lesson.find_by(number: number-1)
    else
      @current_lesson
    end
  end

end

