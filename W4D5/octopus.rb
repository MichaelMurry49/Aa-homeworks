class NOctopus
    def eatFish(fish)
        max = 0
        mFish = ""
        (0...fish.length).each do |i|
            cur_len = fish[i].length
            if cur_len > max
                max = cur_len
                mFish = fish[i]
            end
        end
        mFish
    end
end

class NLogNOctopus
    def eatFish(fish)
        my_merge_sort(fish)[0]
    end

    def my_merge_sort(fish)
        return fish if fish.empty?
        return fish if fish.length == 1
        mid = fish.length/2
        left = my_merge_sort(fish[0...mid])
        right = my_merge_sort(fish[mid..-1])
        my_merge(left, right)
    end

    def my_merge(left, right)
        merge_array = []
        until left.empty? || right.empty?
            if left.first.length > right.first.length
               merge_array << left.shift
            else
               merge_array << right.shift
            end
        end
        merge_array + left + right
    end      
end

class N2Octopus
    def eatFish(fish)
        
        (0...fish.length).each do |i|
            longest = true
            (i...fish.length).each do |j|
                longest = false if fish[j].length > fish[i].length
                break if longest == false
                return fish[i] if j == fish.length - 1
            end
        end
    end
end

class SlowDance #Array dance
    def danceLeg(direction, array_tiles)
        array_tiles.each_with_index do |tile, i|
            return i if array_tiles[i] == direction
        end
        return nil
    end
end

class FastDance # Hash dance
    def danceLeg(direction, hash_tiles)
        hash_tiles[direction]
    end
end

