
class joe {
  float x;
  float y;
  float vel;
  PImage joe;
  float prueba; //prueba para armar la colision ganar/perder
  boolean a =false;
  boolean o =false;
  boolean comenzar =false;


  float xb;
  float yb;
  float xb2;
  float yb2;

  joe (float xj, float yj, float velj, float pruebaa) {

    x= xj;
    y= yj;
    vel=velj;
    prueba= pruebaa;
    joe = loadImage("f.png");
  }


  void display () {
    image (joe, x, y);

    joe.resize( int(prueba), int(prueba) );
  }



  void moverConMouse() {
    x = mouseX;
    y= mouseY;
  }
  void colision(autos [] au) {
    for ( int i = 0; i < au.length; i++ ) {
      float xau= au[i].getX();
      float yau= au[i].getY();
    //  float d = dist (xau + 90, yau +60, x, y  );
      
      if (x <  xau + 90 && x > xau && y <  yau + 30 && y > yau  && a==false && o ==false && comenzar==true ) { //tobias
        o=true;

        juegoo.estado = 2;
      }
    }
  }

  void colision2(casa c) {
   
    float xca= c.getX();
    float yca= c.getY();



    if ((x < 800  && x > 1 && y < 120   && y > 0 )) {

      a=true;
    } else if ((x < 800  && x > 1 && y > 120   && y < 600)) {
      a=false;
    }

    if (x <  xca + 150  && x > xca && y <  yca + 100 && y > yca && a==true && o==false && comenzar==true  ) {

      juegoo.estado =3;
      o=true;
      a=false;
    }








    if (juegoo.estado ==3) {
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
        a =false;
        o =false;
      }
    }

    if (( juegoo.estado ==2 && comenzar==true)) {
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
        a =false;
        o =false;
      }
    }
    //println ("a" + a);
    //println ("o" + o);
    //println (comenzar);
    //println (mouseY);
    //println (mouseX);


    if ( juegoo.estado==1) {
      if ((mousePressed) && (mouseY > 488 && mouseX > 301 && mouseY <565 && mouseX < 488)) {
        comenzar =true;
        a =false;
        o =false;
      }
    }
  }
}
