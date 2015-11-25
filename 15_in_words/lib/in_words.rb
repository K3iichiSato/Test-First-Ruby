class Fixnum 
	def in_words
		number = self
		ones = ['zero','one','two','three','four','five','six','seven','eight','nine']
		teens = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
		tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	
		numdigits = number.to_s.length 
		display = ''

		auto = Proc.new {|number,zero,name|
			display << number.to_s[0..-zero].to_i.in_words
			display << " #{name}"
			right = number.to_s[-(zero-1)..-1]
			allzero = true
			right.chars.each do |n|
    			if n != '0'
        		allzero = false
        		break
    			end
			end
				if !allzero
					display << ' ' + right.to_i.in_words
				end
		}

		if numdigits==1 
		display << ones[number]
		elsif numdigits==2
			if number < 20
				display << teens[number-10]
			else
				display << tens[(number/10) - 1]
				if number.to_s[-1] != '0'
					display << ' ' + ones[number.to_s[-1].to_i]
				end 
			end
		elsif numdigits == 3
			display << ones[number.to_s[0].to_i]
			display << " hundred"
				if number.to_s[-2..-1] != '00'
					display << ' ' + number.to_s[-2..-1].to_i.in_words
				end
		elsif numdigits >= 4 && numdigits < 7
			auto.call(number,4,'thousand')
		elsif numdigits >= 7 && numdigits < 10
			auto.call(number,7,'million')
		elsif numdigits >= 10 && numdigits < 13
			auto.call(number,10,'billion')
		elsif numdigits >= 13 && numdigits < 16
			auto.call(number,13,'trillion')
		end
		display

	end
end