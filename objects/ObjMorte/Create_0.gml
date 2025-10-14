/*
os alarmes possuem propriedades 
1: os alarmes sao parec9dos com vetores ou seja o primeiro larm fica na posiçao 0 
e o ultimo fica na wquantikdade de vetores menos um 
sabendo disso e tambem sabendo que temos 12 vetores qual a posiçao do ultimo alarme isso 11

2: ao passar o valor ao vetopr (exp: alarm[0]=10),ele ira diminuir em 1 a cada frame ou seja se vc atribuir por exemplo
10 que diuzer que vaui demorar 10 framesd para funcionar 

3:vo alarm assim que chega a 0 ira rodar o codigo que ha dentro dele por exemplo se vc colocar dentro de um alarm ele criar [um inimigo e colocar para ele receber 10
quer dizern que a cada 120 framesd ele ira criar um novo inimigo
entao sabendo que cada segundo possui 60- frames 
entao e so cvolocar o alarme para receber 60 veses a quantidade de frames
que a cada segundo quwe voce calcuklar ele ira rodar o codigo 
no nosso caso queremos que assi  que criar uma instancia do objMOrte 
queremks que ela seja destruida em 2 segundos 
sabendo disso qual sintax devemos usar para fazer isso?
*/
alarm[0] = 60 * 2