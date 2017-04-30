class PagesController < ApplicationController
  def fortune
    @title = 'What is your fortune?'
    render 'fortune_teller.html'
  end

  def numgenerator
    @title = 'Lotto numbers'
    6.times do |number| 
      number = rand(61)
      puts number
    end
    render 'lotto_numbers.html'
  end
end
