describe Forgery::CNPJ do
  it 'is load correctly' do
    expect { Forgery::CNPJ }.to_not raise_error
  end

  describe :formatted do
    it 'returns a formatted cnpj' do
      expect(Forgery::CNPJ.formatted).to_not be_nil
    end

    it 'returns a correct formatted cnpj' do
      expect(Forgery::CNPJ.formatted).to match(/\A\d{2}\.\d{3}.\d{3}\/\d{4}-\d{2}\Z/)
    end

    it 'has a exactly number quantity of a cnpj' do
      expect(Forgery::CNPJ.numeric.length).to eq(14)
      expect(Forgery::CNPJ.formatted.length).to eq(18)
    end
  end

  describe :numeric do
    it 'returns a numeric cnpj' do
      expect(Forgery::CNPJ.numeric).to_not be_nil
    end

    it 'has a exactly number quantity of a cnpj' do
      expect(Forgery::CNPJ.numeric.length).to eq(14)
    end
  end
end
