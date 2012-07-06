# Perl Wrapper para a API do Cobre Grátis

Essa biblioteca é um conjunto de classes em Perl para acessar as informações do [Cobre Grátis](http://cobregratis.com.br) através da [API](https://github.com/BielSystems/cobregratis-api).

Todas as classes são herdadas do ActiveResouce. Veja a documentação do [ActiveResouce](http://search.cpan.org/~gugod/ActiveResource-0.01/lib/ActiveResource.pm) para mais informações.

## Instalando

    git clone https://github.com/BielSystems/cobregratis-perl.git

### Pré-requisitos

* ActiveResource
* common::sense
* XML::Hash

### Configurando seu token

```perl
use CobreGratis::Bank_Billet;

Bank_Billet->user("seu_token");
Bank_Billet->password("X");
```

## Uso

```perl
# criar um boleto
my $bank_billet = Bank_Billet->create(
  amount => 230.50,
  expire_at => '2015-07-22',
  name => 'Rafael Lima'
);

print "Nosso Número: ".$bank_billet->attributes->{'our-number'}."\n";
print "Vencimento: ".$bank_billet->attributes->{'expire-at'}."\n";
print "Valor: ".$bank_billet->attributes->{'amount'}."\n";
print "Sacado: ".$bank_billet->attributes->{'name'}."\n";
print "URL: ".$bank_billet->attributes->{'external-link'}."\n";
print "=================================\n";
```

Veja um exemplo no arquivo [example.pm](https://github.com/BielSystems/cobregratis-perl/blob/master/example.pm)

## Licença

Esse código é livre para ser usado dentro dos termos da licença [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Bugs, Issues, Agradecimentos, etc

Comentários são bem-vindos. Envie seu feedback através do [issue tracker do GitHub](http://github.com/BielSystems/cobregratis-perl/issues)

## Autor

[**Rafael Lima**](http://github.com/rafaelp) trabalhando na [BielSystems](http://bielsystems.com.br)

Blog: [http://rafael.adm.br](http://rafael.adm.br)

Twitter: [http://twitter.com/rafaelp](http://twitter.com/rafaelp)