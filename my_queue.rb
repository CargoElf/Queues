require_relative "queue"

class MyQueue

  def initialize
    @queue = nil
    @size = 0
  end

  def enqueue(element)
    if @queue == nil
      @queue = Queue.new(element)
    else
      @queue.link(Queue.new(element))
    end
    increment_size
  end

  def dequeue
  end

  def peel
  end

  def empty?
    @size < 1
  end

  private

  def increment_size
    @size += 1
  end

end
