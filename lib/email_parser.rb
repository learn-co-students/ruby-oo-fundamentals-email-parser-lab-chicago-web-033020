# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    # initialize method
    def initialize(emails)
        @emails = emails
    end

    def parse
        # parse the emails into an array
        email_arr = @emails.split(/[,\s]+/)
        email_arr.uniq
    end

end

