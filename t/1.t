# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

#use Test::More tests => 1;
use Test::More 'no_plan';
BEGIN { use_ok('Lingua::PT::Num2Words') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

is(num2word(0),'zero','0 -> zero');
is(num2word(1),'um','1 -> um');
is(num2word(2),'dois','2 -> dois');
is(num2word(3),'três','3 -> três');
is(num2word(4),'quatro','4 -> quatro');
is(num2word(5),'cinco','5 -> cinco');
is(num2word(6),'seis','6 -> seis');
is(num2word(7),'sete','7 -> sete');
is(num2word(8),'oito','8 -> oito');
is(num2word(9),'nove','9 -> nove');
is(num2word(10),'dez','10 -> dez');
is(num2word(11),'onze','11 -> onze');
is(num2word(12),'doze','12 -> doze');
is(num2word(13),'treze','13 -> treze');
is(num2word(14),'catorze','14 -> catorze');
is(num2word(15),'quinze','15 -> quinze');
is(num2word(16),'dezasseis','16 -> dezasseis');
is(num2word(17),'dezassete','17 -> dezassete');
is(num2word(18),'dezoito','18 -> dezoito');
is(num2word(19),'dezanove','19 -> dezanove');

is(num2word(20),'vinte','20 -> vinte');
is(num2word(21),'vinte e um','21 -> vinte e um');
is(num2word(22),'vinte e dois','22 -> vinte e dois');
is(num2word(30),'trinta','30 -> trinta');
is(num2word(33),'trinta e três','33 -> trinta e três');
is(num2word(40),'quarenta','40 -> quarenta');
is(num2word(44),'quarenta e quatro','44 -> quarenta e quatro');
is(num2word(50),'cinquenta','50 -> cinquenta');
is(num2word(55),'cinquenta e cinco','55 -> cinquenta e cinco');
is(num2word(60),'sessenta','60 -> sessenta');
is(num2word(66),'sessenta e seis','66 -> sessenta e seis');
is(num2word(70),'setenta','70 -> setenta');
is(num2word(77),'setenta e sete','77 -> setenta e sete');
is(num2word(80),'oitenta','80 -> oitenta');
is(num2word(88),'oitenta e oito','88 -> oitenta e oito');
is(num2word(90),'noventa','90 -> noventa');
is(num2word(99),'noventa e nove','99 -> noventa e nove');

is(num2word(100),'cem','100 -> cem');
is(num2word(105),'cento e cinco','105 -> cento e cinco');
is(num2word(120),'cento e vinte','120 -> cento e vinte');
is(num2word(134),'cento e trinta e quatro','134 -> cento e trinta e quatro');
is(num2word(176),'cento e setenta e seis','176 -> cento e setenta e seis');
is(num2word(189),'cento e oitenta e nove','189 -> cento e oitenta e nove');

is(num2word(200),'duzentos','200 -> duzentos');
is(num2word(250),'duzentos e cinquenta','250 -> duzentos e cinquenta');
is(num2word(263),'duzentos e sessenta e três','263 -> duzentos e sessenta e três');

is(num2word(300),'trezentos','300 -> trezentos');
is(num2word(400),'quatrocentos','400 -> quatrocentos');
is(num2word(500),'quinhentos','500 -> quinhentos');
is(num2word(600),'seiscentos','600 -> seiscentos');
is(num2word(700),'setecentos','700 -> setecentos');
is(num2word(800),'oitocentos','800 -> oitocentos');
is(num2word(900),'novecentos','900 -> novecentos');

is(num2word(1000),'mil','1000 -> mil');

is(num2word(1001),'mil e um','1001 -> mil e um');
is(num2word(1010),'mil e dez','1010 -> mil e dez');
is(num2word(1011),'mil e onze','1011 -> mil e onze');
is(num2word(1100),'mil e cem','1100 -> mil e cem');
is(num2word(1101),'mil cento e um','1101 -> mil cento e um');
is(num2word(1110),'mil cento e dez','1110 -> mil cento e dez');
is(num2word(1111),'mil cento e onze','1111 -> mil cento e onze');

is(num2word(1500),'mil e quinhentos');
is(num2word(1501),'mil quinhentos e um');
is(num2word(1510),'mil quinhentos e dez');
is(num2word(1511),'mil quinhentos e onze');
is(num2word(1550),'mil quinhentos e cinquenta','1550 -> mil quinhentos e cinquenta');
is(num2word(1583),'mil quinhentos e oitenta e três');

is(num2word(1807),'mil oitocentos e sete');
is(num2word(1920),'mil novecentos e vinte');
is(num2word(2040),'dois mil e quarenta');
is(num2word(3006),'três mil e seis');
is(num2word(4000),'quatro mil');
is(num2word(4123),'quatro mil cento e vinte e três');
is(num2word(5875),'cinco mil oitocentos e setenta e cinco');
is(num2word(6980),'seis mil novecentos e oitenta');
is(num2word(7009),'sete mil e nove');
is(num2word(8090),'oito mil e noventa');
is(num2word(9101),'nove mil cento e um');

is(num2word(9999),'nove mil novecentos e noventa e nove');

@a=num2word(1,2,3);
@b=qw(um dois três);

is(@a,@b);

@a=num2word(1..10);
@b=qw(um dois três quatro cinco seis sete oito nove dez);

is(@a,@b);
