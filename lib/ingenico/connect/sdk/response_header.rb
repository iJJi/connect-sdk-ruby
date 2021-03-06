module Ingenico::Connect::SDK

  # Represents HTTP response headers
  # Each header is immutable has a #name and #value attribute
  class ResponseHeader

    # Create a new header using the name and value given as parameters.
    def initialize(name, value)
      raise ArgumentError.new('name is required') if name.nil? or name.strip.empty?
      @name = name
      @value = value
    end

    # HTTP header name
    attr_reader :name
    # HTTP header value
    attr_reader :value

    def to_s
      "#{name}:#{value}"
    end
  end
end
