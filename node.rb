class Node
  attr_accessor :id, :items, :options, :description

  def initialize(id)
    @id = id
    @items = []
  end
end