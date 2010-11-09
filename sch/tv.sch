v 20100214 2
C 40000 40000 0 0 0 title-B.sym
C 50400 47600 1 0 0 resistor-1.sym
{
T 50700 48000 5 10 0 0 0 0 1
device=RESISTOR
T 50600 47900 5 10 1 1 0 0 1
refdes=1K
}
C 51600 45600 1 270 0 resistor-1.sym
{
T 52000 45300 5 10 0 0 270 0 1
device=RESISTOR
T 51900 45400 5 10 1 1 270 0 1
refdes=330
}
C 48500 45900 1 0 0 input-2.sym
{
T 48500 46100 5 10 0 0 0 0 1
net=INPUT:1
T 49100 46600 5 10 0 0 0 0 1
device=none
T 49000 46000 5 10 1 1 0 7 1
value=11
}
C 48500 47600 1 0 0 input-2.sym
{
T 48500 47800 5 10 0 0 0 0 1
net=INPUT:1
T 49100 48300 5 10 0 0 0 0 1
device=none
T 49000 47700 5 10 1 1 0 7 1
value=9
}
C 48500 46900 1 0 0 input-2.sym
{
T 48500 47100 5 10 0 0 0 0 1
net=INPUT:1
T 49100 47600 5 10 0 0 0 0 1
device=none
T 49000 47000 5 10 1 1 0 7 1
value=7
}
C 50400 45900 1 0 0 resistor-1.sym
{
T 50700 46300 5 10 0 0 0 0 1
device=RESISTOR
T 50600 46200 5 10 1 1 0 0 1
refdes=1K
}
C 50400 46900 1 0 0 resistor-1.sym
{
T 50700 47300 5 10 0 0 0 0 1
device=RESISTOR
T 50600 47200 5 10 1 1 0 0 1
refdes=330
}
N 49900 47700 50400 47700 4
N 49900 47000 50400 47000 4
N 49900 46000 50400 46000 4
N 51300 47700 52300 47700 4
N 51700 47700 51700 47000 4
N 51700 47000 51300 47000 4
C 51600 44200 1 0 0 gnd-1.sym
N 51300 46000 52300 46000 4
N 51700 45600 51700 46000 4
N 51700 44500 51700 44700 4
C 52800 47200 1 0 1 BNC-1.sym
{
T 52450 47850 5 10 0 0 0 6 1
device=BNC
T 52800 48000 5 10 1 1 0 6 1
refdes=Video
}
C 52800 45500 1 0 1 BNC-1.sym
{
T 52450 46150 5 10 0 0 0 6 1
device=BNC
T 52800 46300 5 10 1 1 0 6 1
refdes=Audio
}
C 52600 45000 1 0 0 gnd-1.sym
C 52600 46700 1 0 0 gnd-1.sym
N 52700 47200 52700 47000 4
N 52700 45500 52700 45300 4
C 42500 47600 1 0 0 input-2.sym
{
T 42500 47800 5 10 0 0 0 0 1
net=INPUT:1
T 43100 48300 5 10 0 0 0 0 1
device=none
T 43000 47700 5 10 1 1 0 7 1
value=2
}
C 45700 47700 1 0 0 switch-spst-1.sym
{
T 46100 48400 5 10 0 0 0 0 1
device=SPST
T 46000 48000 5 10 1 1 0 0 1
refdes=P1UP
}
C 44000 48000 1 0 0 5V-plus-1.sym
C 44500 47600 1 0 0 resistor-1.sym
{
T 44800 48000 5 10 0 0 0 0 1
device=RESISTOR
T 44700 47900 5 10 1 1 0 0 1
refdes=10K
}
C 46900 45000 1 0 0 gnd-1.sym
N 43900 47700 44500 47700 4
N 44200 48000 44200 47700 4
N 45400 47700 45700 47700 4
C 42500 46900 1 0 0 input-2.sym
{
T 42500 47100 5 10 0 0 0 0 1
net=INPUT:1
T 43100 47600 5 10 0 0 0 0 1
device=none
T 43000 47000 5 10 1 1 0 7 1
value=3
}
N 43900 47000 44500 47000 4
C 44500 46900 1 0 0 resistor-1.sym
{
T 44800 47300 5 10 0 0 0 0 1
device=RESISTOR
T 44700 47200 5 10 1 1 0 0 1
refdes=10K
}
N 45400 47000 45700 47000 4
C 45700 47000 1 0 0 switch-spst-1.sym
{
T 46100 47700 5 10 0 0 0 0 1
device=SPST
T 46000 47300 5 10 1 1 0 0 1
refdes=P1DOWN
}
C 42500 46200 1 0 0 input-2.sym
{
T 42500 46400 5 10 0 0 0 0 1
net=INPUT:1
T 43100 46900 5 10 0 0 0 0 1
device=none
T 43000 46300 5 10 1 1 0 7 1
value=4
}
N 43900 46300 44500 46300 4
C 44500 46200 1 0 0 resistor-1.sym
{
T 44800 46600 5 10 0 0 0 0 1
device=RESISTOR
T 44700 46500 5 10 1 1 0 0 1
refdes=10K
}
N 45400 46300 45700 46300 4
C 45700 46300 1 0 0 switch-spst-1.sym
{
T 46100 47000 5 10 0 0 0 0 1
device=SPST
T 46000 46600 5 10 1 1 0 0 1
refdes=P2UP
}
C 42500 45500 1 0 0 input-2.sym
{
T 42500 45700 5 10 0 0 0 0 1
net=INPUT:1
T 43100 46200 5 10 0 0 0 0 1
device=none
T 43000 45600 5 10 1 1 0 7 1
value=5
}
N 43900 45600 44500 45600 4
C 44500 45500 1 0 0 resistor-1.sym
{
T 44800 45900 5 10 0 0 0 0 1
device=RESISTOR
T 44700 45800 5 10 1 1 0 0 1
refdes=10K
}
N 45400 45600 45700 45600 4
C 45700 45600 1 0 0 switch-spst-1.sym
{
T 46100 46300 5 10 0 0 0 0 1
device=SPST
T 46000 45900 5 10 1 1 0 0 1
refdes=P2DOWN
}
N 44200 47700 44200 47000 4
N 44200 47000 44200 46300 4
N 44200 46300 44200 45600 4
N 46500 47700 47000 47700 4
N 47000 47700 47000 45300 4
N 46500 47000 47000 47000 4
N 46500 46300 47000 46300 4
N 46500 45600 47000 45600 4
T 40200 40200 9 8 1 0 0 0 5
Copyright 2010 Manuel Rábade <manuel@rabade.net>

This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/ or send a letter
to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
T 53900 40100 9 8 1 0 0 0 1
Manuel Rábade <manuel@rabade.net>
T 53900 40400 9 8 1 0 0 0 1
1
T 50500 40100 9 8 1 0 0 0 1
1
T 52000 40100 9 8 1 0 0 0 1
1
T 50000 40400 9 8 1 0 0 0 1
tv.sch
T 50500 40900 9 20 1 0 0 0 1
Composite Video and Arduino
T 55600 40700 9 10 1 0 0 0 1
http://rabade.net