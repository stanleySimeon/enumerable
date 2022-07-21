# Create a class MyList that has an instance variable @list
require_relative 'MyEnumerable'
class MyList
include MyEnumerable
    def initialize(items)
        @list = items
    end
    def my_each
        @list.each do |i|
            yield i
        end
    end
end

items = MyList.new([1, 2, 3, 4])
puts(items.all? { |i| i < 5 })
puts(items.all? { |i| i > 5 })
puts(items.any? { |i| i < 2 })
puts(items.any? { |i| i > 6 })
puts(items.filter?(&:even?))
