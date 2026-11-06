


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
  
  contes=0;
  
  Respuesta(contes);
  
  break;
  
  
  case 3:
  
  espera();
  
  break;
  
  default:
  
  break;
  }
  
}

void pregunta(){
   
  
  
  switch(general.progreso){
  case 1:
  
  general.a=int(random(1));
    
  general.b=int(random(1));
  
  general.res=general.a+general.b;
  
  
  
  break;
  case 2:
  
  general.a=int(random(2));
    
  general.b=int(random(1));
  
  general.res=general.a-general.b;
  
  break;
  

  }
 
  general.etapa=2;
  
}


void Respuesta(int contes){
 
    
  if(general.res==contes){
    
    text("correcto",20,200);
    if(general.progreso==2){
    text("correcto",20,230);
    }
    general.etapa=3;
    
  }
  
  
  
  
}



void espera(){
   
  int z=0;
  
  do{
    
    
  }
  while(z==1);
 general.etapa=1;
  general.progreso=general.progreso+1;
}
