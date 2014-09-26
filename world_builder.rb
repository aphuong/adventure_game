module WorldBuilder

  def build_world
    # Generating the world:

    # Items
    # ----------------
    bow = Item.new
    bow.name = "Bow and arrow"

    spear = Item.new
    spear.name = "Spear"

    red_backpack = Item.new
    red_backpack.name = 'Red backpack'

    blue_backpack = Item.new
    blue_backpack.name = 'Blue backpack'


    # Nodes
    # ----------------
    n = Node.new(0)
    n.description = "Hello #{@player}. It's Reaping Day and you have been chosen to be a tribute in the Hunger Games!"
    n.options = "Are you ready for this challenge? 1) begin, 2) quit."
    @all_nodes << n

    n = Node.new(5)
    n.description = "you see some weapons"
    n.options = "choose your weapon. 1) bow, 2) spear."
    n.items.push(bow, spear)
    @all_nodes << n
  end
end