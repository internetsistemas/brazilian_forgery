# Brazilian's Forgery

Forgery extention with a tons of Brazilian things like names, cities, and others.


## Using

Brazilian's Forgery primary uses the awesome [https://github.com/sevenwire/forgery(Forgery) and extends the package lib with Dictionaries, Formats and Forgeries.


### Full list of Dictionaries:

* Cities
* Female first names
* Last names
* Male first names
* States abreviations
* States
* Streets


### Full list of Formats:

* Phone
* Zip


### Full List of aditional Forgeries:

Method                                          | Example Output
:------------------------------                 |:----------------
`Forgery('bank').code`                          | 123
`Forgery('bank').name`                          | Bradesco
`Forgery('bank').agency_name`                   | São José dos Campos
`Forgery('bank').agency_number`                 | 1234-3
`Forgery('bank').account_number`                | 1234567-3
                                                |
`Forgery('cnpj').numeric`                       | 57222068000132
`Forgery('cnpj').formatted`                     | 22.792.949/0001-04
                                                |
`Forgery('cpf').numeric`                        | 11438374798
`Forgery('cpf').formatted`                      | 059.893.186-42
                                                |
`Forgery('occupation').name`                    | Engenheiro Mecânico


## Installing

Like any gem:

```
$ gem install forgery
```

or

```
gem 'brazilian_forgery', '0.0.1'
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/brazilian_forgery/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
