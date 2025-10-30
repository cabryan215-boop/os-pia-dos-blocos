if global.isFim{
	exit
}
/*
agora e so mostrarb se a quantidade de vbida sobrando atraves dos sprites para isto
vamos usar o identificador como exemplo nos ja sabemos que eu tenho 2 vidas serea 1 bolinha 
quando eu tenho 1 vida nao tera bolinha cesa 
ou sejqa toda vez que a quantidae de vida seja maior que a quantidade de bolinhas acessas 
e para saber qual bolinha deve se acender ou nao é so comparar a quantidade de vida ao identifdicador 
ou seja caso o jogador tenha 3 vidas as vidas 1 e 2 ficaram acessas ja a vida 3 ficara apagada se ele tiver 2 vidas
so a primeira bolinha ficara acessa enquanto asx bolinhsas 2 e ficaram apagadas se tiver uma vida as trres dficaram, apagadasa 
sendo assim temos certeza de que o identificadir for menor ou for maior cou igual a quantudade de vidas ele ficara apagado a bolinha ficara apagada se for menor que a quantidade se o identificador for menor ficara

*/
if identificadorVida>=global.vidas {
	sprite_index=sprVidaUsada
}
else{
	sprite_index=sprBolaVida
}