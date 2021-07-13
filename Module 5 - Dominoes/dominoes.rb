class Domino
    
    attr_accessor :top, :bottom

    def initialize(top = 0, bottom = 0)
        @top = top
        @bottom = bottom
    end
    
    def pips(value)
        pip_positions = { 0 => [],
                        1 => [5], 
                        2 => [1, 9], 
                        3 => [1, 5, 9], 
                        4 => [1, 3, 7, 9], 
                        5 => [1, 3, 5, 7, 9],
                        6 => [1, 3, 4, 6, 7, 9] }
        pip_array = "         "
        pip_positions[value].each { |i| pip_array[i-1] = "*"}
        pip_array = "|" + pip_array[0..2] + "|\n|" + pip_array[3..5] + "|\n|" + pip_array[6..8] + "|"
    end

    def to_s
        puts pips(@top) + "\n-----\n" + pips(@bottom) + "\n"
    end

    def self.double_sixes
        dominoes = []
        for i in 0..6
            for j in 0..i
                dominoes << Domino.new(i, j)
            end
        end
        return dominoes
    end
end

dominoes = Domino.double_sixes
for domino in dominoes
    puts domino.to_s
end