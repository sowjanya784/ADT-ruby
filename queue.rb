class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

q = Queue.new
q.enqueue(2)
q.enqueue(3)
q.enqueue 4

p q

p q.peek

q.dequeue

p q
