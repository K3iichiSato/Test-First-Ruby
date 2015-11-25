class Fixnum 
	def in_words
		number = self
		ones = ['zero','one','two','three','four','five','six','seven','eight','nine']
		teens = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
		tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	

		if number< 10
		ones[number]
		elsif number>=10 && number<20
		teens[number-10]
		elsif number>=20 && number<100
		tenz = number/10
		tenw = tens[tenz-1]
		left = number % 10
			if left > 0
			tenw + ' ' + ones[left]
			else
			tenw
			end
		else
		hundz = number/100
		ones[hundz] + ' ' + 'hundred'
		end
		

	end
end