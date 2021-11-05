class juego {

  int estado;
  PImage p, g, i;


  joe joee;
  autos obst;
  autos[] autosarr;
  fondo fondoo;
  casa casaa;


  juego() {

    estado = 0;
    p = loadImage("gp2.jpg");
    g = loadImage("gp1.jpg");
    i = loadImage("inicio.jpg");

println (estado);
    joee = new joe(345, 450, 2, 50); 
    fondoo= new fondo();
    casaa= new casa();
    autosarr = new autos [6];

    for (int i= 0; i < 6; i++) {
      autosarr[i]= new autos();
    }
  }

//le faltaria una boolean ganar/perder
  void pantallas() {
    if (estado==0) {
      image(i, 0,0);
    }
     if((mousePressed && estado==0)){
     estado=1;
    }
      else if (estado==1){
        juegoo.draw(); 
        
    }else if(estado==2){
      image(p,0,0);
      if(mousePressed){
         estado=1;
    }
      
    }
    else if (estado== 3){
      image (g,0,0);
       if(mousePressed){
         estado=1;
    }
    }
  }
  

   void mouse() {
     joee.moverConMouse();
   }
   void update() {
     for (int i= 0; i < 6; i++) { 
       autosarr[i].reciclar();
      joee.reciclar();
     }
   }
    void draw() {
      fondoo.imagen();
      casaa.hog();
      joee.display();

     joee.colision(autosarr);
     joee.colision2(casaa);
    for (int i= 0; i < 6; i++) {
       autosarr[i].autosm();
       autosarr[i].display();
      }
   }
   
}
