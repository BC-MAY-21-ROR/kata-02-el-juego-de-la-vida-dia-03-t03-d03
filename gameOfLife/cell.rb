class Cell
    attr_accessor :isAlive
    attr_accessor :locationX
    attr_accessor :locationY

    def initialize
        @isAlive = false
        @locationX = 0
        @locationY = 0
    end

    def cambioCell(estado,x,y)
        @isAlive = estado
        @locationX = x
        @locationY = y
    end
end