class Timer
	attr_accessor :seconds
	def initialize
	@seconds = 0 
	end
	def time_string
	hour = @seconds / 60/ 60
	@seconds = @seconds - hour*60*60
	mins = @seconds / 60 
	@seconds = @seconds - mins*60 
	secs = @seconds
		if hour < 10
			hour = "0#{hour}"
		else
			hour = "#{hour}"
		end
		if mins < 10
			mins = "0#{mins}"
		else
			mins = "#{mins}"
		end
		if secs < 10
			secs = "0#{secs}"
		else
			secs = "#{secs}"
		end

		"#{hour}:#{mins}:#{secs}"
	end
end