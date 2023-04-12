qtd = 50
linhas_limit = 18

var xpos = 32
var ypos = 32



for(i=0; i<qtd; i++)
{
	var objeto = obj_brick
	if (irandom_range(0,3)==0) {objeto = obj_brick_02} //gera uma chance de 1 em 3 de trocar de tijolo
	
	if (i%linhas_limit == 0) {ypos += 48 xpos = 32} //quando o a divisão entre I e o limite for igual a 0, o loop desce a linha
	instance_create_layer(xpos,ypos,"brick",objeto) // cria uma instancia na posicao dsejada
	xpos += objeto.sprite_width+10 // avança para a posicao em x seguinte
}