velocidade=3
/*agora queremos criar as vidas para criar as vidas para criar para criar uma variedade global,usamos global,usamos
global.(nome da variavel)
seria global.vida= 3
so que tem um problema toda vez que criamoas o player, ele tambem vai resetar as vidas pois,quando o sinal de igual esta sozinho,ou seja "="´, ele 
substitui o valor anterior vasmos supor qua a vida atual e 1,ou seja,global.vidas==1
se substituirmos, ficara global.vidas==3
entao,antes de criarmos a varievel,vamos verificar se ela existe.
entao usaremos a funcao variable_global_exists()
essa funçao checa se existe ou nao a variavel,
se ela existirela retorna true
se ela nao existir,retorna false
oque nos queremos e verificar se ela nao existe ou seja,queremos que apenas quando ela nao exista,iremos inioci lacom 3
para isso precisamos inverter o resultado do retorno
para inverter o resultado de algo ,podemos usar "!" 
ela inverte true para false e false para true ou seja se la existir, nao vamos alterar,vai de true para false 
oque queremos e,ela nao exitir iremos alterar ou seja false para true 
*/

if ! variable_global_exists("vidas"){
	global.vidas=3
}
if ! variable_global_exists("pontos"){
	global.pontos=0
}