# frozen_string_literal: true

# Omar's example
class Father
  @@money = 500
  def self.money
    @@money
  end
end

class Son1 < Father
  def money
    @@money = @@money - 100
    'taking 100'
  end
end

class Son2 < Father
  def money
    @@money = @@money - 200
    'taking 200'
  end
end
class Son3 < Father
  def money
    @@money = @@money - 50
    'taking 50'
  end
end

puts Son1.new.money
puts Son2.new.money
puts Son3.new.money
puts Father.money
