describe Forgery::CPF do
  it 'is load correctly' do
    expect { Forgery::CPF }.to_not raise_error
  end

  describe :formatted do
    it 'returns a formatted cpf' do
      expect(Forgery::CPF.formatted).to_not be_nil
    end

    it 'returns a correct formatted cpf' do
      expect(Forgery::CPF.formatted).to match(/\A\d{3}\.\d{3}\.\d{3}-\d{2}\Z/)
    end

    it 'has a exactly number quantity of a cpf' do
      expect(Forgery::CPF.numeric.length).to eq(11)
      expect(Forgery::CPF.formatted.length).to eq(14)
    end
  end

  describe :numeric do
    it 'returns a numeric cpf' do
      expect(Forgery::CPF.numeric).to_not be_nil
    end

    it 'has a exactly number quantity of a cnpj' do
      expect(Forgery::CPF.numeric.length).to eq(11)
    end
  end
end
