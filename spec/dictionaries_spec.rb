describe Forgery::Dictionaries do
  subject { Forgery::Dictionaries.new }

  it 'needs to load the dictionary' do
    subject[:banks]

    expect(subject).to be_loaded(:banks)
  end

  it 'needs to load the dictionary when called by the key' do
    subject.reset!

    expect(subject).to_not be_loaded(:banks)

    subject[:banks]

    expect(subject).to be_loaded(:banks)
  end

  it 'should clear the loaded dictionaries when calling reset!' do
    subject[:banks]

    expect(subject).to be_loaded(:banks)

    subject.reset!

    expect(subject).to_not be_loaded(:banks)
  end
end
