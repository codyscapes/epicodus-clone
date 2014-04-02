require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name}
  it { should validate_presence_of :number}
  it { should belong_to :section}

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      current_lesson.next.should eq next_lesson
    end
    it 'returns the current lesson if the current lesson is the highest lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      last_lesson = Lesson.create({:name => 'lesson10', :number => 10})
      # puts next_lesson.next.number
      next_lesson.next.should eq last_lesson
    end
  end
    context '#previous' do
    it 'returns the lesson with the next-lowest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      # puts next_lesson.previous.number
      next_lesson.previous.should eq current_lesson
    end
      it 'returns the same lesson when the lesson is 1' do
      current_lesson = Lesson.create({:name => 'lesson1', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2})
      current_lesson.previous.should eq current_lesson
    end
  end
end
