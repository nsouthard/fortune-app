class PagesController < ApplicationController
  def fortune
    @title = 'What is your fortune?'
    list_of_fortunes = ["You will be rich and very successful.", 
              "You will be poor but happy in a weird way.", 
               "I'm having trouble seeing it clearly... Do you have another $20?"]
    fortune_index = rand(0..list_of_fortunes.length - 1)
    @fortune = list_of_fortunes[fortune_index]
    render 'fortune_teller.html.erb'
  end

  def numgenerator
    list_of_numbers = []
    6.times do 
      list_of_numbers << rand(1..60)
    end
    @winning_numbers = list_of_numbers.join(", ")
    render 'lotto_numbers.html.erb'
  end

  def counter
    @page_count = 1
    render 'visits.html.erb'
  end

end
