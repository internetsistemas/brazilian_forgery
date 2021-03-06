# Generates random Brazilian CPF.
# Credits: https://raw.github.com/bernardo/cpf_faker/master/lib/faker/cpf.rb

class BrazilianForgery::CPF < Forgery
  # Generates a valid CPF number with numbers only.
  # Returns a String (since it might contain leading zeros).
  #
  # Forgery(:cpf).numeric
  #   # => '11438374798'
  def self.numeric
    cpf_root = Array.new(9) { rand(10) }

    # calculate first digit
    sum = (0..8).inject(0) do |sum, i|
      sum + cpf_root[i] * (10 - i)
    end

    first_validator = sum % 11
    first_validator = first_validator < 2 ? 0 : 11 - first_validator
    cpf_root << first_validator

    # calculate second digit
    sum = (0..8).inject(0) do |sum, i|
      sum + cpf_root[i] * (11 - i)
    end

    sum += first_validator * 2

    second_validator = sum % 11
    second_validator = second_validator < 2 ? 0 : 11 - second_validator
    (cpf_root << second_validator).join
  end

  # Generates a valid CPF number with numbers and separators. Returns a String.
  #
  # Forgery(:cpf).formated
  #   # => '059.893.186-42'
  def self.formatted
    cpf_digits = numeric
    '%s.%s.%s-%s' % [cpf_digits[0..2],
                     cpf_digits[3..5],
                     cpf_digits[6..8],
                     cpf_digits[9..10]]
  end
end
