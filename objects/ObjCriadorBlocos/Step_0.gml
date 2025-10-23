if global.isFim{
	exit
}
/*
aqui,toda vez uqe a quantidad3 de bloosa chegar q zero cpmeçaremos a criar a blocos como como criaremos mais de 1 
terewmos que usar o laço de repetiçao

lembrwando que laços de repetiçao executam uma tarefa ate cumpreir uma certa condiçao pu descumprila no nossa casa usastremops o while que funcionara enquanto a condiçao dentro dele é verdadeira 

no nossa casio usaremos dois laços um para cada linha e dentro do laço das linhas um para cada e as nossa condiçoes vao ser enquanto a variavel de conta fo rmewnor que a quantidade de linas/blocos
criaremow um novo bloco 
e depoius que tivermos certeza que tudo foi criado corretamwentew faremos eles entrarem descendo da tela

entao criamos a variavel de linhas
*/
if global.quantBlocos==0{
	i=0
	while i<linhas{
		j=1
		while j<colunas{
		//criar uma instanci do obj bloco oquye faremnos de diferencia e que criaremos a posiçao
		//horizontal do bloco apartir da multiplicaçlao da posiçao do j
		//porque fariamos isso?pois assim a cada iunicializacao do laço o bloco se movera
		//para depopis do ultimo bloco
		//no nosso caso multiplicaremos 64 por j
		//entao o primeiro bloco iniciaria nmo x 0,o segundo no x 64
		//o terceiro no x 128
		//mas perceberam o erro aqui?isso ao criar o primeiro ele iniciarioa no x 0 entao estando grudado na parede 
		//para corrigir isso iniciaremos o j no 1 aassim o primeiro boloc começa no 64
		//o segundo no 28 o terceiro no 192 e assim por diante 
		//depoios faremos a parte do y
		//no final de cada laçoaumentaremos o valor de j em 1
		//usaremos a intancia instance_crete_layer
		//aqui nao tem problema de começar fora da tela pois no jogo os blocos aparecem descendo assim qe acaba o jogo por isso iremos criar
		//os blocos fora de tela 
		//e depois mandar descer 
		instance_create_layer(64*j,475,"instances",ObjBloco)
		j++
		global.quantBlocos++
		
		}
		i++
	}
	
}
