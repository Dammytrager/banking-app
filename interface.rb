system 'cls'

require './states/state_0'
require './states/state_01'

class Interface
    attr_accessor :state

    def initialize
        @state = '01'
    end

    def go_to_state(state)
        case state
        when '0'
            next_state = state_0
            go_to_state(next_state)
        when '01'
            next_state = state_01
            go_to_state(next_state)
        else
            puts "\n"
            puts "You have entered a wrong input!"
            puts "#{state}"
        end
    end

    def start
        go_to_state(@state)
    end

    def to_s
        "#{state}"
    end

end

app = Interface.new
app.start
