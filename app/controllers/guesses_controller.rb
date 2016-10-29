class GuessesController < ApplicationController
def index

  @first_number = params["one"].to_i
  @second_number = params["two"].to_i
  @third_number = params["three"].to_i

  if @first_number == nil
      render("guesses/index.html.erb")
  elsif @first_number < @second_number && @second_number < @third_number
  @outcome = "Yes!"
  elsif @outcome = "No."
  end


g = Guess.new
g.first_num = params["one"]
g.second_num = params["two"]
g.thurd_num = params["three"]
g.outcome = @outcome
g.save

@list = Guess.all


end


def answer
  # params = {"q" => "Increasing numbers"}

  @user_answer = params["q"]

  render("guesses/answer.html.erb")
end
end
