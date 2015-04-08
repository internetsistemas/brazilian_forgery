describe BrazilianForgery::Occupation do
  subject { BrazilianForgery::Occupation }

  it 'is load correctly' do
    expect { subject }.to_not raise_error
  end

  describe :name do
    it 'returns a Bank name' do
      expect(Forgery.dictionaries[:occupations]).to include(subject.name)
    end

    it 'be a String' do
      expect(subject.name).to be_a(String)
    end
  end
end
