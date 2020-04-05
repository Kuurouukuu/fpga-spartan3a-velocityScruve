#include <PID_v1.h>
#include <PinChangeInterrupt.h>
//#include <MsTimer2.h>
// PID motor position control.
// Thanks to Brett Beauregard for his nice PID library
#define encodPinA1      2                       // Quadrature encoder A pin
#define encodPinB1      8                       // Quadrature encoder B pin
#define M1              9                       // PWM outputs to L298N H-Bridge motor driver module
#define M2              10
#define activate        7
#define toQuadA        12
#define toQuadB         13

double kp = 5 , ki = 1 , kd = 0.01;             // modify for optimal performance
double input = 0, output = 0, setpoint = 0;
long temp;
long encoderPrev;
volatile long encoderPos = 0;
long newposition;
long oldposition = 0;
unsigned long newtime;
unsigned long oldtime = 0;
long vel;

PID myPID(&input, &output, &setpoint, kp, ki, kd, DIRECT);  // if motor will only run at full speed try 'REVERSE' instead of 'DIRECT'

void setup() {
  //MsTimer2::set(100, updateDiff);
  //MsTimer2::start();
  pinMode(encodPinA1, INPUT_PULLUP);                  // quadrature encoder input A
  pinMode(encodPinB1, INPUT_PULLUP);                  // quadrature encoder input B
  pinMode(toQuadA, OUTPUT);
  pinMode(toQuadB, OUTPUT);
  pinMode(activate, INPUT_PULLUP); //Activate button, 1 cycle per press
  attachInterrupt(0, encoder, FALLING);               // update encoder position
  TCCR1B = TCCR1B & 0b11111000 | 1;                   // set 31KHz PWM to prevent motor noise
  myPID.SetMode(AUTOMATIC);
  myPID.SetSampleTime(1);
  myPID.SetOutputLimits(-255, 255);
  Serial.begin (115200);                              // for debugging
}

void loop() {
     PORTB = (PINB & 0b00001111) | ((PINB << 5) & 0b00100000) | ((PIND << 2) & 0b00010000); // Move encoder input to opto output
//    digitalWrite(toQuadB, digitalRead(encodPinB1));
      //newposition = encoderPos;
      //vel = (newposition-oldposition)*1000/(newtime-oldtime)*60/1496;
      setpoint = 150;                            // modify to fit motor and encoder characteristics, potmeter connected to A0
      input = encoderPos ;                                // data from encoder
      //Serial.print ("speed = ");
      //Serial.println (encoderPos);
      //oldposition = newposition;
      //oldtime = newtime;                      // monitor motor position
      //pwmOut(64);                                     // drive L298N H-Bridge module
      }

void pwmOut(int out) {                                // to H-Bridge board
  if (out > 0) {
    analogWrite(M1, out);                             // drive motor CW
    analogWrite(M2, 0);
  }
  else {
    analogWrite(M1, 0);
    analogWrite(M2, abs(out));                        // drive motor CCW
  }
}

//void updateDiff()
//{
//  newposition = encoderPos;
//  vel = (newposition-oldposition);
//  oldposition = newposition;
//}

void encoder()  {                                     // pulse and direction, direct port reading to save cycles
  if (PINB & 0b00000001)    encoderPos++;             // if(digitalRead(encodPinB1)==HIGH)   count ++;
  else                      encoderPos--;             // if(digitalRead(encodPinB1)==LOW)   count --;
}
