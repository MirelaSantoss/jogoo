direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
pulo = keyboard_check_pressed(ord("W"));

hveloc = (direita - esquerda) * velocidade;

 //gravidade caso não esteja colidindo
if !place_meeting(x, y + 1, Obj_parede){
	vveloc += gravidade;
} else {
	if pulo{
	vveloc = -2.8; } //para pular
}

if place_meeting(x + hveloc, y, Obj_parede){
	while !place_meeting(x + sign(hveloc), y, Obj_parede){
		
		x += sign(hveloc);
		}// se colidir:
		
		hveloc = 0;
} // colisão horizontal parede - personagem
	

x += hveloc;

if place_meeting(x, y + vveloc, Obj_parede){
	while !place_meeting(x, y + sign(vveloc), Obj_parede){
		
		y += sign(vveloc); 
	}
	
	vveloc = 0;
} // colisão vertical parede - personagem

//se n estiver colidindo:

y += vveloc;






