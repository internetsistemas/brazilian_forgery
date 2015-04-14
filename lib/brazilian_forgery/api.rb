def Forgery(forgery, method = nil, *args)
  klass = Forgery::Extend(
      "BrazilianForgery::#{Forgery::Extend(forgery.to_s).camelize}"
  ).constantize
  if method
    klass.send(method, *args)
  else
    klass
  end
end