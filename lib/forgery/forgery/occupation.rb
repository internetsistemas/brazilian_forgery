# Generates random Brazilian Occupations from IBGE.
class Forgery::Occupation < Forgery
  # Generates a valid occupation name.
  #
  # Forgery(:occupation).name
  #   # => "Engenheiro Aeronáutico"
  def self.name
    Forgery.dictionaries[:occupations].random.unextend
  end
end
