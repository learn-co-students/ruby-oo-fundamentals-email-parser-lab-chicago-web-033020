require 'pry'

class EmailAddressParser
    attr_accessor :emails

    def initialize(string)
        @emails = string
    end

    
    def parse
        no_comma = emails.delete ","
        array = no_comma.split
        final = array.uniq
    end
end

#binding.pry