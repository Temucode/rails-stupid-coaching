class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if params[:question] == 'I am going to work'
      @great = 'Great!'
    elsif params[:question].end_with?('?')
      @great = 'Silly question, get dressed and go to work!'
    else
      @great = 'I don\'t care, get dressed and go to work!'
    end
  end
end
