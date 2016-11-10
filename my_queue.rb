require_relative "queue"

class MyQueue

  def initialize
    @queue = nil
  end

  def enqueue(element)
    if @queue == nil
      @queue = Queue.new(element)
    else
      @queue.link(Queue.new(element))
    end
  end

  def dequeue
  end

  def peel
  end

  def empty?
  end

end
