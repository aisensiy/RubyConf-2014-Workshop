module Calc
  class AddOperation
    def self.regexp
      /\+/
    end

    def self.combine(a, b)
      a + b
    end
  end

  class SubOperation
    def self.regexp
      /\-/
    end

    def self.combine(a, b)
      [a - b, 0].max
    end
  end

  class MulOperation
    def self.regexp
      /\*/
    end

    def self.combine(a, b)
      a * b
    end
  end

  class DivOperation
    def self.regexp
      /\//
    end

    def self.combine(a, b)
      a / b
    end
  end

  class ::String
    def last_operation(operation_class)
      head = self =~ operation_class.regexp
      tail = self[(head + 1)..-1].last_operation(operation_class) unless head.nil?
      tail += head + 1 unless tail.nil? or tail < 0

      result = head
      result = tail unless tail.nil? or tail < 0
      result = -1 if head.nil?
      result
    end

    def parse
      operation_pairs = [AddOperation, SubOperation, MulOperation, DivOperation].map { |klass| [klass, self.last_operation(klass)] }
      operation_pair = operation_pairs.max_by { |p| p[-1] }
      if operation_pair[-1] < 0
        self.to_i
      else
        operation_class = operation_pair[0]
        operation_pos = operation_pair[1]
        operation_class.combine(self[0..(operation_pos - 1)].parse, self[(operation_pos + 1)..-1].to_i)
      end
    end
  end

  def self.eval(string)
    string.parse
  end
end
