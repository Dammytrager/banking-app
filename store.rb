require 'json'

class Store

    attr_accessor :store_exist

    def initialize
        @store_exist = File.exist?('store.json')
    end

    def new_account(firstname, lastname)

        account_obj = {
            'id': 1,
            'firstname': firstname,
            'lastname': lastname,
            'balance': 1000
        }

        if !@store_exist

            file = File.new('store.json', 'w')
            file.puts JSON.pretty_generate([account_obj])
            file.close

        else

            file = File.read('store.json');
            storeArray = JSON.parse(file)
            account_obj[:id] = storeArray.length + 1
            storeArray.append account_obj
            puts storeArray
            File.open('store.json', 'w') do |f|
                f.puts JSON.pretty_generate(storeArray)
            end

        end
    end
end
