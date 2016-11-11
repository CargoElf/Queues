class Queue

  attr_reader :element

  def initialize(element)
    @element = element
    @link_forward = nil
    @link_back = nil
  end

  def next_link(element)
    @link_forward = element
  end

  def previous_link(element)
    @link_back = element
  end

  def unlink
    next_in_queue = @link_forward
    @link_forward = nil
    p next_in_queue
    # next_in_queue.link_back = nil
    next_in_queue
  end

  def next
    @link_forward
  end

end
