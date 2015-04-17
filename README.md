# Brazilian's Forgery

I18n: **en-US** **[pt-BR](/README.pt-BR.md)**

Forgery extension with a tons of Brazilian things like names, cities, and others.

## Using

Brazilian's Forgery primary uses the awesome [Forgery](https://github.com/sevenwire/forgery)
and extends the package `lib` with Dictionaries, Formats and Forgeries.


### Full list of Dictionaries:

* Cities
* Female first names
* Last names
* Male first names
* States abbreviations
* States
* Streets


### Full list of Formats:

* Phone
* Zip


### Full List of additional Forgeries:


```ruby
# Method                                      # Example Output
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

## Installing

Like any gem:

```console
$ gem install forgery
```

or

```ruby
gem 'brazilian_forgery', '1.2.3'
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/brazilian_forgery/fork )
2. Create your feature branch (`git checkout -b my-awesome-feature`)
3. Commit your changes (`git commit -am 'Add the best feature'`)
4. Push to the branch (`git push origin my-awesome-feature`)
5. Create a new Pull Request.
