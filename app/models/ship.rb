class Ship

  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if value.class != Array
    end
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
