class Unicorn
    attr_reader :name, :color

    def initialize(name, color="white")
        @name = name
        @color = color
    end

    def white?
        color == "white"
    end
    
    def say(string)
        "**;* #{string} **;*"
    end
end