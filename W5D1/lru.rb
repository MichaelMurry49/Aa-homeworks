class LRUCache
    def initialize(size)
        @lru = Array.new(size)
    end

    def count
      # returns number of elements currently in cache
      @lru.length - @lru.count(&:nil?)
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @lru.include?(el)
        @lru.delete(el)
      else
        @lru.shift
      end
      @lru << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      @lru
    end

    private
    # helper methods go here!

  end

  class ImprovedLRUCache
    def initialize(size)
        @count = 0
        @index = 0
        @size = size
        @lru = Hash.new
        @inverse_hash = Hash.new
    end

    def count
      # returns number of elements currently in cache
      @count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @inverse_hash.has_key?(el)
        @lru.delete(@inverse_hash[el])
        @inverse_hash.delete(el)
        @count -= 1
      elsif @count == @size
        @inverse_hash.delete(@inverse_hash.keys.first)
        @lru.delete(@lru.keys.first)
        @count -= 1
      end
      @lru[@index] = el
      @inverse_hash[el] = @index 
      @count += 1
      @index += 1
    end

    def show
      # shows the items in the cache, with the LRU item first
      @lru.values
    end

    private
    # helper methods go here!
  end



# LRU
johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  p johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})
  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

  
  
  # Improved LRU
  john_cache = ImprovedLRUCache.new(4)

  john_cache.add("I walk the line")
  john_cache.add(5)

  p john_cache.count # => returns 2

  john_cache.add([1,2,3])
  john_cache.add(5)
  john_cache.add(-5)
  john_cache.add({a: 1, b: 2, c: 3})
  john_cache.add([1,2,3,4])
  john_cache.add("I walk the line")
  john_cache.add(:ring_of_fire)
  john_cache.add("I walk the line")
  john_cache.add({a: 1, b: 2, c: 3})
  #john_cache.add("I walk the line")


 p john_cache.count # => returns 2
  p john_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]