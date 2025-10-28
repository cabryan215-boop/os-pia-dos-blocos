batidas++
//coloca o coracao para pular
DirecaoVertical= -8
//desacelerar
gravidade=0.2
//quando colidir e esdtiver a direita vai a esquerda e vice versa
// para isto basta multiplicalo por -1
DirecaoHorizontal=1.2 * sign(DirecaoHorizontal)* -1
//direwçao do giro da instancia
VelocidadeGiro *= -1