class DrinkingController < ApplicationController
  def bottles
    @bottles = params[:number_of_bottles].to_i

  end

  def pass
    @bottles = params[:number_of_bottles].to_i
    @bottles_less_one = @bottles - 1
    end
  end
end
