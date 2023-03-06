class QuestionsController < ApplicationController

  def ask
    @user_answer = params[:answer]
  end

  def answer
    @user_answer = params[:answer]
    if @user_answer
      if @user_answer.include? "?"
        @coach_response = "Silly question, get dressed and go to work!"
      elsif @user_answer.downcase.include? "i am going to work"
        @coach_response = "Great!"
      else
        @coach_response = "I don't care, get dressed and go to work!"
      end
    else
      @coach_response = "Go back and ask me something!"
    end
  end
end
