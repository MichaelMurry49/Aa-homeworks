class Queue
    # Creates empty queue
    def initialize
        @queue = []
    end

    # Adds an element to the back of the queue
    def enqueue(el)
        @queue << el
    end

    # Removes first element from queue and returns it
    def dequeue
        @queue.shift
    end

    # Returns first element in queue
    def peek
        @queue.first
    end
end