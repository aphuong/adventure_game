class Hero
  attr_accessor :inventory, :hunger, :thirst

  def initialize
    @inventory = []
    @hunger = false
    @thirst = false
  end

  def drop(item_name)
    inventory.delete_if do |item|
      item.name == item_name
    end
  end
end