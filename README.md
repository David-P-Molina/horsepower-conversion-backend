# Horse-Power Converter: Backend Rails-API
Thank You for using the Horse-Power Converter! 
This repository contains the Ruby on Rails API that stores objects created by the Frontend. Don't forget to initialize this when starting the application otherwise you will be accessing a very empty website shell.
This SPA(Single Page Application)'s frontend can be found at. (https://github.com/David-P-Molina/strange-conversion-calculator)

## Installation

### Clone the repository
#### Frontend
```shell
git clone https://github.com/David-P-Molina/strange-conversion-calculator
cd strange-conversion-calculator
```
#### Backend
```shell
git clone https://github.com/David-P-Molina/strange-conversion-calculator-backend
```
## Starting The Application
### Install dependencies
#### Backend
And then execute :

    $ bundle install
### Initialize the database

```shell
rails db:create
rails db:migrate
rails db:seed
```
### Starting The API
type:
```shell
rails server 
```
#### Frontend
In terminal execute:
```shell
 $ open index.html
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/David-P-Molina/strange-conversion-calculator-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/David-P-Molina/strange-conversion-calculator-backend/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Strange Conversion Calculator's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/David-P-Molina/strange-conversion-calculator-backend/blob/master/CODE_OF_CONDUCT.md).