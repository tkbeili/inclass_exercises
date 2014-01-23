

module Computers
  class Apple
    attr_accessor :model
    def initialize(model)
      @model = model
    end
  end
end

module Computers
  class Dell
    attr_accessor :model
    def initialize(model)
      @model = model
    end
  end
end

module Fruits
  class Apple
    attr_accessor :type
    def initialize(type)
      @type = type
    end
  end
end


class Fruits::Apple
  attr_accessor :type
  def initialize(type)
    @type = type
  end
end

apple    = Fruits::Apple.new("Gala")
computer = Computers::Apple.new("Mac")