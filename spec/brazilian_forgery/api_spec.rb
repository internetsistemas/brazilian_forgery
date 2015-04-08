describe BrazilianForgery do
  it 'returns an appropriate forgery class when a symbol is called' do
    expect(BrazilianForgery(:bank)).to eq(BrazilianForgery::Bank)
    expect(BrazilianForgery(:CPF)).to eq(BrazilianForgery::CPF)
    expect(BrazilianForgery(:occupation)).to eq(BrazilianForgery::Occupation)
  end

  it 'returns an appropriate forgery class when a string is called' do
    expect(BrazilianForgery('bank')).to eq(BrazilianForgery::Bank)
    expect(BrazilianForgery('CPF')).to eq(BrazilianForgery::CPF)
    expect(BrazilianForgery('occupation')).to eq(BrazilianForgery::Occupation)
  end
end

