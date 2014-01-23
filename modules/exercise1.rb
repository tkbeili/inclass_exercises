# Write two classes named Turkey. Distinguish 
# them by modules. The first one should be in a 
# MiddleEast module inside a Country module. 
# The other should in Bird modules inside an 
# Animal module.

module Country
  module MiddleEast
    class Turkey
    end
  end
end

module Animal 
  module Bird; end
end
class Animal::Bird::Turkey
end