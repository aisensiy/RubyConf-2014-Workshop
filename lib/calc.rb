module Calc
  def self.eval(string)
    opt_pos = string =~ /[\+\-\*\/]/
    if !opt_pos.nil?

      left = string[0...opt_pos].to_i
      opt = string[opt_pos]
      right = string[(opt_pos + 1)...string.size].to_i

      if opt == '+'
        left + right
      elsif opt == '*'
        left * right
      elsif opt == '/'
        left / right
      else
        left - right
      end

    else
      string.to_i
    end
  end
end
