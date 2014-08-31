class Sign
  attr_accessor :name, :value

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  RESULTS = [:tie, :win, :lose]
  NAMES  = [:rock, :paper, :scissors]
  VALUES = Hash[NAMES.zip(0..NAMES.length)].with_indifferent_access
  ALL = VALUES.map {|k,v| Sign.new(:name => k, :value => v)}

  BY_NAME = ALL.reduce({}) do |a,x|
    a[x.name] = x
    a
  end.with_indifferent_access

  BY_VALUE = ALL.reduce({}) do |a,x|
    a[x.value] = x
    a
  end.with_indifferent_access

  def self.[](value)
    index = value.is_a?(Symbol) ? BY_NAME : BY_VALUE
    index[value]
  end

  def self.random
    ALL[rand(ALL.length)]
  end

  def <=>(other)
    ( (value - other.value) % ALL.length ) - 1
  end

  def move(other)
    comp = self <=> other
    RESULTS[comp + 1]
  end

end
