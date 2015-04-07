describe Forgery::Bank do
  it 'is load correctly' do
    expect { Forgery::Bank }.to_not raise_error
  end

  describe :code do
    it 'returns a simple numeric code' do
      expect(Forgery::Bank.code).to_not be_nil
    end

    it 'returns a correct format for code' do
      expect(Forgery::Bank.code).to match(/\A\d{3}/)
    end
  end

  describe :agency_number do
    it 'returns six digits' do
      expect(Forgery::Bank.agency_number.length).to eq(6)
    end

    it 'has a exactly format' do
      expect(Forgery::Bank.agency_number).to match(/\d{4}-\d{1}/)
    end
  end

  describe :agency_name do
    it 'returns six digits' do
      expect(Forgery::Bank.agency_name).to_not be_nil
    end

    it 'is a String' do
      expect(Forgery::Bank.agency_name).to be_a(String)
    end
  end

  describe :name do
    it 'returns a Bank name' do
      expect(Forgery.dictionaries[:banks]).to include(Forgery::Bank.name)
    end

    it 'be a String' do
      expect(Forgery::Bank.name).to be_a(String)
    end
  end

  describe :account_number do
    it 'returns six digits' do
      expect(Forgery::Bank.account_number.length).to eq(8)
    end

    it 'has a exactly format' do
      expect(Forgery::Bank.account_number).to match(/\d{6}-\d{1}/)
    end
  end
end
