require_relative "../my_queue"

RSpec.describe MyQueue do

  let(:q) { MyQueue.new }

  def show_queue(queue_array = [])
    return queue_array if q.empty?
    p queue_array << q.dequeue
    show_queue(queue_array)
  end

  def set_queue(i = 1)
    return q if i == 5
    q.enqueue(i)
    i += 1
    set_queue(i)
  end

  describe "Enqueue" do
    it "adds an element to the queue" do
      q.enqueue(1)
      expect(q.empty?).to eq false
    end

    it "adds mulitple elements to the queue" do
      set_queue
      expect(q.peel).to eq 1
    end
  end

  describe "Dequeue" do
    it "removes and returns the first in the queue" do
      set_queue
      expect(q.dequeue).to eq 1
    end

    it "removes the element from the queue" do
      set_queue
      q.dequeue
      expect(show_queue).to eq [2,3,4]
    end
  end


end
