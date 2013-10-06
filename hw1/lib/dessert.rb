class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    return calories < 200
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    super(flavor + " jelly bean", 5)
    @flavor = flavor
  end
  def delicious?
    return flavor != "licorice"
  end
end
