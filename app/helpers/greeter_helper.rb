module GreeterHelper
	def formattedTime(time)  #This function is available in all views not just for greeter views
		time.strftime("%I:%M%p")
	end
end
