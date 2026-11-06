


class historial{
  
  
}

class gene{
 int  etapa=1,progreso=1; 
  float a,b,res;  


}
//declaracion global
gene general = new gene();


//declaracion de funciones






void setup(){
 size(640,460);
  frameRate(60);
    
  background(255,255,255);
  
  
}



void draw(){
   
  
  int contes;  
   textSize(60);
  fill(0); 
  
  
  
  switch(general.etapa){
   
  case 1:
  
  pregunta();
 
  
  break;
  
  case 2:
  
  contes=1;
  Respuesta(contes);
  
  break;
  
  
  case 3:
  
  
  break;
  
  default:
  
  break;
  }
  
}

void Respuesta(int contes){
 
    
  if(general.res==contes){
    
    text("correcto",20,200);
    
    
    general.etapa=3;
    
  }
  
  
  
  
  
}

void pregunta(){
   
  
  
  switch(general.progreso){
  case 1:
  
  general.a=int(random(10));
    
  general.b=int(random(10));
  
  general.res=general.a+general.b;
  
  
  
  break;
  case 2:
  
  general.a=int(random(10));
    
  general.b=int(random(10));
  
  general.res=general.a-general.b;
  
  break;
  

  }
 
  general.etapa=2;
  
}
