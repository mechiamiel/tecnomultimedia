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


  void pantallas() {
    if (estado==0) {
      image(i, 0,0);
      println (estado);
      
    }
     if(estado==0){
        if((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488))
     estado=1;
    }
      else if (estado==1){
        juegoo.draw();
       
        
    }else if(estado==2){
      image(p,0,0);
      if((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)){
     juegoo.reciclar();
        estado=1;
      
         
    }
      
    }
    else if (estado== 3){
      image (g,0,0);
       if((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)){
        juegoo.reciclar();
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

    // autosarr[i].autosm();
     
    
      
     }
   }
     void reciclar(){
       for (int i= 0; i < 6; i++) { 
       autosarr[i].reciclar2();
      
     }
     }
   
     void draw() {
      
      fondoo.imagen();
      casaa.hog();
      joee.display();
      

     joee.colision(autosarr);
     joee.colision2(casaa);
     if (estado==1){
    for (int i= 0; i < 6; i++) {
       autosarr[i].display();
         autosarr[i].autosm();
      }
     }
     }
}
