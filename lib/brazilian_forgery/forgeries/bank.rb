# Generates random Brazilian Banks.
class BrazilianForgery::Bank < Forgery
  # Generates a random bank code.
  #
  # Forgery(:bank).code
  #   # => '123'
  def self.code
    '%03d' % rand(999)
  end

  # Generates a bank name.
  #
  # Forgery(:bank).name
  #   # => 'Bradesco'
  def self.name
    Forgery.dictionaries[:banks].random.unextend
  end

  # Generates a bank agency name.
  #
  # Forgery(:bank).agency_name
  #   # => 'São José dos Campos'
  def self.agency_name
    Forgery.dictionaries[:cities].random.unextend
  end

  # Generates a bank agency number.
  #
  # Forgery(:bank).agency_number
  #   # => '1234-3'
  def self.agency_number
    '%04d' % rand(9999) << '-' << '%01d' % rand(9)
  end

  # Generates a bank account number.
  #
  # Forgery(:bank).account_number
  #   # => '1234567-3'
  def self.account_number
    '%06d' % rand(999999) << '-' << '%01d' % rand(9)
  end
end
