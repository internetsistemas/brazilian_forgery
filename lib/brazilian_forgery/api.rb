def brazilian_forgery_api(forgery, method = nil, *args)
  camelized = Forgery::Extend(forgery.to_s).camelize
  param = if Object.const_defined?("BrazilianForgery::#{camelized}")
            "BrazilianForgery::#{camelized}"
          else
            "Forgery::#{camelized}"
          end

  klass = Forgery::Extend(param).constantize
  if method
    klass.send(method, *args)
  else
    klass
  end
end

alias Forgery :brazilian_forgery_api
