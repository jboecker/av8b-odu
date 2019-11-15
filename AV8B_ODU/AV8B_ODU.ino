#define DCSBIOS_IRQ_SERIAL
#include <DcsBios.h>

#include <LedDisplay.h>

DcsBios::Switch2Pos oduOpt1("ODU_OPT1", A1);
DcsBios::Switch2Pos oduOpt2("ODU_OPT2", A2);
DcsBios::Switch2Pos oduOpt3("ODU_OPT3", A3);
DcsBios::Switch2Pos oduOpt4("ODU_OPT4", A4);
DcsBios::Switch2Pos oduOpt5("ODU_OPT5", A5);

// Define pins for the LED display. 
// You can change these, just re-wire your board:
#define dataPin 2              // connects to the display's data in
#define registerSelect 3       // the display's register select pin 
#define clockPin 4             // the display's clock pin
#define enable 5               // the display's chip enable pin
#define reset 6               // the display's reset pin

#define displayLength 40        // number of characters in the display
#define displayCount 10

#include "font5x7.h"

// create am instance of the LED display library:
LedDisplay myDisplay = LedDisplay(dataPin, registerSelect, clockPin, 
enable, reset, displayLength, displayCount, Font5x7);

int brightness = 15;        // screen brightness

void setup() {
  DcsBios::setup();
  
  myDisplay.begin();
  myDisplay.setBrightness(brightness);

  myDisplay.setCursor(0);
  //myDisplay.print("aaaabbbbccccddddeeeeffffgggghhhhiiiijjjj");  
  myDisplay.update();
  delay(1000);
}

static char str1[6] = "        ";
static char str2[6] = "        ";
static char str3[6] = "        ";
static char str4[6] = "        ";
static char str5[6] = "        ";

void printPart(int startPos, char* str) {
  myDisplay.setCursor(startPos);
  myDisplay.write(str[0]);
  myDisplay.write(str[1]);
  myDisplay.write(str[2]);
  myDisplay.write(str[3]);
}

/*
 * 0123456789
 * aAbBcCdDeE
 * 
 * 0 1    9 8
 * 3 2    6 7
 *        4 5
 */

void loop() {
  DcsBios::loop();
  printPart(0*4, &str5[0]);
  printPart(1*4, &str5[4]);
  printPart(2*4, &str3[0]);
  printPart(3*4, &str3[4]);
  printPart(4*4, &str4[0]);
  printPart(5*4, &str4[4]);
  printPart(6*4, &str2[0]);
  printPart(7*4, &str2[4]);
  printPart(8*4, &str1[0]);
  printPart(9*4, &str1[4]);
  //myDisplay.setBrightness(brightness);
  myDisplay.update();
}

void onOdu1SelChange(char* newValue) {
  strncpy(&str1[0], newValue, 1);
}
DcsBios::StringBuffer<1> odu1SelBuffer(0x7962, onOdu1SelChange);
void onOdu1TextChange(char* newValue) {
  strncpy(&str1[1], newValue, 4);
}
DcsBios::StringBuffer<4> odu1TextBuffer(0x7964, onOdu1TextChange);

void onOdu2SelChange(char* newValue) {
  strncpy(&str2[0], newValue, 1);
}
DcsBios::StringBuffer<1> odu2SelBuffer(0x7968, onOdu2SelChange);
void onOdu2TextChange(char* newValue) {
  strncpy(&str2[1], newValue, 4);
}
DcsBios::StringBuffer<4> odu2TextBuffer(0x796a, onOdu2TextChange);

void onOdu3SelChange(char* newValue) {
  strncpy(&str3[0], newValue, 1);
}
DcsBios::StringBuffer<1> odu3SelBuffer(0x796e, onOdu3SelChange);
void onOdu3TextChange(char* newValue) {
  strncpy(&str3[1], newValue, 4);
}
DcsBios::StringBuffer<4> odu3TextBuffer(0x7970, onOdu3TextChange);

void onOdu4SelChange(char* newValue) {
  strncpy(&str4[0], newValue, 1);
}
DcsBios::StringBuffer<1> odu4SelBuffer(0x7974, onOdu4SelChange);
void onOdu4TextChange(char* newValue) {
  strncpy(&str4[1], newValue, 4);
}
DcsBios::StringBuffer<4> odu4TextBuffer(0x7976, onOdu4TextChange);

void onOdu5SelChange(char* newValue) {
  strncpy(&str5[0], newValue, 1);
}
DcsBios::StringBuffer<1> odu5SelBuffer(0x797a, onOdu5SelChange);
void onOdu5TextChange(char* newValue) {
  strncpy(&str5[1], newValue, 4);
}
DcsBios::StringBuffer<4> odu5TextBuffer(0x797c, onOdu5TextChange);

