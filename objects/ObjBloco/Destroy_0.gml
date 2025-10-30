//ao destruir o bloco ele ira somar os pontos 
global.pontos+=10
/*
nos ja somamos mas ainda nao mostramos a quantidade de ponstos na tela para mostrar iremos criar o obj pontos
*/
//quando o objeto bloco for destruido iremos checar qual o tipo dele 
//caso o tipo seja 15 quer dizer que e um bloco com uma bola dentro 
//emtao quando for destruido e o tipo dele for 15 iremos criar uma bolo no lugar
global.quantBlocos--
if tipoBloco == 15{
	instance_create_layer(x,y,"instances",ObjBola)
}
//caso o bloco seja de coraçao 
if tipoBloco == 16 and global.quantVidas<3{
	instance_create_layer(x,y,"instances",ObjVida)
}