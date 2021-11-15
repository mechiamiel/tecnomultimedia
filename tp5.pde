
//https://youtu.be/MMTmk0y17A8

juego juegoo;


void setup(){
size (800,600);
juegoo = new juego();

}
void draw(){

 juegoo.update();
 juegoo.draw();
  juegoo.pantallas();
}
void mouseMoved() {
  juegoo.mouse();
}
