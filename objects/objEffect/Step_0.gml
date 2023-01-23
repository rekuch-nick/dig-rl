


x += xs;
y += ys;
ys += grav;

image_alpha -= fade;

timeCD --;

if(timeCD < 1 || image_alpha < 0){
	instance_destroy();
}