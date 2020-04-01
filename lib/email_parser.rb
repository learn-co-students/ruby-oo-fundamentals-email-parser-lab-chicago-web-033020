# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_address
    def initialize(email)
      @email_address = email
    end
    
    def parse  
      arr = []
      # spliting on whitespace+,+whitespace OR just whitespace
      @email_address.split(/\s*,\s*|\s/).each do |email_str|
        arr << email_str unless arr.include?(email_str)
      end
      arr
    end
  
end