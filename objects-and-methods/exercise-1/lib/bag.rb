class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        @candies.size == 0
    end

    def count
        @candies.size
    end

    def <<(candy)
        @candies << candy
    end  
    
    def contains?(type)
        candies.any? {|candy| candy.type == type}
    end
end