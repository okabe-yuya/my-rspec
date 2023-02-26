module Result
  def expect(result)
    StateHolder.new(result)
  end

  module_function :expect

  class StateHolder
    def initialize(result)
      @result = result
    end

    def to(matcher)
      matcher.call(@result)
    end

    def not_to(matcher)
      !to(matcher)
    end
  end
end
