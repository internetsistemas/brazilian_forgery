# Brazilian's Forgery

Extensão da Forgery com toneladas de dados *brasileiros* como nomes, cidades, entre outros.

I18n: **[en-US](/README.md)** **pt-BR**

## Usando:

A BrazilianForgery primeiramente utiliza a impressionante [Forgery](https://github.com/sevenwire/forgery)
e estende o pacote `lib` com dicionarios, novos formatos e forgeries.


### Lista completa de dicionários:

* Cidades
* Primeiros nomes femininos
* Sobrenomes
* Primeiros nomes masculinos
* Abreviações de estados brasileiros
* Estados brasileiros
* Muitas ruas


### Lista completa de formatos:

* Telefones
* CEP


### Lista completa de Forgeries:

```ruby
# Método                                      # Exemplo de retorno
Forgery('bank').code                          # 123
Forgery('bank').name                          # Bradesco
Forgery('bank').agency_name                   # São José dos Campos
Forgery('bank').agency_number                 # 1234-3
Forgery('bank').account_number                # 1234567-3
                                                
Forgery('CNPJ').numeric                       # 57222068000132
Forgery('CNPJ').formatted                     # 22.792.949/0001-04

Forgery('CPF').numeric                        # 11438374798
Forgery('CPF').formatted                      # 059.893.186-42

Forgery('occupation').name                    # Engenheiro Mecânico
```

## Instalando:

Para instalar é fácil, como qualquer outra gem você precisa:

```console
$ gem install brazilian_forgery -v 1.2.3
```

or

```ruby
gem 'brazilian_forgery', '1.2.3'
```


## Pull requests são bem vindos!:

1. Fork este repositório ( https://github.com/[my-github-username]/brazilian_forgery/fork )
2. Crie a sua branch com a mudança (`git checkout -b my-awesome-feature`)
3. Comite suas alterações (`git commit -am 'Add the best feature'`)
4. Push para a origem (`git push origin my-awesome-feature`)
5. Crie um novo Pull Request, falando o quão legal é a sua nova característica!
