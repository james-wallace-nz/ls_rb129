class FightRing
  attr_reader :characters

  def initialize
    @characters = []
  end

  def fight
    @characters.each do |character|
      character.attack
    end
  end
end

class Monster
  def attack
    eat
  end

  def eat
    puts "Teeth attack!"
  end
end

class Barbarian
  def attack
    sword
  end

  def sword
    puts "Sword attack!"
  end
end

monster = Monster.new
barbarian = Barbarian.new
fight_ring = FightRing.new

fight_ring.characters << monster << barbarian
fight_ring.fight
