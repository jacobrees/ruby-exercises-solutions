class Vampire
    attr_reader :name, :pet, :hunger

    def initialize(name, pet="bat")
        @name = name
        @pet = pet
        @hunger = []
    end
    
    def thirsty?
        hunger.empty?
    end

    def drink
        hunger.push("blood")
    end
end