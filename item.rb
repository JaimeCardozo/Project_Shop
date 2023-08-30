class Item
    attr_accessor :mark, :position
    def initialize(name, position)
        @name = name
        @position = position
        @mark = [] 
    end
    def to_s()
        "#{@position}-#{@mark} #{@name}"
    end    
end