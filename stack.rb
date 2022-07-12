class Stack
    def initialize
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.delete_at(-1)
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.last
    end
end

  s1 = Stack.new

  s1.push(2)
  s1.push(3)

  p s1

  p s1.peek

  s1.pop
  p s1
