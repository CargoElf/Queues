require_relative "queue"

#need to know the first and last
#last in links to the pervious last in


class MyQueue

  def initialize
    @first = nil
    @last = nil
    @size = 0
  end

  def enqueue(element)
    if empty?
      @first = Queue.new(element)
      @last = @first
    else
      new_queue_item = Queue.new(element)
      @last.next_link(new_queue_item)
      new_queue_item.previous_link(@last)
      @last = new_queue_item
    end
    increment_size
  end

  def dequeue
    return nil if empty?
    to_dequeue = self.peel
    @first = @first.next
    decriment_size
    to_dequeue
  end

  def peel
    return nil if empty?
    @first.element
  end

  def empty?
    @size < 1
  end

  private

  def increment_size
    @size += 1
  end

  def decriment_size
    @size -= 1
  end

end
