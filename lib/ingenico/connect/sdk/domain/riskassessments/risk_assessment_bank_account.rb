#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      class RiskAssessmentBankAccount < Ingenico::Connect::SDK::Domain::Riskassessments::RiskAssessment

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban}
        attr_accessor :bank_account_bban

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankAccountBban')
            if !(hash['bankAccountBban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']]
            end
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
          end
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
        end
      end
    end
  end
end
