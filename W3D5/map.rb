class Map
    def initialize
        @map = Array.new {Array.new(2)}
    end

    def set(key, value)
        index = pair_index?(key)
        if !index
            @map << [key, value]
            [key,value]
        else
            @map[index] = [key,value]
        end
    end

    def get(key)
        @map.each do |sub|
            if sub[0] == key
                return sub[1]
            end
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |sub, index|
            if sub[0] == key
                return @map.delete_at(index)
            end
        end
        nil
    end

    def show
        p @map
    end
    
    private
    def pair_index?(key)
        @map.each_with_index do |sub, index|
            if sub[0] == key
                return index
            end
        end
        nil
    end
end