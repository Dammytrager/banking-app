require_relative '../shared'
require_relative '../account'

def state_01

    puts "#{STARS} Welcome to Ruby Bank #{STARS}"
    puts "Enter 0 to cancel"
    puts "\n"

    print "Enter your firstname: "
    firstname = gets.chomp

    if firstname == "0"; return "0" end

    print "Enter your lastname: "
    lastname = gets.chomp

    if lastname == "0"; return "0" end

    account = Account.new
    account.create(firstname, lastname)

    return "010";

end
