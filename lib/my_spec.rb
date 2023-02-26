require_relative './result'
require_relative './matcher'

module Lib
  module MyRspec
    include Result
    include Matcher

    def context(name, &block)
      puts "**context group: #{name}"
      yield
    end

    def it(name, &block)
      result, expect, is_passed = yield
      if is_passed
        print "\e[32m"
        puts "passed test: #{name}"
        print "\e[0m"
      else
        text = "failed test: #{name}\nexpect: #{expect}\nresult: #{result}"
        print "\e[31m"
        puts text
        print "\e[0m"
      end
    end

    module_function :context, :it
  end
end

include Lib::MyRspec