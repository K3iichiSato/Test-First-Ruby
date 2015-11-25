class XmlDocument
	def initialize(indent = false)
		@indent = indent 
		@indent_level = 0
	end
	def method_missing(method_name, attr={}, &block)
	    s=''
	    indenter = "  "
	    s << (indenter * @indent_level) if @indent
	    s << "<#{method_name}"
	    if attr != {}
	    	attr.each_pair do |name, value|
	    	s << " #{name}='#{value}'"
			end
    	end
    	if block
    		s << ">"
    		s << "\n" if @indent
    		@indent_level += 1
    		s << yield
    		@indent_level -= 1 
    		s << (indenter * @indent_level) if @indent
    		s << "</#{method_name}>"
    		s << "\n" if @indent
    		else
        	s << "/>"
        	s << "\n" if @indent
    	end
    	s
	end
end
