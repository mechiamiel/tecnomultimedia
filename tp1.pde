//CIRCULO CROMATICO RGB

void setup (){
  size (1000, 700);
  background (#FFFFFF);
}

void draw (){
stroke(220);
line (350,290,640,240);
line (520,510,640,240);
line (520,510, 350,290);
 

  stroke (1);
line (490,190,655,410);
line (490,190,370,450);
line (655,410,370,450);


 noStroke();
fill(120, 255, 0);
circle (680,325, 70);

stroke (1);
fill(0,255,0);
circle (655,410, 95);

noStroke();
fill (0,255,120);
circle (600, 490, 70);


fill(0,255,120);
circle (600, 490, 70);


fill (0,255,255);
circle (520,510,70);

fill (0,120,255);
circle (440,500,70);

stroke (1);
fill(0,0,255);
circle (370,450,95);

noStroke();
fill(120,0,255);
circle (340, 370,70);

fill (255,0,255);
circle (350,290, 70);

fill (255,0,120);
circle (410, 220,70);

stroke(1);
fill (255,0,0);
circle (490,190,95);
noStroke();
fill(255,120,0);
circle (575, 200,70);

fill(255,255,0);
circle (640,240,70);


}
