require_relative './result'
require_relative './matcher'

module MyRspec
  include Result
  include Matcher

  def context(_name, &block) yield end

  def it(name, &block)
    res = yield
    if res
      puts "passed test: #{name}"
    else
      raise "failed test: #{name}"
    end
  end

  module_function :context, :it
end

include MyRspec