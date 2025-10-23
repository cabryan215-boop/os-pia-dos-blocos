/*
toda vez que clicarmos uma vez no objeto restart ele reinivciara o jogo 
e fara a tela de morte sumir
*/
layer_set_visible("TelaMorte",true)
layer_set_visible("TelaMorteFundo",true)
global.isFim=false
//assim que resetamos percebemos que as outras variaveis globais nao sao reiniciadqas jntas
//isso acontece pois a existincia das variaveis globais nao sao apagadas,e la no jogoaonde checamos a existencia
//funcionam com elas existentes para resolver isso precisamos apenas resetar manualmente ou pagar a existencia delas
//resetando o bloco na altura certa e de mais variaveis 
global.AlturaCerta=false
global.isStart=false
global.quantBlocos=0
global.maiorPontos=0
global.quantBolas=0
global.quantVidas=0

room_restart()