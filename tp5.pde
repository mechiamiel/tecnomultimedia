juego juegoo;
//me falta reincio y arreglar pantallas

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
