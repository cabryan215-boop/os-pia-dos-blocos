//queremos criar aq chance de nscer um bloco com uma bola
//para isto usaremos uma funçao para aleatortizar os numerods
//a chance e um bloco nascer com uma bola dentro sera de 1 para 15
//funçao random_range(n1:vqalor range,n2:valor real) retorno real
/*
esta funçao e similar ao random_range(),mas apenas com os numeos inteiros 
n1 o menor valor posivel do intervalo sera sorteado
n1 o maior valor posivel do intervalo sera sorteado

e caso o numero sortedo seja o 15,ele iniciara com uma bola dentrro
*/
tipoBloco=irandom_range(1,15)

if tipoBloco == 15{
	//trocar o sprite por um com a bola dentro
	sprite_index=SprBlocoBola
}
if tipoBloco==16 and global.vidas<3{
	sprite_index=SprBlocoCoracao
}
if !variable_global_exists("quantBlocos"){
	global.quantBlocos=1
}
else{
	global.quantBlocos++
}