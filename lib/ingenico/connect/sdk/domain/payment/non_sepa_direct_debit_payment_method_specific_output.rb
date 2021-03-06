#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class NonSepaDirectDebitPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudResults}
        attr_accessor :fraud_results

        def to_h
          hash = super
          add_to_hash(hash, 'fraudResults', @fraud_results)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudResults')
            if !(hash['fraudResults'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']]
            end
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::FraudResults.new_from_hash(hash['fraudResults'])
          end
        end
      end
    end
  end
end
