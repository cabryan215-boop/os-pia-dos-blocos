
//toda vez que a vida chegue a zero iremos mostrar a tela de morte para isso mostraremos a funçao
//layer_set_visible
//traduçao:
//funçao leyer_set_visible(layer_id:nome em texto ou o id da layer,visible:valor booleano)->retorno vazio
//ou indefinido 
//com essa fhnçao voce pode trocqr a visibilidade de uma layer 
//leyer_id o valor unico de um id da layer alvo (ou o nome da layer em texto)
//visible quando tornar a layer visible(true)ou nao (false)
//ou seja toda vez que a vida chegar a zero as duas laye vao se tornar visivel

if global.vidas <=0{
	layer_set_visible("TelaMorte",true)
	layer_set_visible("TelaMorteFundo",true)
	global.isFim=true
}