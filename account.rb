require './store'

class Account
    attr_accessor :firstname, :lastname, :balance, :store

    def initialize
        @store = Store.new
    end

    def create(firstname, lastname)
        @store.new_account(firstname, lastname)
    end

    def find(account_no)

    end
end
