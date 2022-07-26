void initialization(){
     TRISA = 0x1f;  //setting register ports A as input
     TRISB = 0x00;  //setting register ports B as output

}



void main() {
          initialization();
     do{
        if(PORTA.F0 =1){     // Testing if the switch is ON
        
                    PORTB = 0b1111110;
                    Delay_ms(500);
                    PORTB = 0b0110000;
                    Delay_ms(500);
                    PORTB = 0b1101101;
                    Delay_ms(500);
     }
      else if(PORTA.F1 = 1){
                    PORTB = 0b1111001;
                    Delay_ms(500);
                    PORTB = 0b0001110;
                    Delay_ms(500);
                    PORTB = 0b1011011;
                    Delay_ms(500);
     }
      else if(PORTA.F2=1){
                     PORTB = 0b1011111;
                    Delay_ms(500);
                    PORTB = 0b1110000;
                    Delay_ms(500);
                    PORTB = 0b1111111;
                    Delay_ms(500);
      }
      else if(PORTA.F3 = 1){
                    PORTB = 0b1110011;
                    Delay_ms(500);
                    PORTB = 0b1111111;
                    Delay_ms(500);
                    PORTB = 0b1110000;
                    Delay_ms(500);
                    PORTB = 0b1011111;
                    Delay_ms(500);
                    PORTB = 0b1011011;
                    Delay_ms(500);
                    PORTB = 0b0001110;
                    Delay_ms(500);
                    PORTB = 0b1111001;
                    Delay_ms(500);
                    PORTB = 0b1101101;
                    Delay_ms(500);
                    PORTB = 0b0110000;
                    Delay_ms(500);
                    PORTB = 0b1111110;
                    Delay_ms(500);
      }
      else if(PORTA.F4 = 1){
                   PORTB = 0b1111110;
                   Delay_ms(500);
                   PORTB = 0b0110000;
                   Delay_ms(500);
                   PORTB = 0b1101101;
                   Delay_ms(500);
                   PORTB = 0b1111001;
                   Delay_ms(500);
                   PORTB = 0b0001110;
                   Delay_ms(500);
                   PORTB = 0b1011011;
                   Delay_ms(500);
                   PORTB = 0b1011111;
                   Delay_ms(500);
                   PORTB = 0b1110000;
                   Delay_ms(500);
                   PORTB = 0b1111111;
                   Delay_ms(500);
                   PORTB = 0b1110011;
                   Delay_ms(500);
                   
      }
      else{
      PORTB = 0b0000000;
      }
     }while(1);
}