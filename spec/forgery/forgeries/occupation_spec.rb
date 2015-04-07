describe Forgery::Occupation do
  it 'is load correctly' do
    expect { Forgery::Occupation }.to_not raise_error
  end

  describe :name do
    it 'returns a Bank name' do
      expect(Forgery.dictionaries[:occupations]).to include(Forgery::Occupation.name)
    end

    it 'be a String' do
      expect(Forgery::Occupation.name).to be_a(String)
    end
  end
end
