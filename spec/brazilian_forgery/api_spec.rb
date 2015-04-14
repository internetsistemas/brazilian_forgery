describe BrazilianForgery do
  it 'returns an appropriate forgery class when a symbol is called' do
    expect(Forgery(:bank)).to eq(BrazilianForgery::Bank)
    expect(Forgery(:CPF)).to eq(BrazilianForgery::CPF)
    expect(Forgery(:occupation)).to eq(BrazilianForgery::Occupation)
  end

  it 'returns an appropriate forgery class when a string is called' do
    expect(Forgery('bank')).to eq(BrazilianForgery::Bank)
    expect(Forgery('CPF')).to eq(BrazilianForgery::CPF)
    expect(Forgery('occupation')).to eq(BrazilianForgery::Occupation)
  end
end

