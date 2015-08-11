class SayController < ApplicationController
  def hello
    right_now = Time.now
    @current_time = right_now.stamp("9:00 pm")
    @current_date = right_now.stamp("February 1, 1999")
  end

  def goodbye
  end
end
