# Create a module MyEnumerable that implements the following methods.
module MyEnumerable
    def all?
        @list.each do |i|
            return false unless yield i
        end
        true
    end
    def any?
        @list.each do |i|
            return true if yield i
        end
        false
    end
    def filter?
        @list.select do |i|
            yield i
        end
    end
end
