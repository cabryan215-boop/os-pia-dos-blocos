/*
dentro do jogo nos queremos que a cada vez que nos perdemos uma vida mostre para o usuario 
em outros jogopoideriamos apenas mostrar a quantidade de vida mas para esse jogo queremos que a quantidade d3e vida
atraves de bolinhas cheias ou nao 
ou seja quaso tivemos e vida dentro ddo jogo,a segunda e a terceira tem que aparecer apagada
mas como vamos saber qual bolinha apagar para isso teremos que usar um meio para identidficar as bolinhas
pelo id ficaria dificil ,pois teriamos que mudar o id manualmente entao vamos criar uma, variavel pára isso 
no caso a primeira bolinha tem que receber no identificador 1 a segunda tem que receber 2 e a terceira 3,porem se fizemos apenas uma varial interna isso nunca funcionaria 
entao teriamos que criar uma maneira externa para criar as variaveis e esta maneira sera atraves de uma variavel global faremos isso pois teriamos acesso a valor referente a quantidade de vidas de qualquer instancia
mas,se apenas criarmos a vareiavel sem checar se ela ja existe perderiamos o sentido de criar uma variavel 
entao antes de criar a variavel global checaremos se ela ja existe [se ela ja existe significa que ja temo uma intancia de objVidas
entao aumentaremos 
*/

if variable_global_exists("quantVidas"){
	global.quantVidas++
}
else{
	global.quantVidas = 1
}

identificadorVida = global.quantVidas