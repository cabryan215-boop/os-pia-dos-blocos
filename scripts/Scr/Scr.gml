//nesse arquivo salvaremos as funcoes de salvamento e carregamento do jogo
//lembrando qeu funcoews sao instrucoes pre feitas para chamarmos aonde quisermos,deixando o codigo mais limpo 
//e organizado
//lembrando qeu as funcoes tem parametos que sao usadar para alterar o seu comportamento no nosso caso qunado formos salvar o parametro a ser paassado vai ser
// o nome do arquivo de save vamos chamalo de nome arquirvo de save

//vamos chama-lo de nomeArquivo
//funcao para salvar jogo

//e caso nao passemos o nome do arquivo ele passaracom o nome saveJogo.ini
function salvarJogo(nomeArquivo= "saveJogo.ini"){
	/*
	quando chamarmos ess funcaon eu preciso abrir ou criar o arquivo com este nome para isto usaremos a funçao 
	ini_open()
	traducao:
	funcao ini_open(name:texto do arquivo)retorno indefinido ou vazi0o esta funcao abre um arquivo ini para ler e escrever 
	name o nome do arquivo ini
	
	entao
	*/
	//abro o arquivo de save 
	ini_open(nomeArquivo)
	/*
	omo estamos salvando quer dizer que vamos escrever no arquivop para escrevermos 
	temos duas funcoes e o
	traduçao
	funcao ini_write_real(section: string,key:string,value:real)
	vazio vc pode usar essa funcao para escrever um vaslor numerico em um arquivo de save 
	section:a sessao de arquivo ini para escrever key 0 chave (id) com a relevancia da sessao do arquivo ini para escrever 
	value o o valor reql para escrever a relevancia ao destino
	
	resumindo,a esta funcao serve para escrever valores reais e orde,m deve primeiro:a categoria da informaçao 
	exemplo  dentro da categoria de estatus teriamos os statut separdops como força velocidade hp etc
	por fim?o valor numerico da quela informaçao 
	exemplo:força ==50 velocidade == 60
	
	ini_write_string():
	a diferencia desta funcao para wriste_real e que vc adiciona valores de texto
	no nosso caso queremos salvar por q=enquanto a maior pontuacoa feita 
	
	*/
	//escrever no arquivo maior pontos
	ini_write_real("pontos","maiorPontos",global.maiorPontos)
	//assim qeu terminar de escrever iremos fechar o arquivo de save
	ini_close()
	
	
}

//funcao para carregar os dados salvos
function carregarJogo(nomeArquivo="saveJogo.ini"){
	//primeiro devemos abrir o arquivo de save para isto uaremos a mesa funcao ini_open()
	ini_open(nomeArquivo)
	//na outra funcao o=como querioamos alvar informacao usariamos o ini_write mas agora como queremos ler as imformacoes usaremos a funcao ini_reads_real()
	//e a ini_read_strrng()
	//para melhor entendimento usarei o testo parta explicar ads duas funcao pois o inte
	//e a mesma diferenciando apenas uma receb texto a outra recwevbe numeros
	//deixarei em parenteses os nokmes a ser substituidos seno o lao esquerdo a funcao de string e o lado direito a de numerto
	
	//traducaoes:
	//funcoes ini_read_(string iu real)(section : valor string,key:valor string defalt:valor(string ou read)
	//retorno do tipo (string ou real)
	//voce pode usar ewsaa funcao para ler um valor (string(texto)ou real(numero))do arquivo de daos ini section
	//a seesa0o de onde vai ler dentro do arquivo .ini
    /*
	key a chave (ou identificacao )referente a sessao do arquivo .ini
	defalt o valor (string ou real)para retorno se umvalor (string ou real )nao e encontrado no caminho
	definido (ou o arquivo.ini nao existir )tem que ser um vsalor (string ou real)
	ou seja ,ao usar esta funcao ao passar o cainho corretamente oui caso o arquivo de save nao 
	tenha sido criado ainda esta funcao retornara a um valor padrao
	isto nos ajuda a criar o save de maior pontuacao pois caso seja a primeira vez que o jogador abrir o jogo podemos deixar o menor valor possivel de sere tirado (0),mas das proximas vezes
	que abrir o jogo e o o jogo tenha sido sala automaticamente receberao valor salvoautomaticamente recebera o valor salvo
	
	no nosso caso,receberemos o valor salvo de maiorPontuaca	*/
	//recebo o valor salvo no maior pontuacao (lembrandi que o cainho de carregamento tem que ser igual ao caminho da informacao salva)e,caso tenha o arquivo ou nao ache a informacao recebermos
	//0
	global.maiorPontos=ini_read_real("pontos","maiorPontos",0)
	//assim qeu carregar todos os dados poderemos cvarregar todos os arquivos
	ini_close()
}
	/*
	caso queirem enciontrqr o arquivo save do computador basta ir:(lembrando qeu o que esta em entre parentese e poara ser substituido
	)
	disco loal->usuarios ->(seu usuario)->appdata->local->(nome do seu jogo)
	e abrir o arquivo xcom onome do arquivo que vc definiu
	se nao achar basta abrir o cmd e digitar o segunte comando
	cd c:\users\(seu usuario)\appData\local\(nomedojogo)
	e depois digitar
	(nome dfo arquivo)open	*/