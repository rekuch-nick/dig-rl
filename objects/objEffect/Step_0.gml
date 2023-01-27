


x += xs;
y += ys;
ys += grav;

image_alpha -= fade;
if(flicker){ image_alpha = random_range(.2, 1); }

timeCD --;

if(timeCD < 1 || image_alpha < 0){
	instance_destroy();
}