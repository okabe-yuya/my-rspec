module Lib
  module Matcher
    def eq(expect)
      Proc.new { |result| expect == result }
    end

    def include_(expect)
      Proc.new { |result| result.include?(expect) }
    end
  end
end
