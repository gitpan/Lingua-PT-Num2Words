package Lingua::PT::Num2Words;

use 5.008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	num2word
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	num2word
);

our $VERSION = '1.00';

=head1 NAME

Lingua::PT::Num2Words - Perl extension for converting numbers to Portuguese
words

=head1 SYNOPSIS

  use Lingua::PT::Num2Words;

  $result = num2word(5);

  @results = num2word(1,2,10,100,1000,9999);

=head1 DESCRIPTION

Num2Words converts numbers to Portuguese words.

=head2 EXPORT

num2word

=cut

sub num2word {
  my @numbers = wantarray ? @_ : shift;
  my @results = map {
    s!9(?=\d\d\d)!nove mil e !g;
    s!8(?=\d\d\d)!oito mil e !g;
    s!7(?=\d\d\d)!sete mil e !g;
    s!6(?=\d\d\d)!seis mil e !g;
    s!5(?=\d\d\d)!cinco mil e !g;
    s!4(?=\d\d\d)!quatro mil e !g;
    s!3(?=\d\d\d)!tr�s mil e !g;
    s!2(?=\d\d\d)!dois mil e !g;
    s!1(?=\d\d\d)!mil e !g;
    s!9(?=\d\d)!novecentos e !g;
    s!8(?=\d\d)!oitocentos e !g;
    s!7(?=\d\d)!setecentos e !g;
    s!6(?=\d\d)!seiscentos e !g;
    s!5(?=\d\d)!quinhentos e !g;
    s!4(?=\d\d)!quatrocentos e !g;
    s!3(?=\d\d)!trezentos e !g;
    s!2(?=\d\d)!duzentos e !g;
    s!100!cem!g;
    s!mil e 0+(?=[1-9])!mil e !g;
    s!1(?=\d\d)!cento e !g;
    s!9(?=\d)!noventa e !g;
    s!8(?=\d)!oitenta e !g;
    s!7(?=\d)!setenta e !g;
    s!6(?=\d)!sessenta e !g;
    s!5(?=\d)!cinquenta e !g;
    s!4(?=\d)!quarenta e !g;
    s!3(?=\d)!trinta e !g;
    s!2(?=\d)!vinte e !g;
    s/ e 0+(?=[1-9])/ e /g;
    s/ e 0+//g;
    s/19/dezanove/g;
    s/18/dezoito/g;
    s/17/dezassete/g;
    s/16/dezasseis/g;
    s/15/quinze/g;
    s/14/catorze/g;
    s/13/treze/g;
    s/12/doze/g;
    s/11/onze/g;
    s/10/dez/g;
    s/9/nove/g;
    s/8/oito/g;
    s/7/sete/g;
    s/6/seis/g;
    s/5/cinco/g;
    s/4/quatro/g;
    s/3/tr�s/g;
    s/2/dois/g;
    s/1/um/g;
    s/0/zero/g;

    s!mil e (novecentos|oitocentos|setecentos|seiscentos) e!mil $1 e!g;
    s!mil e (quinhentos|quatrocentos|trezentos|duzentos) e!mil $1 e!g;
    s!mil e cento!mil cento!g;

    $_
  } @numbers;

  return wantarray ? @results : $results[0];
}

1;
__END__

=head1 LIMITATIONS

Num2Words currently works (hopefully) with numbers ranging from 0 to 9999.
This will be solved soon (again, hopefully).

=head1 SEE ALSO

A good maths book :-)

=head1 AUTHOR

Jose Alves de Castro, E<lt>jac@natura.di.uminho.pt<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Jose Alves de Castro

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
