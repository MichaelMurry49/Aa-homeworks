 class TestLRUCache
    def initialize(size)
        @count = 0
        @size = size
        @hash = Hash.new
    end

    def count
      # returns number of elements currently in cache
      @count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @hash.has_key?(el)
        @hash.delete(el)
        @count -= 1 
      elsif @count == @size
        @hash.delete(@hash.keys.first)
        @count -= 1
      end
      @hash[el] = true 
      @count += 1
    end

    def show
      # shows the items in the cache, with the LRU item first
      @hash.keys
    end

    private
    # helper methods go here!
  end

  # Improved LRU
  john_cache = TestLRUCache.new(4)

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