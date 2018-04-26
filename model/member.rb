class Member
  attr_accessor :name, :function, :img, :type

  def initialize(name, function, img, type)
      @name = name
      @function = function
      @img = img
      @type = type
  end
end
