class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params["query"].capitalize
    if @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
