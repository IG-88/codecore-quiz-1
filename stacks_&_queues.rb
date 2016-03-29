# A stack is FILO(First In Last Out) while a queue is FIFO(First In First Out).

# They are both examples of data structures.

# A stack is like a pile of dishes that you have to wash, the first dish in the
# stack is the last one to be washed as the pile(stack) grows.

# A queue is like a line of people waiting to buy coffee, the first person in
# order is the first one served, while the last in line is the last served.

class Stack
  def initialize
    @stack = []
  end

  def add(task)
    stack_task = task
    @stack.push (stack_task)
  end

  def remove(task)
    @stack.pop
  end
end

class Queue
  def intialize
    @stack = []
  end

  def add(task)
    stack_task = task
    @stack.unshift(stack_task)
  end

  def remove
    @stack.shift
  end
end
