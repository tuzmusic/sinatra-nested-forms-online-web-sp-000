class Pirate

  attr_accessor :name, :weight, :height
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

end
