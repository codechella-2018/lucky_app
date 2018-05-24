class Api::ExamplesController < ApplicationController
	def fortune_action
      fortunes = [
        "You will become rich.",
        "You will become poor.",
        "You will need to pay up front... for you will die in 7 days."
      ]
       @fortune = fortunes.sample

      render 'fortune_view.json.jbuilder'
    end

    def lotto_action
      @numbers = []
      6.times do
        @numbers << rand(1..60)
      end

      render 'lotto_view.json.jbuilder'
    end

    def counter_action
      @count = 0
      @count += 1 # This doesn't work! Can you explain why?

      render 'counter_view.json.jbuilder'
    end
end
