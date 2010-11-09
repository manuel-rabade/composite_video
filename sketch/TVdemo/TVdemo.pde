/*
  Copyright 2010 Manuel Rábade <manuel@rabade.net>

  Melody from: http://www.arduino.cc/en/Tutorial/Tone

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <TVout.h>
#include "pitches.h"

#define XM 127
#define YM 95
#define RA 20
#define W 84
#define H 53
#define RB 13
#define SQ 33

#define BEEP TV.tone(500, 30)
#define BIIP TV.tone(1000, 30)

#define DELAY TV.delay(18)

TVout TV;

int melody[] = { NOTE_C4,
                 NOTE_G3,
                 NOTE_G3,
                 NOTE_A3,
                 NOTE_G3,
                 0,
                 NOTE_B3,
                 NOTE_C4};
int durations[] = { 4, 8, 8, 4, 4, 4, 4, 4 };

void setup()  {
  TV.begin(_NTSC, 128, 96);
}

void demo_font (unsigned char w, unsigned char h) {
  unsigned char x, y;
  TV.print_char(0,0, w + 48);
  TV.print_char(1*w,0, 'x');
  TV.print_char(2*w,0, h + 48);
  x = 0;
  y = 0;
  for (unsigned char i = 32; i < 127; i++) {
    TV.print_char(x*w,(y+2)*h,i);
    x++;
    if (x >= TV.char_line()) {
      y++;
      x = 0;
    }
  }
  TV.delay(180);
}

void loop() {
  TV.clear_screen();
  TV.select_font(_5X7);
  TV.delay(60);
  BEEP;
  TV.delay(300);
  BIIP;
  TV.print_str(34,40,"TVout demo");
  TV.print_str(25,48,"NTSC @ 128x96");
  TV.delay(180);

  TV.clear_screen();
  BEEP;
  TV.draw_line(0,0,XM,0,1);
  DELAY;
  BEEP;
  TV.draw_line(XM,0,XM,YM,1);
  DELAY;
  BEEP;
  TV.draw_line(XM,YM,0,YM,1);
  DELAY;
  BEEP;
  TV.draw_line(0,YM,0,0,1);
  DELAY;
  BEEP;
  TV.draw_line(0,0,XM,YM,1);
  DELAY;
  BEEP;
  TV.draw_line(0,YM,XM,0,1);
  TV.delay(180);

  TV.clear_screen();
  TV.select_font(_3X5);
  demo_font(4,6);

  TV.clear_screen();
  TV.select_font(_5X7);
  demo_font(6,8);

  TV.clear_screen();
  TV.select_font(_8X8);
  demo_font(8,8);

  TV.clear_screen();
  BEEP;
  TV.draw_circle((XM-W)/2,(YM-H)/2,RA,1,1,0);
  DELAY;
  BEEP;
  TV.draw_circle((XM+W)/2,(YM-H)/2,RA,1,1,0);
  DELAY;
  BEEP;
  TV.draw_circle((YM-H)/2,(YM+H)/2,RA,1,1,0);
  DELAY;
  BEEP;
  TV.draw_circle((XM+W)/2,(YM+H)/2,RA,1,1,0);
  DELAY;
  BEEP;
  TV.draw_circle(XM/2,YM/2,RA,1,1,0);
  DELAY;
  BEEP;
  TV.draw_box((XM-W)/2,(YM-H)/2,W,H,2,2,0,0);
  TV.delay(60);
  BIIP;
  TV.invert();
  TV.delay(120);

  TV.clear_screen();
  for (unsigned char i = 0; i < 4; i++) {
    for (unsigned char j = 0; j < SQ*2; j++) {
      TV.draw_circle(XM/2+SQ,YM/2+SQ-j,RB,0,3,0);
      TV.draw_circle(XM/2-SQ,YM/2-SQ+j,RB,0,3,0);
      TV.draw_circle(XM/2-SQ+j,YM/2+SQ,RB,0,3,0);
      TV.draw_circle(XM/2+SQ-j,YM/2-SQ,RB,0,3,0);
      TV.draw_circle(XM/2+SQ,YM/2+SQ-j-1,RB,1,3,0);
      TV.draw_circle(XM/2-SQ,YM/2-SQ+j+1,RB,1,3,0);
      TV.draw_circle(XM/2-SQ+j+1,YM/2+SQ,RB,1,3,0);
      TV.draw_circle(XM/2+SQ-j-1,YM/2-SQ,RB,1,3,0);
      TV.draw_line(XM/2+SQ,YM/2+SQ,XM/2+SQ,YM/2-SQ,1);
      TV.draw_line(XM/2+SQ,YM/2-SQ,XM/2-SQ,YM/2-SQ,1);
      TV.draw_line(XM/2-SQ,YM/2-SQ,XM/2-SQ,YM/2+SQ,1);
      TV.draw_line(XM/2-SQ,YM/2+SQ,XM/2+SQ,YM/2+SQ,1);
      TV.delay(1);
    }
  }
  TV.delay(120);

  TV.clear_screen();
  TV.fs_bitmap();
  for (unsigned char i = 0; i < 8; i++) {
    int d = 1000/durations[i];
    TV.tone(melody[i],d);
    TV.delay((d*1.30*60)/1000);
  }
  TV.delay(1200);
}
