class Ship

  attr_reader :name, :type, :booty

  SHIPS = []

  def initialize(dumb)
    @name = dumb[:name]
    @type = dumb[:type]
    @booty = dumb[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
