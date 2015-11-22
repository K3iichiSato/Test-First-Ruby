def echo thing
	thing
end

def shout thing
	thing.upcase
end

def repeat(thing, limes=2)
    [thing] * limes * ' '
end

def start_of_word(thing, num)
	thing.chars[0,num].join
end

def first_word thing
	thing.split(' ')[0]
end

def titleize thing
	array = []
	thing.split(' ').each do |word|
    if word != "and" && word != "over" && word != "the" 
    array.push word.capitalize
    else
    array.push word
    end
	end
	array[0] = array[0].capitalize
	array.join(' ')
end
