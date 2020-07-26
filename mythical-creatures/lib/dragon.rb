class Dragon
    attr_reader :name, :color, :rider, :hunger

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hunger = []
    end

    def hungry?
        true unless hunger.size > 2
    end

    def eat
        hunger.push("food")
    end
end