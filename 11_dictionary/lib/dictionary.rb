class Dictionary
    def initialize
        @entry = {}
    end
	def entries 
		@entry 
	end
	def add entry
	    if entry.is_a?(Hash)
		@entry = @entry.merge(entry)
		else
        @entry = @entry.merge({entry => nil})
		end
	end
	def keywords
	    @keywords = @entry.keys.sort
	end 
	def include? entry
		if @entry.has_key?(entry)
		true
		else
		false
		end
	end
	def find entry
	    @found = {}
		if include?(entry)
		@found = {entry => @entry[entry]}
		else
		    @matched = []
		    @entry.keys.each do |name|
		        if entry == name.chars.shift(entry.length).join
		        @matched.push name
		        end
		    end
            if @matched.count > 1		
		        @matched.each do |name|
		        @found = @found.merge({name => @entry[name]})
		        end
		    else
		        @found = {} 
		    end
		end
    @found
	end
	def printable
=begin didn't work because "each" is an undefined class apparently...
	    @list = []
	    @keywords.each do |var|
        @list.push %Q{[#{var}] "#{@entry[var]}"} 
        end
        @list.join("\n")
=end
	    @entry.map do |keyv|
            %Q{[#{keyv[0]}] "#{keyv[1]}"} 
        end.sort.join("\n")
	end 
end



