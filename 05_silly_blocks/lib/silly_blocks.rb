def reverser
  word = yield  
  word = word.split(' ')
  array = []
  word.each do |variable|
  	array.push variable.reverse
  end
  array.join(' ')
end

def adder add=1
	yield + add
end

def repeater n=1, &block
	n.times {yield}
	block_was_exectued = true
end