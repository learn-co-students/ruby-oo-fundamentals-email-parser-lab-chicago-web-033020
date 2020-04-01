# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    #setter/reader
    attr_reader :emails

    #default
    def initialize(emails)
        @emails = emails
    end

    #"splits" emails and contains them in array
    def parse
        emails.split(/, | /).uniq
    end

end

# store emails in variable 
# email_addresses = "john@doe.com, person@somewhere.org"

# new class instance 
# parser = EmailAddressParser.new(email_addresses)
 
# calling parse method to actually break up and store the emails in arrays
# parser.parse