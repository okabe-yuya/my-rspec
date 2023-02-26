module Lib
  module Matcher
    def eq(expect)
      Proc.new { |result| [result, expect, expect == result] }
    end

    def include_(expect)
      Proc.new { |result| [result, expect, result.include?(expect)] }
    end
  end
end
