#Every new request is going to crete new instance varibles
class GreeterController < ApplicationController
  def hello
  end

  def goodbye
  	@random_names = ["prit", "pari", "jasi"]
  	@name = @random_names.sample
  	@time = Time.now
  	@times_displayed ||= 0
  	@times_displayed += 1

  end

end
