require_relative "../my_queue"

RSpec.describe MyQueue do

  let(:q) { MyQueue.new }

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
  end

  describe "Dequeue" do
    it "removes and returns the first in the queue" do
      set_queue
      expect(q.dequeue).to eq 1
    end
  end


end
