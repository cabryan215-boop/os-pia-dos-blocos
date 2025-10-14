/*
por enquanto nao impórta se usarmos o drawn ou drawn GUI pois no jogo nao possue camera 
agora parta mostrar os pontos vamos usar uyka funçao e aproveitaremos e aprenderemos sobre padronizaçao
de nomes de funçao e como ela funciona no game maker 

quando formos criar uma funçao a um,certo padrao a ser seguido esse padrao,este padra é a primewira palavra sendo um verbo
e depois a segunda palavra estando com a letra maiuscula e complementando uma verbo
se eu fosse criar uma funçao para quebrar blocos eu criaria quebrarBloco(),se eu quiser checar a colisao entre dois objetos seria checarColisao()
se eu quiser inicia o jogo ou seja lançar a bola usaria o lancarBola()
se eu quiser inverter a direçao da bola usaria o redimensionarBola()
no gamemaker as funçoes sao parecidas a diferencia e que sao em ingles entao por exemplo nos queremos mostrar o texto na tela ok podemos dizer tambem desenhar
um texto na tela para isso agora é so sepárar as palavras chaves dessa frase quais sao ela:desenhar e texto 
agora é so traduziar as duas palavras pra ingles ou seja muito provavelmente existe uma funçao com esse nome
entao mesmo nao sabendo o nome da funçao vc pode tentar achar ela pelo nome me ingles ou usando o nome do que vc quer fazer como referencia poir exemplo:muitas para nao dfizer 
todas as funçasoes realcionadaos a fase atual vaonestra com room em seu nome relacionado ao conteudo do texto,
vai estar com"text"em seu nome ,outra padronizaçao de codigo e quando vc quiser alterar um valorn a funçao tera set
no nome e quando vc quiser receber um valor provavelmente tera "get" ou "is" no valor 
entao vamos ver a descriçao de draw_text():
function draw_text(x:real,y:real,string:any)->
undefined
with this function you can drawn any string at any position within the room (for drawng real number you should use the string() fuction to convertthem into text)
x the x xordinate odf the drawn string
y the y xordinate odf the drawn string
string the string to draw 
traduçao 
funçao draw_text (x:valor reasl ,y:valor real ,string :qualquer )retorno vazio o indefinido
com esta funçao voce pode desenhar qualquer texto e em qual quer posiçao na sala
(para desenhar um valor real vc deve usar a funçao string())para converter o valor em texto)
x a coordenada x do texto
y a coordenada y do texto 
string o texto que queria desenhar 
o interessante e que a propria funçao ja indica do qeu fazer caso o seu texto use numeros,que e´no caso entao vamos
ver a descriçao dela:
funçao string (val_or_format:qualquer,[..:qualquer*])retorno do tipo string com esa funçao vc pode tornar uma valor em string ou em formato string val_or_format o valor ´pode ser covertido 
em string ou no formato string valores a ser trocados ou placeholder

entao,como colocarenmos os pontos para serem mostrados, temosd que traduzilos para string e mostralos e para deixar um ppouco mais dinakmico criaremos uma mesagem para isso

*/

//mas o texto esta pequeno entao vamos usar outro metodo uma maneira seria usar o drawn_text_transformad(),
//mas ele fica fora do lugar e pixelkado entao vamos criar uma fonte e por la controlar o desenho e o tamanho
/*
agora que ja criamos a fonte irwmos colocar para usala usando a funçao draw_set_font()
descriçao:
function draw_set_font (font :asset.GMFont)->
unidefined
this function will set the font to be used for all further text drawing
font the name of the font to use
traduçao:
funçao draw_set_font (font :fonte criada)->retorno vazio ou indefinidfo esta funçao ira redefinir a font a ser usada
para todos os futuros textos
font 0 nome da fonte a ser usada

unidefined

*/
if global.pontos<10{
	mensagem="0000"+string(global.pontos)
}
else if global.pontos<100{
	mensagem="000"+string(global.pontos)
}
else if global.pontos<1000{
	mensagem="00"+string(global.pontos)
}
else if global.pontos<10000{
	mensagem="0"+string(global.pontos)
}
else{
	mensagem=string(global.pontos)
}
draw_set_font(fntPontos)
mensagem=string(global.pontos)
//e agora mostramos na tela
draw_text(x,y,mensagem )
//para finalizar vamos colocar mais zeros na frente
//e agora desenhamos na tela tambem colocamos para ela ir para o meio da tela mas mas vamos perceber que o texto nao esta no nmeio
//pois a orientaçao npormal e na esquerda 
//para trocarmo a direçao usaremos a funçao draw_set_haling():
//para definir a centralizacao usaremos a funçao 
// draw_set_haling():
//function draw set halling(haling: constant.halingn) ->
//undfined
//this function is used to aling text long the horizontal axis 
//and changing the horizon alignment will
//change teh position and direction in which all
//further text is drawn with the defalt value being fa_left 
//haling horizontal aligment

//traduçao:
//funçao draw set halling(haling: constant.horizontal) ->
//retorno vazio ou indefinido 
//esta funçao é usada para alinhar o texto no eixo horizontal e mudar o alinhamento 
//horizontal e ira mudar a posiçao e a direçao em tudo
//os textos desenhados como com o padrao sdendo iniciar pela equerda(fa_left)
//halingn alinhamento horizontal
//aqui as possiveis variaveis sao
//fa_left:para a esquerda
//fa_center:para o centro
//fa_right:para a direita 
//no caso iremos usar a fa_center
//draw_set_valing():
/*function draw_set_valign():
undefinid this function is used to aling text along the vertical exis and 
changuing in which all furt
draw_set_valign():
function draw_set_valign(valign: Constant.VAlign) -> Undefined
This function is used to align text along the vertical axis and
- changing the vertical alignment will change the position and -
- direction in which all further text is drawn, with the default -
- value being fa_top.
valign Vertical alignment.

Função draw_set_valign(valign: Constante. alinhamnto vertical) -
- retorno vazio ou indefinido
Esta função é usada pra alinhar o texto no eixo vertical e mudar -
- o alinhamento vertical e irá mudar a posição e a direção em todos -
- os texto desenhados, com o padrão sendo iniciar pelo topo
valign Alinhamento vertical
Aqui as possiveis variáveis são:
fa_top: Para o topo
fa_middle: Para o meio
fa_bottom: Para baixo
No caso iremos usar a fa_top, então não necessáriamente teremos que 
- utilizar esta função, mas já fica de ensinamento
*/
draw_set_halign(fa_top)
draw_text(room_width / 2,y,mensagem)