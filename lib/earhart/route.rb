module Earhart
  # An individual key/value piece, the key being the request pattern and value being the receiver
  class Route
    def initialize(pattern, receiver)
      @pattern = pattern
      @receiver = receiver
    end

    def match(query)
      pattern === query
    end

    def receiver
      @receiver
    end

    def to_s
      "#{self.class.name}{#{pattern} -> #{receiver.to_s}}"
    end

    def pattern
      @pattern
    end
    private :pattern
  end
end
