
class botones{
  public:
 int pin_ida=2;
  int pin_vuelta=6;
  
  
};
botones general;



void setup()
{
  Serial.begin(9600);
  pinMode(general.pin_vuelta, INPUT_PULLUP);
  	
  pinMode(general.pin_vuelta+1, INPUT_PULLUP);
    
  pinMode(general.pin_vuelta+2, INPUT_PULLUP);
    
  pinMode(general.pin_vuelta+3, INPUT_PULLUP);
    
  
  
  	pinMode(general.pin_ida, OUTPUT);
  		digitalWrite(general.pin_ida, HIGH);
   	pinMode(general.pin_ida+1, OUTPUT);
  		digitalWrite(general.pin_ida+1, HIGH);
   	pinMode(general.pin_ida+2, OUTPUT);
  		digitalWrite(general.pin_ida+2, HIGH);
  	pinMode(general.pin_ida+3, OUTPUT);
 		digitalWrite(general.pin_ida+3, HIGH); 
 
  
  
} 


int fila=0;



void loop()
{
  
  int dato=0;
  
  dato=lectura(fila);
  
  
  if(dato!=0){
    Serial.println(dato);
    do{
    dato=lectura(fila);
    }
    while(dato!=0);
  }
  
  fila=fila+1;
  if(fila>=4){
    fila=0;
  }
  
  
  
  
  
  
  
  
  
}


int lectura(int fila){
 	int dato=0;
  
  digitalWrite(general.pin_ida+fila,LOW);
  if(digitalRead(general.pin_vuelta)==LOW){
   dato=(4*fila)+1; 
  }
  else if(digitalRead(general.pin_vuelta+1)==LOW){
   dato=(4*fila)+2; 
  }
  
  else if(digitalRead(general.pin_vuelta+2)==LOW){
   dato=(4*fila)+3; 
  }
  
  else if(digitalRead(general.pin_vuelta+3)==LOW){
   dato=(4*fila)+4; 
  }
digitalWrite(general.pin_ida+fila,HIGH);
  
  return(dato);
}

  