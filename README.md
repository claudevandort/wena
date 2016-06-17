# Wena
Es solo una gema que saluda en "chileno"

## Instalación
```shell
gem install wena
```
## Uso
```ruby
require 'wena'
# => true
wena = Wena.new
# => #<Wena:0x00000001d83d98>
wena.wena
# => "Wena wena"
wena.wn
# => "Wena wn"
wena.wn 'Claudio'
# => "Wena Claudio"
wena.ql
# => "Wena wn ql"
wena.ql 'Claudio'
# => "Wena Claudio ql"
```
