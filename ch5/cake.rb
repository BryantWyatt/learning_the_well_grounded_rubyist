class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
  end

  def pour_flour
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end

  def stir_batter() end
  private :pour_flour, :add_egg, :stir_batter
end

egg = Egg.new

egg.pour_flour