describe BrazilianForgery::Bank do
  subject { BrazilianForgery::Bank }

  it 'is load correctly' do
    expect { subject }.to_not raise_error
  end

  describe :code do
    it 'returns a simple numeric code' do
      expect(subject.code).to_not be_nil
    end

    it 'returns a correct format for code' do
      expect(subject.code).to match(/\A\d{3}/)
    end
  end

  describe :agency_number do
    it 'returns six digits' do
      expect(subject.agency_number.length).to eq(6)
    end

    it 'has a exactly format' do
      expect(subject.agency_number).to match(/\d{4}-\d{1}/)
    end
  end

  describe :agency_name do
    it 'returns six digits' do
      expect(subject.agency_name).to_not be_nil
    end

    it 'is a String' do
      expect(subject.agency_name).to be_a(String)
    end
  end

  describe :name do
    it 'returns a Bank name' do
      expect(Forgery.dictionaries[:banks]).to include(subject.name)
    end

    it 'be a String' do
      expect(subject.name).to be_a(String)
    end
  end

  describe :account_number do
    it 'returns six digits' do
      expect(subject.account_number.length).to eq(8)
    end

    it 'has a exactly format' do
      expect(subject.account_number).to match(/\d{6}-\d{1}/)
    end
  end
end
