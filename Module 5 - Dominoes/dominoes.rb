class Domino
    
    attr_accessor :top, :bottom

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
end