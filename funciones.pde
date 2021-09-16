void funciones () {
  if ((estado=="presentacion") && (CreditosComenzar==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="montañarusa";
    } else if
      (botones(289, 400, 243, 286)) {
      estado="creditos";
    }
  }

  if ((estado=="montañarusa") && (NoSube==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="subeaMR";
    } else if
      (botones(289, 400, 243, 286)) {
      estado="acasa";
    }
  }

  if ((estado=="acasa") && (CreditosReinicio1==true)) {
    if (botones(289, 400, 243, 286)) {
      estado="creditos";
    } else if  (botones(86, 202, 243, 289)) {
      estado="presentacion";
      inicializarvariables();
    }
  }

  if ((estado=="subeaMR") && (cinturonSiNo==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="arrancaMR";
    } else if  (botones(289, 400, 243, 286)) {
      estado="volando";
    }
  }

  if ((estado=="volando") && (siguienteI==true)) {
    if (botones(289, 400, 243, 286)) {
      estado="muereI";
    }
  }

  if ((estado=="muereI")&& (CreditosReinicio2==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="presentacion";
      inicializarvariables();
    } else if (botones(289, 400, 243, 286)) {
      estado="creditos";
    }
  }
  if ((estado=="arrancaMR")&& (NoGrita==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="mosca";
    } else if (botones(289, 400, 243, 286)&& (NoGrita==true)) {
      estado="vomita";
    }
  }


  if ((estado=="mosca")&& (siguienteII==true)) {
    if (botones(209, 400, 243, 286)) {
      estado="muereIII";
    }
  }

  if ((estado=="muereIII")&& (CreditosReinicio3==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="presentacion";
      inicializarvariables();
    } else if (botones(289, 400, 243, 286)&& (CreditosReinicio3==true)) {
      estado="creditos";
    }
  }

  if ((estado=="arrancaMR") && (NoGrita=true)) {
    if (botones(289, 400, 243, 286)) {
      estado="vomita";
    }
  }
  if ((estado=="vomita")&& (perdonSiNo==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="novios";
    } else if (botones(289, 400, 243, 286)&& (perdonSiNo==true)) {
      estado="pelea";
    }
  }

  if ((estado=="pelea")&& (siguienteIII==true)) {
    if (botones(289, 400, 243, 286)) {
      estado="muereII";
    }
  }

  if ((estado=="muereII")&& (CreditosReinicio4==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="presentacion";
      inicializarvariables();
    } else if (botones(289, 400, 243, 286)&& (perdonSiNo==true)) {
      estado="creditos";
    }
  }


  if ((estado=="novios")&& (boda==true)) {
    if (botones(289, 400, 243, 286)) {
      estado="boda";
    }
  }

  if ((estado=="boda")&& (CreditosReinicio5==true)) {
    if (botones(86, 202, 243, 289)) {
      estado="presentacion";
      inicializarvariables();
    } else if (botones(289, 400, 243, 286)&& (perdonSiNo==true)) {
      estado="creditos";
    }
  }
}
