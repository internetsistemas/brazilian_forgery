# Generates random Brazilian CNPJ.
# Credits: https://raw.github.com/bernardo/cpf_faker/master/lib/faker/cnpj.rb
class Forgery::Cnpj < Forgery
  # Generates a valid CNPJ number with numbers only. Returns a string, since it may have leading zeros.
  #
  # Forgery(:cnpj).numeric
  #   # => "57222068000132"
  def self.numeric
    cnpj_root = Array.new(12) { rand(10) }

    # calculate first digit
    factor = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]

    sum = (0..11).inject(0) do |sum, i|
      sum + cnpj_root[i] * factor[i]
    end

    first_validator = sum % 11
    cnpj_root << first_validator = first_validator < 2 ? 0 : 11 - first_validator

    # calculate second digit
    factor.unshift 6

    sum = (0..12).inject(0) do |sum, i|
      sum + cnpj_root[i] * factor[i]
    end

    second_validator = sum % 11
    (cnpj_root << second_validator = second_validator < 2 ? 0 : 11 - second_validator).join
  end

  # Generates a valid CNPJ number, including separators. Returns a string.
  #
  # Forgery(:cnpj).formatted
  #   # => "22.792.949/0001-04"
  def self.formatted
    cnpj = numeric.to_s.rjust(14, "0")
    "%s.%s.%s/%s-%s" % [cnpj[0,2], cnpj[2,3], cnpj[5,3], cnpj[8,4], cnpj[12,2]]
  end
end
