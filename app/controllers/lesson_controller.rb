class LessonController < ApplicationController

  def index
    @lessons = Lesson.all
    render('/lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find_by(number: params[:number])
    render('/lessons/show.html.erb')
  end

  def new
    render('/lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    redirect_to('/lessons/')
  end

  def edit
    @lesson = Lesson.find_by(number: params[:number])
    render('/lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find_by(number: params[:number])
    if @lesson.update(params[:lesson])
      redirect_to('/lessons/')
    else
      redirect_to('/lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find_by(number: params[:number])
    @lesson.destroy
    redirect_to('/lessons/')
  end
end
