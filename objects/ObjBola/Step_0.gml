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
if ! global.isStart{
  //seguindo o player 
  x=ObjPL.x
  //e agora caso opertemos para cima a bola deve se mover e alterar o isStartpara true
  if keyboard_check(vk_up)or keyboard_check(ord("W")) or keyboard_check(vk_space){
	  //vai para cima
	  direcaoVertical=-1
	  //para a direçao horizontal podemos usar a referencia da localizaçao atual da bola ,entao caso a bola esteja mais a esquerda
	  //a bola vai para a direita se tiver mais a  direita a bola vai mais a esquerda
	  //para sabermos se ela esta mais a direita ou a esquerda vamos pegar a largura da sala e dividir por 2
	  //,ou seja, saberemos qual a metade do tamanho da sala
	  //caso o x seja menor quie o tamanho da sala, esta mais a esqueda ou a direitra?
	  //na esquerda e se caso o x seja maior que a metade, estara a direita
	  if x <room_width/2{
		  direcaoHorizontal=1
	  }
	  else{
		  direcaoHorizontal= -1
	  }
   
   //indique que o jogo foi iniciado com isStart recbendo true
     global.isStart=true
   }
}
// se o jogo ja começou
else{
    //primeiro vamos fazer as interaçoes com o objcolisaopara isso
	//usaremos a funçao place_meeting()
	//descriçao:
	//traduçao:fançao place_meeting(x:valor real,y:valor real,obj:ID. elemento do title map ou imagem dom asset
	//ou Id.da instancia ou constancia. todos os objetos de um vetor deles)retorno de um valor booleano
	//(true ou false)
	//com com essa funçao vc consegue checar em uma posiçao para uma colisao com outra instancia ("ser") ou todas
	//as instancias de um objeto(""tipo),usa a mascara da instancia para iniciar o codigo0 para checar 
	//x a posiçao do x para checar 
	//y a posiçao y para checar 
	//obj a instancia (ser) ou objeto (tipo) queb queira checar 
	
	//ou seja com essa fucao podemos verificar se vai haver uma colisao em um lugar especifico
	//no nosso caso vam,ois usar para determinar para qual direçao devemos ir 
	//primeiro vamos configurar as laterais 
	//ou seja a esquerda ou a direita 
	//colisao na esquerda 
	//usaremos o objeto de colisao para testar as colisoes mais facilmente 
	if place_meeting(x-velocidade,y,ObjColisao){
		direcaoHorizontal=1
	}
	if place_meeting(x+velocidade,y,ObjColisao){
	    direcaoHorizontal=-1
	}
	if place_meeting(x,y-velocidade,ObjColisao){
		direcaoVertical=1
	
	}
	if place_meeting(x,y+velocidade,ObjPL){
		direcaoVertical=-1
	
	}
	//agora vamos começar as colisoes comos blocos
	//primeiro vamos checar a direçao de onde ocorrera a colisao
	//para isso vamos usar a funçao place_meeting()
	//caso ocorrer na esquerda
	/*/*
		Mas eu não destruir o bloco que a bola colidiu apenas usando instance_destroy(objBlocos)
		Por que não podemos usar? É só olharmos a descrição da função
		Descrição:
		function instace_destroy([id: Asset.GMObject OR Id. Instance OR Constant.All], [execute_event_flag: Blool]) -> Undefined
		You call this function whenever you wish to destroy an instance, normally triggering a Destroy Event and also a Clean Up Event.
		id The instance ID or object_index to destroy (optional, default is the calling instance) execut_event_flag Set to truer or false to perform the destroy envent or not (optional, defult is true)
		
		Tradução
		Função instance_destroy([id: Asset Objeto ou Id. da instancia ou Contat. Todas as instancias], [execute_event_flag: valor boolenano]) retorn indefinido ou vazio
		Você chama esta função quando você deseja destruir uma instancia, normalmente ocasiona no evento de destruição também no evento de limpeza
		id A identificação da instancia ou o index do objeto (opcional, porque o padrão é deletar a instancia-
		- que chamou a função) 
		execute_event_flag Verdadeiro ou falso para permitir o evento de destruição ou não(opcional pois o
		- padrão é true)
		
		Então, caso coloquemos para destuir o objBlocos, ele destruirá todas as instancia daquele blocos
		Para resolver isto, podemos fazer de 2 jeitos
		O primeiro, é adicionar ao objBlocos, o evento de colsião com o objBola, e destruir o bloco lá
		A segunda e destuir a instancia recebendo o id dela quando colidirmos com uma
		Qual método, querem usar? Eu particulamente, prefiro pela segunda opção.
		Segundo Ganhou
		Ok, com sgundo método, usaremos a função place_instance()
		Descrição da função:
		function instance_place(x: Real, y: Real, obj: Id. TileMapElement OR Asset.GMObject -
		- OR Constant.All OR Array) -> Id. Instance
		With this function you can check a position for a collision with another instance or -
		- all instances of an object
		using the collision mask of the instance that runs the code for the check.
		X The x position to check for instances.
		y The y position to check for instances.
		obj The object to check for instances of.
		Tradução:
		Função instance_place(x: valor Real, y: valor Real, obj? Id do tilemap, ou Asset. Objeto, ou Constante. todos os objetos ou um vetor de objetos) retorno id da instancia
		Com esta função, você conseguegue  chegar uma posição aonde ocorrerá uma colisão se houve iremos receber o ID da instancia
		e depois destruila
		*/
		

	if place_meeting(x-velocidade,y,ObjBloco){
		
		blocoAcertado = instance_place(x-velocidade,y,ObjBloco)
		
		instance_destroy(blocoAcertado)
		
		direcaoHorizontal=1
	
	}
	if place_meeting(x+velocidade,y,ObjBloco){
		
		blocoAcertado=instance_place(x+velocidade,y,ObjBloco)
		
		instance_destroy(blocoAcertado)
		
		direcaoHorizontal=-1
	
	}
	if place_meeting(x,y-velocidade,ObjBloco){
		 
		blocoAcertado=instance_place(x,y-velocidade,ObjBloco)
		
		instance_destroy(blocoAcertado)
		
		direcaoVertical=1
}
if place_meeting(x,y+velocidade,ObjBloco){
		 
		blocoAcertado=instance_place(x,y+velocidade,ObjBloco)
		
		instance_destroy(blocoAcertado)
		
		direcaoVertical=-1
}
}
//no final some as direçoes com as suas perspectivas variaveis vezes a velocidade 
//x somo com a direçao horizontal
x+=direcaoHorizontal*velocidade
//y soma com a direçao vertical
y+=direcaoVertical*velocidade
