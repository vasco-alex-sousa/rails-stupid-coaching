class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def create
    @question = params[:question]
    # do something with @question
    redirect_to root_path
  end

  private

  def coach_answer(question)
    if question.downcase == "i am going to work"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
