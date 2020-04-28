# frozen_string_literal: true

# module a
module A

  # method without implementation.
  def a1; end

  # method without implementation.
  def a2; end
end

# module b
module B

  # method without implementation.
  def b1; end

  # method without implementation.
  def b2; end
end

# class sample
class Sample
  include A
  include B

  # method without implementation.
  def s1; end
end

# Main menu to test the exercise.
sample = Sample.new
sample.a1
sample.a2
sample.b1
sample.b2
sample.s1
