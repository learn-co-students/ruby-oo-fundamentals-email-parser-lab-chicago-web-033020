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
      email_a = self.email_address.split(/\s*,\s*|\s/)   
      arr = []
      email_a.each do |e|
        arr << e unless arr.include?(e)
      end
      arr
    end
  
end