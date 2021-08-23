require_relative '../shared'
require_relative '../account'

def state_02

    puts "#{STARS} Welcome to Ruby Bank #{STARS}"
    puts "Enter 0 to cancel"
    puts "\n"

    print "Enter your account no: "
    account_no = gets.chomp

    if account_no == "0"; return "0" end

    account = Account.new
    account.create(firstname, lastname)

    return "010";

end
