module Calc
  def self.eval(string)
    opt_pos = string =~ /[\+\-\*\/]/
    if !opt_pos.nil?

      opt = string[opt_pos]

      values = string.split(opt).map(&:to_i)

      case opt
        when '+' then values.reduce(:+)
        when '-' then [0, values.reduce(:-)].max
        when '*' then values.reduce(:*)
        when '/' then values.reduce(:/)
      end

    else
      string.to_i
    end
  end
end
