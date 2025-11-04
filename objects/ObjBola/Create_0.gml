
/*
vamos começar criando as varievaveis de direçao e de velocidade da bola
*/
//vamos iniciar a variavel com velocidade recebendo 3
velocidade=3
//e agora vamos definir as direçoes,ambas iniciando zeradas
direcaoVertical=0
direcaoHorizontal=0
//e tambem temos que inicar com a bola no meio como podemos fazer isso?entao o x da bola,
//tem que ser o x do player e o y da bola deve ser apenas alguns pixels acima do player
//aqui ta o motivo da bola iniciar la em baixo o player,i 
//certo escolhemos a adaptaçao,entao iniciamos tirando 
//x=ObjPL.x
//y=ObjPL.y-10
// so que tem um problema toda vez que a bolinha for criada ela vai aparecer no meio player so
// que nem toda bola é criada acima do player,afinal,temos blocos que geram bolas ou seja teremos que criar um jeito
//de verificar se é o inicio do jogo
//podemos criar objestos proprios para bolas que provem de blocos (vamos usar esse metodo pois eu que dei a ideia e eu sou foda)
//apesar da bola iniciar noi lugar certo ela nao segue o player para seguir teremos que usar uma outra funçao no step
//global.isStart=false //esta deve ser uma variavel global

//lemra que eu falei que futuramente fariamos a varievel sendo global?
//e por isso nos vamos verificar se o jogo comecou ounao 
//e ele vai comrçar e depois ir para cima do player 
//e quando nao estiver vai iniciar com uma direçao aleatoria
//nao esqueça de verificar se a variavel global ja exite
if ! variable_global_exists("isStart"){
	global.isStart=false
	x= ObjPL.x
	y=ObjPL.y - 10
}
else{
	//caso exita iremosd aleatorizar a direçaoi para qual a bola va
	direcaoHorizontal=irandom_range(0,1)
	direcaoVertical=irandom_range(0,1)
	//sao -1,1 e 0
	
	//optamos pela direita a agora a chance de ir para di
	if direcaoHorizontal == 0{
		direcaoHorizontal= -1
	}
	if direcaoVertical == 0 {
		direcaoVertical= -1
	}
}
//proceso de criaçao da quantidade bolas
if ! variable_global_exists("quantBolas"){
	global.quantBolas=1
}
else{
	global.quantBolas++
}
//local para armazenar o angulo que a bola vai se mover
armazenarAnguloVertical=1
armazenarAnguloHorizontal=1








