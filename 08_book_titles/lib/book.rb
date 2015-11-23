class Book
    attr_accessor :title
    def title
    	@title = @title.split(' ')
    	a = []
    	@title. each do |tit|
    	    
    	def exception word
    	    exceptions = ['and', 'the', 'a', 'an', 'in', 'of']
    	    status = false
    	    exceptions.each do |ex|
    	        if ex == word
    	            status = true
    	            break
    	        end
    	    end
    	    status
    	end 
    	    
    	if !exception(tit)
    	    tit = tit.capitalize
    	end
    	a.push tit
    	end
    	a[0] = a[0].capitalize
    	a.join(' ')
    end
end
