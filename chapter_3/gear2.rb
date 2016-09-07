require './wheel.rb'

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    @chainring = args[:chainring] || 40
    @cog       = args[:cog] || 18
    @wheel     = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diamenter
  end

  def diamenter
    wheel.diameter
  end
end

puts Gear.new(
  :chainring => 52,
  :cog       => 11,
  :wheel     => Wheel.new(26, 1.5)).gear_inches

puts Gear.new(
  :chainring => nil,
  :cog       => nil,
  :wheel     => Wheel.new(26, 1.5)).gear_inches
