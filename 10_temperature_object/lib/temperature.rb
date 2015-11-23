class Temperature
	def self.from_celsius options
		new(:c => options)
	end
	def self.from_fahrenheit options
		new(:f => options)
	end
	def initialize options
	    @degrees_fahrenheit = options[:f] 
	    @degrees_celsius = options[:c]
	end
	def in_fahrenheit
		if @degrees_celsius != nil
		(@degrees_celsius*9.0/5.0) + 32 
		else
	    @degrees_fahrenheit
		end
	end 
	def in_celsius
	    if @degrees_fahrenheit != nil
		(@degrees_fahrenheit - 32) * (5.0/9.0)
		else
		@degrees_celsius
		end
	end

  def ftoc(f)
    (f-32) * (5.0/9.0)
  end

  def ctof(c)
    c * (9.0/5.0) + 32
  end


end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end