class RPNCalculator
    attr_accessor :stack

    def initialize 
    @stack = [0]
    end

	def value
	    stack[-1]
	end

	def push(value)
		stack.push(value.to_f)
	end
	def pop
		value = stack.pop
		raise "calculator is empty" if value == nil
		value
	end 

	def plus
		stack.push(pop + pop)
	end

	def minus
		subs = pop
		stack.push pop - subs
	end

	def divide
		div = pop
		stack.push pop / div
	end

	def times
		stack.push pop * pop
	end

	def tokens(string)
		commands = string.split(' ')
		commands.map do |com|
			if com == '+' || com == '-'|| com == '*'|| com == '/'
				com.to_sym
			else
				com.to_f
			end
		end
	end

	def evaluate(string)
		commands = tokens(string)
		commands.each do |thing|
			if thing == :+ 
				plus
			elsif thing == :- 
				minus
			elsif thing == :* 
				times
			elsif thing == :/
				divide
			else
				push(thing)
			end
		end
		value
	end

end