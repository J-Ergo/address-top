require_relative "entry.rb"

class AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def binary_search(name)
        lower = 0
        upper = entries.length - 1
        
        while lower <= upper
            mid = (lower + upper) / 2
            mid_name = entries[mid].name
            
            if name == mid_name
                return entries[mid]
            elsif name < mid_name
                upper = mid - 1
            elsif name > mid_name
                lower = mid + 1
            end
        end
        
        return nil
    end
    
    def add_entry(name, phone, email)
        index = 0
        @entries.each do |entry|
            if name < entry.name
                break
            end
            index += 1
        end
        @entries.insert(index, Entry.new(name, phone, email))
    end
end