module Ingenico::Connect::SDK

  # Represents HTTP request headers
  # Each header is immutable has a #name and #value attribute
  class RequestHeader

    # Create a new header using the name and value given as parameters.
    def initialize(name, value)
      if name.nil? || name.strip.empty?
        raise ArgumentError.new('name is required')
      end
      @name = name
      @value = normalize_value(value)
    end

    # HTTP header name
    attr_reader :name
    # HTTP header value
    attr_reader :value

    def to_s
      "#{name}:#{value}"
    end

    private

    def normalize_value(value)
      if value.nil? || value.empty?
        return value
      end
      # Replace all sequences of whitespace*-linebreak-whitespace* into a single linebreak-space
      # This will ensure that:
      # - no line ends with whitespace, because this causes authentication failures
      # - each line starts with a single whitespace, so it is a valid header value
      value.gsub(/[\s&&[^\r\n]]*(\r?\n)[\s&&[^\r\n]]*/, '\1 ');
    end
  end
end
