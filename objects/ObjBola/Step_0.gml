//primeiro vamos seguir o x do player 
//jeito errado de seguir o player 
//x=ObjPL.x

//com esse metodo ate funciona mas para iniciar o jogo nao podemos fazer dese jeito pois nao podemos seguir o player desse jeito 
//para sempre entao temos que verificar se o jogo ainda nao iniciou se nao iniciou vamos seguir o prayer se iniciou vamos parar de segui-lo
//para fins de rapidez vamos usar uma variavel para isso ela vai ser cria-la no create e altera-la assim que clicarmos para cima 
//nos vamos usar o idf para verificar se jogo inicou ou nao mas o if som funciona se a condiçao/variavel e verdadeira como nos
//nosa queremos o contrario disso ou seja so funciona quando for falso teremops que inverter o valor de false pra true ou seja funcionar quando
//o jogo nao começar e de true para false quando o jogo iniciar pararemos de seguir o player
//parta invertero valor para true e false temos um operador para isso voces sabem qual é? a "!"(em outras linguagens podemos usar como not)
//entao se o jogo nao começou podemos seguir op player
if ! isStart{
  //seguindo o player 
  x=ObjPL.x
  //e agora caso opertemos para cima a bola deve se mover e alterar o isStartpara true
  if keyboard_check(vk_up)or keyboard_check(ord(w))or keyboard_check(vk_space){
	  //vai para cima
	  direcaoVertical=-1
	  //para a direçao horizontal podemos usar a referencia da localizaçao atual da bola ,entao caso a bola esteja mais a esquerda
	  //a bola vai para a direita se tiver mais a  direita a bola vai mais a esquerda
	  //para sabermos se ela esta mais a direita ou a esquerda vamos pegar a largura da sala e dividir por 2
	  //,ou seja, saberemos qual a metade do tamanho da sala
	  //caso o x seja menor quie o tamanho da sala, esta mais a esqueda ou a direitra?
	  //na esquerda e se caso o x seja maior que a metade, estara a direita
	  direcaoHorizontal=random
	  if x <room_width/2{
		  direcaoHorizontal=2
	  }
	  else{
		  direcaoHorizontal= -2
	  }
   
   //indique que o jogo foi iniciado com isStart recbendo true
     isStart=true
   }
}
// se o jogo ja começou
else{
    //primeiro vamos fazer as interaçoes com o objcolisaopara isso
	//usaremos a funçao place_meeting()
	
}
//no final some as direçoes com as suas perspectivas variaveis vezes a velocidade 
//x somo com a direçao horizontal
x+=direcaoHorizontal*velocidade
//y soma com a direçao vertical
y+=direcaoVertical*velocidade
