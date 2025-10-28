//caso nao tenho batida contra o playet 
if batidas == 0{
	//desce a tela
	y += gravidade*2
}
//quando for a ultima batida
else if batidas==5{
	//aumentra a quantidade de vidas do player
	global.vidas++
	//destruir a instancia  
	instance_destroy()
}
//se nao for nem a primeira nem a ultima batida
else{
	//ganha o efeito da gravidade
	DirecaoVertical+=gravidade
	//soma a direcao ao y
	y+=DirecaoVertical
	x+=DirecaoHorizontal
	image_angle+=VelocidadeGiro
}
/*
quandoi colidir com o obj bloco a afastamento tem que ser maior pois ao player pode usqar disto para tirar vantatgem
para evitar mandaremos o que o dobro do qu ha normalmente na direcao horizxontal
mas para nao bugar a direçao teremops que receber um novo valor [e para nao perder a direcao tretermos que pegar se o valor 
que ha em direçaoe positivo ou negartivo e 9independente do qei vier 
multiplicaremos por -1 assim mandando para para o outto lad0 mas como saberemos se o valore e positivo ou negativo
para isso usaremos a funçaop sign
traduçao funçao sing(n:valor reaql)retorno real
esta funcao retorna quando o numero  e positivo negtativo ou nehum 
e retorna 1,-1ou 0 respectivamente
n o numero para pegar o sinal

*/
if place_meeting(x+DirecaoHorizontal,y,ObjColisao){
	DirecaoHorizontal*= 2.5* sign(DirecaoHorizontal)* -1
}