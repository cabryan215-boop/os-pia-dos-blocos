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

x=ObjPL.x
y=ObjPL.y-10
// so que tem um problema toda vez que a bolinha for criada ela vai aparecer no meio player so
// que nem toda bola é criada acima do player,afinal,temos blocos que geram bolas ou seja teremos que criar um jeito
//de verificar se é o inicio do jogo
//podemos criar objestos proprios para bolas que provem de blocos (vamos usar esse metodo pois eu que dei a ideia e eu sou foda)
//apesar da bola iniciar noi lugar certo ela nao segue o player para seguir teremos que usar uma outra funçao no step
isStart=false //esta deve ser uma variavel global










