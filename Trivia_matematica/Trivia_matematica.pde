class historial{
  
  
}

class gene{
 int  etapa=1,res; 
  
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
    
    general.etapa=3;
  }
  
  
  
  
  
}

void pregunta(){
 
  
  general.res=10;
  general.etapa=2;
  
  
}
