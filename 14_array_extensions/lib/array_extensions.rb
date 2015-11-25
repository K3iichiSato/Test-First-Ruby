class Array
	def sum
	    result = 0
	    self.each do |what|
	        result += what 
	    end
	    result
	end

	def square
		self.map { |e| e**2 }
	end

	def square!
		self.map! { |e| e**2 }
	end
end
