class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true
  belongs_to :section
  default_scope order(:number)

  def next
    if number < Lesson.all.last.number
      Lesson.all.detect {|lesson| lesson.number > number}
    else
      Lesson.find_by(number: number)
    end
  end

  def previous
    if number == 1
      Lesson.find_by(number: number)
    else
      Lesson.all.reverse.detect {|lesson| lesson.number < number}
    end
  end

# Working code that did not use detect or default scope --
  # def next
  #   ## detect ruby method
  #   ## Find lessons by order based on number
  #   @lessons_order = Lesson.order('number')
  #   ## Get current Lesson object
  #   @current_lesson = Lesson.find_by(number: number)
  #   ## current lesson position in rturned ActivRecord object array
  #   @current_lesson_position = @lessons_order.map(&:number).index(number)
  #   if number < @lessons_order.last.number
  #     ## look through ordered lessons returned from ActiveRecord, return one object
  #     ## [limit] after the current object begins [offset]
  #     @lessons_order.limit(1).offset(@current_lesson_position+1).first
  #   else
  #     @current_lesson
  #   end
  # end

  # def previous
  #   @lessons_order = Lesson.order('number')
  #   @current_lesson = Lesson.find_by(number: number)
  #   @current_lesson_position = @lessons_order.map(&:number).index(number)
  #   if number == 1
  #     @current_lesson
  #   else
  #     @lessons_order.limit(1).offset(@current_lesson_position-1).first
  #   end
  # end

end

