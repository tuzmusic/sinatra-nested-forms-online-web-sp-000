class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  # def initialize(name=nil, weight=nil, height=nil)
  #   @name = name
  #   @weight = weight
  #   @height = height
  #   @@all << self
  #   self
  # end

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if value.class != Array
    end
    @@all << self
    self
  end

  def self.new_from_hash(hash)
    pirate = Pirate.new
    hash.each do |key, value|
      # binding.pry
      pirate.send("self.#{key}=", value)
    end
    pirate
  end

  def self.all
    @@all
  end

end
