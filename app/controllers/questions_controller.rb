class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @message = params[:question]

    @real_answer = if @message.downcase == 'i am going to work right now!'
                     'Great!'
                   elsif @message.end_with?('?')
                     'Silly question, get dressed and go to work!'
                   else
                     "I don't care, get dressed and go to work!"
                   end
  end
end

# return @real_answer = 'Great!'if @message.downcase == 'i am going to work right now!'
# return @real_answer = 'Silly question, get dressed and go to work!' if @message.end_with?('?')
# else  @real_answer = "I don't care, get dressed and go to work!"
