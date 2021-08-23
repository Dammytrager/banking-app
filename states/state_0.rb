require_relative '../shared'

def state_0
    puts "#{STARS} Welcome to Ruby Bank #{STARS}"
    puts "\n"
    puts "1. Create an account"
    puts "2. Select account"
    puts "\n"
    print "Select an option: "

    option = gets.chomp

    if option != "1" && option != "2"
        return "0"
    else
        return "0" + option;
    end

end
