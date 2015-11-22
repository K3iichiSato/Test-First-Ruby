def measure n = 1
total_time = 0
   n.times do
   start = Time.now
   yield
   finish = Time.now
  	total_time = total_time + (finish - start) 
	end
	total_time / n
end