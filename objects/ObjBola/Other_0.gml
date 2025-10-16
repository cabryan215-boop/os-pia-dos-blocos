/*
esee evento e gerado toda vez que abolinha sai da tela
no nosso quando a instancia objbola sai da tela
e quando ela sai por bbaixo tremos cwrteza que io player perdeu
a bolinhas consecutivamnete uma dass vidas

entao vamos configurar 4 coisas
1 diminuindo a vida em 1 
2 fazer a aniumçao de morte quando a boliunha sai
3 apagar do codigom a bolinha que saiu
4 criar ukma nova boluinha caso ainda tenha vida 

*/
//primeiro tiraremos 1 vida
//vamos mecher alguns objetos de ligar por enquanto e diminuir a quantidade de boloas recriar o obj morte e destruir a bola
//que saiu sendo a condida se a quantidade de bola seja igual a 0
global.quantBolas--
instance_destroy()
//agora caso a quantidade de bolas seja maior que 0 iremos apenas fazer a animacoa 
//e caso a quantidade seja maior que 0 
if global.quantBolas>0{
	instance_create_layer(x,room_height,"instances",ObjMorte)
	exit
}
global.vidas--
global.isStart=false

//segundfo criare uma animaçao de morte [
//so que para isso criasremos um novo obj chamado de objMorte
//e aoprendendo como criar novas instancias dentro do codigo
/*
para cria novas intancias usaremos novas funcoes create_instance_layer()
traduçao:
funçao instance_create_layer(
x:valor real,
y:valor real,
layer_id:valor string or id.layer
obj:objeto do sistema:
[var_struct:instruçao]
)retorno do id da nova instancia
com esta funcao voce consegue criar uma nova instancia do objeto espewcifico
-em qualquer lugar da sala dando pontos de referencia em umam layer espicifico
X a posiçao x de onde o objeto vai ser criado
Y a posiçao Y de onde o objeto vai ser criqado
layer_id o id da layer (ou nome) para criar a instancia 
obj o index do objeto da instancia que vc deseja criar
var_struct uma estrutura onde contem as variaveis que seram copiadas 
dentro da nova instancia antes de evento de criaçao

basicamente toda vez que quisermos criar uma instancia usareos essa funçao port exemplo
quando a bolinha sair vamos criar a isntancia obj moprte [onde a bolinha saiu

*/
instance_create_layer(x,room_height,"instances",ObjMorte)
//agora que testamos e fuuncionou teremos aue apagar a explosao depois de um tempo
//para criar algo depois de um tempo iremos usar o evento de alarm a explicaçao estara no evento de criaçao do ObjMorte
//agora vamos fazer o 3 destruir a bolinha que saiu isso ja sabemos basta usar o instance_destroy()
instance_destroy()
/*
e o ultimo passo,recriar a bolinha  encima do player
*/
instance_create_layer(ObjPL.x,ObjPL.y-10,"instances",ObjBola)
//global.isStart = false
//percebemos que quado quaquel bolinha conta como um vida a menos tnewdo uma bolionha ou mais na tela sobrando entao o que faremos 
//voces se lemram do break?
//para quem nao lembra o btreak saia do laço de repetiçao quando aparecia por exemplo quando um num ero for divisivel por i ele saia do laço de repetiçaoi inddependentes
//do quew acinteceu aqntes agora noisa iremos usar algo parecido que no caso e o exit 
//o exitr sai no codigo do event assim que e chamado
//no nosso caso iremos criar o contador de bolinhas e assim que a ultima boloinha saire ai sim mecheremos na vida

