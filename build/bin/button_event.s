subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	18F4550
include "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_enable_gi
	FNCALL	_main,_gpio_init
	FNCALL	_main,_led_init
	FNCALL	_main,_scheduler_add_task
	FNCALL	_main,_scheduler_init
	FNCALL	_main,_scheduler_run
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer0_start
	FNCALL	_timer0_init,_timer0_reload
	FNCALL	_scheduler_run,_led_task0
	FNCALL	_scheduler_run,_led_task1
	FNCALL	_led_task1,_led_toggle
	FNCALL	_led_task0,_led_toggle
	FNCALL	_led_toggle,_led_set
	FNCALL	_led_init,_gpio_init
	FNCALL	_led_init,_led_set
	FNCALL	_led_set,_gpio_write
	FNROOT	_main
	FNCALL	_isr,_scheduler_tick
	FNCALL	_isr,i2_timer0_reload
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_button
	global	_gpio_led1
	global	_gpio_led0
	global	_led2
	global	_led1
	global	_led0
	global	_gpio_led2
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	30

;initializer for _button
		db	low(3969)
	db	high(3969)

		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

	db	low(0)
	line	16

;initializer for _gpio_led1
		db	low(3971)
	db	high(3971)

		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

	db	low(01h)
	line	9

;initializer for _gpio_led0
		db	low(3971)
	db	high(3971)

		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

	db	low(0)
	line	47

;initializer for _led2
		db	low(_gpio_led2)

	db	low(01h)
	db   0
	line	42

;initializer for _led1
		db	low(_gpio_led1)

	db	low(0)
	db   0
	line	37

;initializer for _led0
		db	low(_gpio_led0)

	db	low(01h)
	db   0
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	23

;initializer for _gpio_led2
		db	low(3971)
	db	high(3971)

		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

	db	low(02h)
	global	_task_list
	global	_task_count
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T0CON
_T0CON	set	0xFD5
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_LATB
_LATB	set	0xF8A
	global	_TRISB
_TRISB	set	0xF93
	global	_LATD
_LATD	set	0xF8C
	global	_TRISD
_TRISD	set	0xF95
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "1"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "1"
	config FOSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "ON"
	config BOR = "ON"
	config BORV = "3"
	config WDT = "OFF"
	config PBADEN = "OFF"
	config LPT1OSC = "OFF"
	config MCLRE = "ON"
	config STVREN = "ON"
	config LVP = "OFF"
	config XINST = "OFF"
	file	"build/bin/button_event.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
_task_list:
       ds      35
_task_count:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	30
	global	_button
_button:
       ds      7
psect	dataCOMRAM
	file	"main.c"
	line	16
	global	_gpio_led1
_gpio_led1:
       ds      7
psect	dataCOMRAM
	file	"main.c"
	line	9
	global	_gpio_led0
_gpio_led0:
       ds      7
psect	dataCOMRAM
	file	"main.c"
	line	47
	global	_led2
_led2:
       ds      3
psect	dataCOMRAM
	file	"main.c"
	line	42
	global	_led1
_led1:
       ds      3
psect	dataCOMRAM
	file	"main.c"
	line	37
	global	_led0
_led0:
       ds      3
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	23
	global	_gpio_led2
_gpio_led2:
       ds      7
	file	"build/bin/button_event.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (7 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,7
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (30 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,30
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to COMRAM (36 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	36
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
??_gpio_init:	; 1 bytes @ 0x0
??_gpio_write:	; 1 bytes @ 0x0
	ds   5
?_led_toggle:	; 1 bytes @ 0x5
?_led_init:	; 1 bytes @ 0x5
	global	led_init@led
led_init@led:	; 1 bytes @ 0x5
	global	led_toggle@led
led_toggle@led:	; 1 bytes @ 0x5
	ds   1
	global	led_toggle@state
led_toggle@state:	; 1 bytes @ 0x6
	ds   1
??_scheduler_run:	; 1 bytes @ 0x7
	ds   1
	global	scheduler_run@i
scheduler_run@i:	; 1 bytes @ 0x8
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_timer0_reload:	; 1 bytes @ 0x0
?_scheduler_tick:	; 1 bytes @ 0x0
?_scheduler_init:	; 1 bytes @ 0x0
?_timer0_init:	; 1 bytes @ 0x0
?_timer0_start:	; 1 bytes @ 0x0
?_enable_gi:	; 1 bytes @ 0x0
?_scheduler_run:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?_led_task0:	; 1 bytes @ 0x0
?_led_task1:	; 1 bytes @ 0x0
?i2_timer0_reload:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
??_scheduler_tick:	; 1 bytes @ 0x0
??i2_timer0_reload:	; 1 bytes @ 0x0
	ds   4
	global	scheduler_tick@i
scheduler_tick@i:	; 1 bytes @ 0x4
	ds   1
??_isr:	; 1 bytes @ 0x5
	ds   6
?_gpio_init:	; 1 bytes @ 0xB
?_scheduler_add_task:	; 1 bytes @ 0xB
?_gpio_write:	; 1 bytes @ 0xB
	global	gpio_init@gpio
gpio_init@gpio:	; 1 bytes @ 0xB
	global	gpio_write@gpio
gpio_write@gpio:	; 1 bytes @ 0xB
	global	scheduler_init@i
scheduler_init@i:	; 1 bytes @ 0xB
	global	scheduler_add_task@task
scheduler_add_task@task:	; 2 bytes @ 0xB
??_timer0_reload:	; 1 bytes @ 0xB
??_scheduler_init:	; 1 bytes @ 0xB
??_timer0_init:	; 1 bytes @ 0xB
??_timer0_start:	; 1 bytes @ 0xB
??_enable_gi:	; 1 bytes @ 0xB
	ds   1
	global	gpio_init@dir
gpio_init@dir:	; 1 bytes @ 0xC
	global	gpio_write@level
gpio_write@level:	; 1 bytes @ 0xC
	ds   1
?_led_set:	; 1 bytes @ 0xD
	global	led_set@led
led_set@led:	; 1 bytes @ 0xD
	global	scheduler_add_task@period_ms
scheduler_add_task@period_ms:	; 2 bytes @ 0xD
	ds   1
	global	led_set@state
led_set@state:	; 1 bytes @ 0xE
	ds   1
??_scheduler_add_task:	; 1 bytes @ 0xF
??_led_set:	; 1 bytes @ 0xF
	ds   1
	global	led_set@gpio_level
led_set@gpio_level:	; 1 bytes @ 0x10
	ds   1
??_led_toggle:	; 1 bytes @ 0x11
??_led_init:	; 1 bytes @ 0x11
??_led_task0:	; 1 bytes @ 0x11
??_led_task1:	; 1 bytes @ 0x11
??_main:	; 1 bytes @ 0x11
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        37
;!    BSS         36
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     17      83
;!    BANK0           160      9      16
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    button$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    button$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    button$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_init@gpio	PTR struct . size(1) Largest target is 7
;!		 -> button(COMRAM[7]), gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    gpio_init@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_init@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_init@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_led0$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_led0$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_led0$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_led1$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_led1$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_led1$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_led2$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_led2$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_led2$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_read@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_read@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_read@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_toggle@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_toggle@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_toggle@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    gpio_write@gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    gpio_write@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    gpio_write@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    gpio_write@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    led0$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    led1$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    led2$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    led_init@led	PTR struct . size(1) Largest target is 4
;!		 -> led0(COMRAM[3]), led1(COMRAM[3]), led2(COMRAM[3]), 
;!
;!    led_init@led$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    led_set@led	PTR struct . size(1) Largest target is 4
;!		 -> led0(COMRAM[3]), led1(COMRAM[3]), led2(COMRAM[3]), 
;!
;!    led_set@led$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    led_toggle@led	PTR struct . size(1) Largest target is 4
;!		 -> led0(COMRAM[3]), led2(COMRAM[3]), 
;!
;!    led_toggle@led$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    S24$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    S24$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    S24$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    S286$task	PTR FTN()void  size(2) Largest target is 1
;!		 -> led_task0(), led_task1(), NULL(), 
;!
;!    S41$gpio	PTR struct . size(1) Largest target is 7
;!		 -> gpio_led0(COMRAM[7]), gpio_led1(COMRAM[7]), gpio_led2(BANK0[7]), 
;!
;!    scheduler_add_task@task	PTR FTN()void  size(2) Largest target is 1
;!		 -> led_task0(), led_task1(), 
;!
;!    task_list$task	PTR FTN()void  size(2) Largest target is 1
;!		 -> led_task0(), led_task1(), NULL(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _led_toggle->_led_set
;!    _led_init->_led_set
;!    _led_set->_gpio_write
;!
;!Critical Paths under _isr in COMRAM
;!
;!    _isr->_scheduler_tick
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_scheduler_run
;!    _led_task1->_led_toggle
;!    _led_task0->_led_toggle
;!    _led_init->_gpio_init
;!    _led_set->_gpio_write
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2201
;!                          _enable_gi
;!                          _gpio_init
;!                           _led_init
;!                 _scheduler_add_task
;!                     _scheduler_init
;!                      _scheduler_run
;!                        _timer0_init
;!                       _timer0_start
;! ---------------------------------------------------------------------------------
;! (1) _timer0_start                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                          0     0      0       0
;!                      _timer0_reload
;! ---------------------------------------------------------------------------------
;! (2) _timer0_reload                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _scheduler_run                                        2     2      0    1200
;!                                              7 BANK0      2     2      0
;!                                NULL *
;!                          _led_task0 *
;!                          _led_task1 *
;! ---------------------------------------------------------------------------------
;! (2) _led_task1                                            0     0      0     535
;!                         _led_toggle
;! ---------------------------------------------------------------------------------
;! (2) _led_task0                                            0     0      0     535
;!                         _led_toggle
;! ---------------------------------------------------------------------------------
;! (3) _led_toggle                                           2     1      1     535
;!                                              5 BANK0      2     1      1
;!                            _led_set
;! ---------------------------------------------------------------------------------
;! (2) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _scheduler_init                                       1     1      0      90
;!                                             11 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _scheduler_add_task                                   4     0      4      48
;!                                             11 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _led_init                                             1     0      1     696
;!                                              5 BANK0      1     0      1
;!                          _gpio_init
;!                            _led_set
;! ---------------------------------------------------------------------------------
;! (4) _led_set                                              4     2      2     396
;!                                             13 COMRAM     4     2      2
;!                         _gpio_write
;! ---------------------------------------------------------------------------------
;! (5) _gpio_write                                           7     5      2     161
;!                                             11 COMRAM     2     0      2
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _gpio_init                                            7     5      2     167
;!                                             11 COMRAM     2     0      2
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _enable_gi                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _isr                                                  6     6      0      90
;!                                              5 COMRAM     6     6      0
;!                     _scheduler_tick
;!                    i2_timer0_reload
;! ---------------------------------------------------------------------------------
;! (7) i2_timer0_reload                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _scheduler_tick                                       5     5      0      90
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _enable_gi
;!   _gpio_init
;!   _led_init
;!     _gpio_init
;!     _led_set
;!       _gpio_write
;!   _scheduler_add_task
;!   _scheduler_init
;!   _scheduler_run
;!     NULL(Fake) *
;!     _led_task0 *
;!       _led_toggle
;!         _led_set
;!     _led_task1 *
;!       _led_toggle
;!   _timer0_init
;!     _timer0_reload
;!   _timer0_start
;!
;! _isr (ROOT)
;!   _scheduler_tick
;!   i2_timer0_reload
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            2047      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0       0      0.0%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160      9      16     10.0%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     17      83     88.3%
;!BITBIGSFRlh         83      0       0      0.0%
;!BITBIGSFRh          42      0       0      0.0%
;!BITBIGSFRll         33      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      99      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   66[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_enable_gi
;;		_gpio_init
;;		_led_init
;;		_scheduler_add_task
;;		_scheduler_init
;;		_scheduler_run
;;		_timer0_init
;;		_timer0_start
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	73
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	73
	
_main:
;incstack = 0
	callstack 25
	line	75
	
l1211:
		movlw	low(_led0)
	movlb	0	; () banked
	movwf	((led_init@led))&0ffh

	call	_led_init	;wreg free
	line	76
		movlw	low(_led1)
	movlb	0	; () banked
	movwf	((led_init@led))&0ffh

	call	_led_init	;wreg free
	line	77
		movlw	low(_led2)
	movlb	0	; () banked
	movwf	((led_init@led))&0ffh

	call	_led_init	;wreg free
	line	78
		movlw	low(_button)
	movwf	((c:gpio_init@gpio))^00h,c

	movlw	low(01h)
	movwf	((c:gpio_init@dir))^00h,c
	call	_gpio_init	;wreg free
	line	80
	
l1213:
	call	_scheduler_init	;wreg free
	line	81
	
l1215:
	call	_timer0_init	;wreg free
	line	82
	
l1217:
	call	_timer0_start	;wreg free
	line	84
	
l1219:
	call	_enable_gi	;wreg free
	line	86
	
l1221:
		movlw	low(_led_task0)
	movwf	((c:scheduler_add_task@task))^00h,c
	movlw	high(_led_task0)
	movwf	((c:scheduler_add_task@task+1))^00h,c

	movlw	high(01F4h)
	movwf	((c:scheduler_add_task@period_ms+1))^00h,c
	movlw	low(01F4h)
	movwf	((c:scheduler_add_task@period_ms))^00h,c
	call	_scheduler_add_task	;wreg free
	line	87
	
l1223:
		movlw	low(_led_task1)
	movwf	((c:scheduler_add_task@task))^00h,c
	movlw	high(_led_task1)
	movwf	((c:scheduler_add_task@task+1))^00h,c

	clrf	((c:scheduler_add_task@period_ms+1))^00h,c
	movlw	low(0C8h)
	movwf	((c:scheduler_add_task@period_ms))^00h,c
	call	_scheduler_add_task	;wreg free
	line	90
	
l1225:
	call	_scheduler_run	;wreg free
	goto	l1225
	global	start
	goto	start
	callstack 0
	line	93
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_timer0_start

;; *************** function _timer0_start *****************
;; Defined at:
;;		line 20 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/timer0.c"
	line	20
global __ptext1
__ptext1:
psect	text1
	file	"src/timer0.c"
	line	20
	
_timer0_start:
;incstack = 0
	callstack 28
	line	22
	
l1027:
	bsf	((c:4053))^0f00h,c,7	;volatile
	line	23
	
l151:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_start
	__end_of_timer0_start:
	signat	_timer0_start,89
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 6 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_timer0_reload
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	6
global __ptext2
__ptext2:
psect	text2
	file	"src/timer0.c"
	line	6
	
_timer0_init:
;incstack = 0
	callstack 27
	line	8
	
l1017:
	clrf	((c:4053))^0f00h,c	;volatile
	line	9
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	10
	bcf	((c:4053))^0f00h,c,5	;volatile
	line	11
	bcf	((c:4053))^0f00h,c,3	;volatile
	line	12
	
l1019:
	movf	((c:4053))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((c:4053))^0f00h,c	;volatile
	line	14
	
l1021:
	call	_timer0_reload	;wreg free
	line	16
	
l1023:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	17
	
l1025:
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	18
	
l148:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,89
	global	_timer0_reload

;; *************** function _timer0_reload *****************
;; Defined at:
;;		line 30 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timer0_init
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext3
__ptext3:
psect	text3
	file	"src/timer0.c"
	line	30
	
_timer0_reload:
;incstack = 0
	callstack 27
	line	32
	
l975:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	33
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	34
	
l157:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_reload
	__end_of_timer0_reload:
	signat	_timer0_reload,89
	global	_scheduler_run

;; *************** function _scheduler_run *****************
;; Defined at:
;;		line 47 in file "src/scheduler.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		NULL
;;		_led_task0
;;		_led_task1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/scheduler.c"
	line	47
global __ptext4
__ptext4:
psect	text4
	file	"src/scheduler.c"
	line	47
	
_scheduler_run:
;incstack = 0
	callstack 25
	line	50
	
l1199:
	movlb	0	; () banked
	clrf	((scheduler_run@i))&0ffh
	goto	l1209
	line	52
	
l1201:; BSR set to: 0

	movf	((scheduler_run@i))&0ffh,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+06h)
	movwf	fsr2l
	clrf	fsr2h
	decf	postinc2,w
	btfss	status,2
	goto	u501
	goto	u500

u501:
	goto	l1207
u500:
	line	54
	
l1203:; BSR set to: 0

	movf	((scheduler_run@i))&0ffh,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+06h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	55
	
l1205:; BSR set to: 0

	movf	((scheduler_run@i))&0ffh,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list)
	movwf	fsr2l
	clrf	fsr2h
	call	u518
	goto	u519
u518:
	push
	movwf	pclath
	movf	postinc2,w
	movwf	tosl
	movf	postinc2,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u519:
	line	57
	
l1207:
	movlb	0	; () banked
	incf	((scheduler_run@i))&0ffh
	
l1209:; BSR set to: 0

		movf	((c:_task_count))^00h,c,w
	subwf	((scheduler_run@i))&0ffh,w
	btfss	status,0
	goto	u521
	goto	u520

u521:
	goto	l1201
u520:
	line	58
	
l133:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_scheduler_run
	__end_of_scheduler_run:
	signat	_scheduler_run,89
	global	_led_task1
	global	_led_task0

;; *************** function _led_task0 *****************
;; Defined at:
;;		line 62 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_led_toggle
;; This function is called by:
;;		_main
;;		_scheduler_run
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	62
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	62
	
_led_task0:; BSR set to: 0

;incstack = 0
	callstack 25
	line	64
	
l1183:
		movlw	low(_led0)
	movlb	0	; () banked
	movwf	((led_toggle@led))&0ffh

	call	_led_toggle	;wreg free
	line	65
	
l59:
	return	;funcret
	callstack 0
GLOBAL	__end_of_led_task0
	__end_of_led_task0:
	signat	_led_task0,89

;; *************** function _led_task1 *****************
;; Defined at:
;;		line 67 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_led_toggle
;; This function is called by:
;;		_main
;;		_scheduler_run
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	67
global __ptext6
__ptext6:
psect	text6
	file	"main.c"
	line	67
	
_led_task1:
;incstack = 0
	callstack 26
	line	69
	
l1185:
		movlw	low(_led2)
	movlb	0	; () banked
	movwf	((led_toggle@led))&0ffh

	call	_led_toggle	;wreg free
	line	70
	
l62:
	return	;funcret
	callstack 0
GLOBAL	__end_of_led_task1
	__end_of_led_task1:
	signat	_led_task1,89
	global	_led_toggle

;; *************** function _led_toggle *****************
;; Defined at:
;;		line 28 in file "src/led_driver.c"
;; Parameters:    Size  Location     Type
;;  led             1    5[BANK0 ] PTR struct .
;;		 -> led2(3), led0(3), 
;; Auto vars:     Size  Location     Type
;;  state           1    6[BANK0 ] enum E64
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_led_set
;; This function is called by:
;;		_led_task0
;;		_led_task1
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"src/led_driver.c"
	line	28
global __ptext7
__ptext7:
psect	text7
	file	"src/led_driver.c"
	line	28
	
_led_toggle:
;incstack = 0
	callstack 26
	line	30
	
l1173:
	movlb	0	; () banked
	movf	((led_toggle@led))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((led_toggle@state))&0ffh
	line	31
	
l1175:; BSR set to: 0

		decf	((led_toggle@state))&0ffh,w
	btfss	status,2
	goto	u461
	goto	u460

u461:
	goto	l1179
u460:
	line	33
	
l1177:; BSR set to: 0

	clrf	((led_toggle@state))&0ffh
	line	34
	goto	l1181
	line	37
	
l1179:; BSR set to: 0

	movlw	low(01h)
	movwf	((led_toggle@state))&0ffh
	line	39
	
l1181:; BSR set to: 0

		movff	(led_toggle@led),(c:led_set@led)

	movff	(led_toggle@state),(c:led_set@state)
	call	_led_set	;wreg free
	line	40
	
l106:
	return	;funcret
	callstack 0
GLOBAL	__end_of_led_toggle
	__end_of_led_toggle:
	signat	_led_toggle,4217
	global	_scheduler_init

;; *************** function _scheduler_init *****************
;; Defined at:
;;		line 8 in file "src/scheduler.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"src/scheduler.c"
	line	8
global __ptext8
__ptext8:
psect	text8
	file	"src/scheduler.c"
	line	8
	
_scheduler_init:
;incstack = 0
	callstack 28
	line	11
	
l1005:
	clrf	((c:scheduler_init@i))^00h,c
	line	13
	
l1011:
	movf	((c:scheduler_init@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list)
	movwf	fsr2l
	clrf	fsr2h
	clrf	postinc2
	clrf	postdec2
	line	14
	movf	((c:scheduler_init@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+02h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	postinc2
	clrf	postdec2
	line	15
	movf	((c:scheduler_init@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+04h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	postinc2
	clrf	postdec2
	line	16
	movf	((c:scheduler_init@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+06h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	17
	
l1013:
	incf	((c:scheduler_init@i))^00h,c
	
l1015:
		movlw	05h-1
	cpfsgt	((c:scheduler_init@i))^00h,c
	goto	u151
	goto	u150

u151:
	goto	l1011
u150:
	
l114:
	line	18
	clrf	((c:_task_count))^00h,c
	line	19
	
l115:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scheduler_init
	__end_of_scheduler_init:
	signat	_scheduler_init,89
	global	_scheduler_add_task

;; *************** function _scheduler_add_task *****************
;; Defined at:
;;		line 21 in file "src/scheduler.c"
;; Parameters:    Size  Location     Type
;;  task            2   11[COMRAM] PTR FTN()void 
;;		 -> led_task1(1), led_task0(1), 
;;  period_ms       2   13[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	21
global __ptext9
__ptext9:
psect	text9
	file	"src/scheduler.c"
	line	21
	
_scheduler_add_task:
;incstack = 0
	callstack 28
	line	23
	
l1125:
		movlw	05h-0
	cpfslt	((c:_task_count))^00h,c
	goto	u341
	goto	u340

u341:
	goto	l1129
u340:
	line	25
	
l1127:
	movf	((c:_task_count))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:scheduler_add_task@task),postinc2
	movff	(c:scheduler_add_task@task+1),postdec2
	line	26
	movf	((c:_task_count))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+02h)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:scheduler_add_task@period_ms),postinc2
	movff	(c:scheduler_add_task@period_ms+1),postdec2
	line	27
	movf	((c:_task_count))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+04h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	postinc2
	clrf	postdec2
	line	28
	movf	((c:_task_count))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+06h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	30
	
l1129:
	incf	((c:_task_count))^00h,c
	line	31
	
l119:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scheduler_add_task
	__end_of_scheduler_add_task:
	signat	_scheduler_add_task,8313
	global	_led_init

;; *************** function _led_init *****************
;; Defined at:
;;		line 3 in file "src/led_driver.c"
;; Parameters:    Size  Location     Type
;;  led             1    5[BANK0 ] PTR struct .
;;		 -> led2(3), led1(3), led0(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_gpio_init
;;		_led_set
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"src/led_driver.c"
	line	3
global __ptext10
__ptext10:
psect	text10
	file	"src/led_driver.c"
	line	3
	
_led_init:
;incstack = 0
	callstack 26
	line	5
	
l1193:
	movlb	0	; () banked
	movf	((led_init@led))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:gpio_init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:gpio_init@dir))^00h,c
	call	_gpio_init	;wreg free
	line	6
	
l1195:
	movlb	0	; () banked
	movf	((led_init@led))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	clrf	indf2
	line	7
	
l1197:; BSR set to: 0

		movff	(led_init@led),(c:led_set@led)

	movf	((led_init@led))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:led_set@state))^00h,c
	call	_led_set	;wreg free
	line	8
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_led_init
	__end_of_led_init:
	signat	_led_init,4217
	global	_led_set

;; *************** function _led_set *****************
;; Defined at:
;;		line 10 in file "src/led_driver.c"
;; Parameters:    Size  Location     Type
;;  led             1   13[COMRAM] PTR struct .
;;		 -> led2(3), led1(3), led0(3), 
;;  state           1   14[COMRAM] enum E64
;; Auto vars:     Size  Location     Type
;;  gpio_level      1   16[COMRAM] enum E46
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_gpio_write
;; This function is called by:
;;		_led_init
;;		_led_toggle
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	10
global __ptext11
__ptext11:
psect	text11
	file	"src/led_driver.c"
	line	10
	
_led_set:
;incstack = 0
	callstack 25
	line	14
	
l1165:
	movf	((c:led_set@led))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(c:led_set@state),indf2

	line	16
	movf	((c:led_set@led))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u411
	goto	u410

u411:
	goto	l1169
u410:
	line	18
	
l1167:
		decf	((c:led_set@state))^00h,c,w
	btfsc	status,2
	goto	u421
	goto	u420

u421:
	movlw	1
	goto	u430
u420:
	movlw	0
u430:
	movwf	((c:led_set@gpio_level))^00h,c
	line	19
	goto	l1171
	line	22
	
l1169:
		decf	((c:led_set@state))^00h,c,w
	btfss	status,2
	goto	u441
	goto	u440

u441:
	movlw	1
	goto	u450
u440:
	movlw	0
u450:
	movwf	((c:led_set@gpio_level))^00h,c
	line	25
	
l1171:
	movf	((c:led_set@led))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:gpio_write@gpio))^00h,c
	movff	(c:led_set@gpio_level),(c:gpio_write@level)
	call	_gpio_write	;wreg free
	line	26
	
l101:
	return	;funcret
	callstack 0
GLOBAL	__end_of_led_set
	__end_of_led_set:
	signat	_led_set,8313
	global	_gpio_write

;; *************** function _gpio_write *****************
;; Defined at:
;;		line 16 in file "src/gpio_driver.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   11[COMRAM] PTR struct .
;;		 -> gpio_led2(7), gpio_led1(7), gpio_led0(7), 
;;  level           1   12[COMRAM] enum E3353
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         2       5       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_led_set
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio_driver.c"
	line	16
global __ptext12
__ptext12:
psect	text12
	file	"src/gpio_driver.c"
	line	16
	
_gpio_write:
;incstack = 0
	callstack 24
	line	18
	
l1159:
		decf	((c:gpio_write@level))^00h,c,w
	btfss	status,2
	goto	u381
	goto	u380

u381:
	goto	l1163
u380:
	line	20
	
l1161:
	movf	((c:gpio_write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_gpio_write+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_gpio_write+1)&0ffh
	incf	((??_gpio_write+0))&0ffh
	goto	u394
u395:
	bcf	status,0
	rlcf	((??_gpio_write+1))&0ffh
u394:
	decfsz	((??_gpio_write+0))&0ffh
	goto	u395
	movf	((c:gpio_write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movff	postinc2,??_gpio_write+2
	movff	postdec2,??_gpio_write+2+1
	movff	??_gpio_write+2,fsr2l
	movff	??_gpio_write+2+1,fsr2h
	movlb	0	; () banked
	movf	((??_gpio_write+1))&0ffh,w
	iorwf	indf2
	line	21
	goto	l80
	line	24
	
l1163:
	movf	((c:gpio_write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_gpio_write+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_gpio_write+1)&0ffh
	incf	((??_gpio_write+0))&0ffh
	goto	u404
u405:
	bcf	status,0
	rlcf	((??_gpio_write+1))&0ffh
u404:
	decfsz	((??_gpio_write+0))&0ffh
	goto	u405
	movlb	0	; () banked
	movf	((??_gpio_write+1))&0ffh,w
	xorlw	0ffh
	movwf	(??_gpio_write+2)&0ffh
	movf	((c:gpio_write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movff	postinc2,??_gpio_write+3
	movff	postdec2,??_gpio_write+3+1
	movff	??_gpio_write+3,fsr2l
	movff	??_gpio_write+3+1,fsr2h
	movf	((??_gpio_write+2))&0ffh,w
	andwf	indf2
	line	26
	
l80:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_gpio_write
	__end_of_gpio_write:
	signat	_gpio_write,8313
	global	_gpio_init

;; *************** function _gpio_init *****************
;; Defined at:
;;		line 4 in file "src/gpio_driver.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   11[COMRAM] PTR struct .
;;		 -> button(7), gpio_led2(7), gpio_led1(7), gpio_led0(7), 
;;  dir             1   12[COMRAM] enum E3349
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         2       5       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_led_init
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	line	4
global __ptext13
__ptext13:
psect	text13
	file	"src/gpio_driver.c"
	line	4
	
_gpio_init:; BSR set to: 0

;incstack = 0
	callstack 27
	line	6
	
l1187:
		decf	((c:gpio_init@dir))^00h,c,w
	btfss	status,2
	goto	u471
	goto	u470

u471:
	goto	l1191
u470:
	line	8
	
l1189:
	movf	((c:gpio_init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_gpio_init+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_gpio_init+1)&0ffh
	incf	((??_gpio_init+0))&0ffh
	goto	u484
u485:
	bcf	status,0
	rlcf	((??_gpio_init+1))&0ffh
u484:
	decfsz	((??_gpio_init+0))&0ffh
	goto	u485
	movf	((c:gpio_init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	postinc2,??_gpio_init+2
	movff	postdec2,??_gpio_init+2+1
	movff	??_gpio_init+2,fsr2l
	movff	??_gpio_init+2+1,fsr2h
	movlb	0	; () banked
	movf	((??_gpio_init+1))&0ffh,w
	iorwf	indf2
	line	9
	goto	l75
	line	12
	
l1191:
	movf	((c:gpio_init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_gpio_init+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_gpio_init+1)&0ffh
	incf	((??_gpio_init+0))&0ffh
	goto	u494
u495:
	bcf	status,0
	rlcf	((??_gpio_init+1))&0ffh
u494:
	decfsz	((??_gpio_init+0))&0ffh
	goto	u495
	movlb	0	; () banked
	movf	((??_gpio_init+1))&0ffh,w
	xorlw	0ffh
	movwf	(??_gpio_init+2)&0ffh
	movf	((c:gpio_init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	postinc2,??_gpio_init+3
	movff	postdec2,??_gpio_init+3+1
	movff	??_gpio_init+3,fsr2l
	movff	??_gpio_init+3+1,fsr2h
	movf	((??_gpio_init+2))&0ffh,w
	andwf	indf2
	line	14
	
l75:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_gpio_init
	__end_of_gpio_init:
	signat	_gpio_init,8313
	global	_enable_gi

;; *************** function _enable_gi *****************
;; Defined at:
;;		line 4 in file "src/interrupts.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"src/interrupts.c"
	line	4
global __ptext14
__ptext14:
psect	text14
	file	"src/interrupts.c"
	line	4
	
_enable_gi:; BSR set to: 0

;incstack = 0
	callstack 28
	line	6
	
l1029:
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	7
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	8
	
l162:
	return	;funcret
	callstack 0
GLOBAL	__end_of_enable_gi
	__end_of_enable_gi:
	signat	_enable_gi,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 52 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_scheduler_tick
;;		i2_timer0_reload
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"build/bin/button_event.s"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	52
	
_isr:
;incstack = 0
	callstack 24
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr1l+0,??_isr+0
	movff	fsr1h+0,??_isr+1
	movff	fsr2l+0,??_isr+2
	movff	fsr2h+0,??_isr+3
	movff	prodl+0,??_isr+4
	movff	prodh+0,??_isr+5
	line	54
	
i2l1051:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u20_41
	goto	i2u20_40
i2u20_41:
	goto	i2l56
i2u20_40:
	line	56
	
i2l1053:
	call	i2_timer0_reload	;wreg free
	line	57
	
i2l1055:
	call	_scheduler_tick	;wreg free
	line	58
	
i2l1057:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	60
	
i2l56:
	movff	??_isr+5,prodh+0
	movff	??_isr+4,prodl+0
	movff	??_isr+3,fsr2h+0
	movff	??_isr+2,fsr2l+0
	movff	??_isr+1,fsr1h+0
	movff	??_isr+0,fsr1l+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	i2_timer0_reload

;; *************** function i2_timer0_reload *****************
;; Defined at:
;;		line 30 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"src/timer0.c"
	line	30
global __ptext16
__ptext16:
psect	text16
	file	"src/timer0.c"
	line	30
	
i2_timer0_reload:
;incstack = 0
	callstack 24
	line	32
	
i2l1049:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	33
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	34
	
i2l157:
	return	;funcret
	callstack 0
GLOBAL	__end_ofi2_timer0_reload
	__end_ofi2_timer0_reload:
	signat	i2_timer0_reload,89
	global	_scheduler_tick

;; *************** function _scheduler_tick *****************
;; Defined at:
;;		line 33 in file "src/scheduler.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"src/scheduler.c"
	line	33
global __ptext17
__ptext17:
psect	text17
	file	"src/scheduler.c"
	line	33
	
_scheduler_tick:
;incstack = 0
	callstack 24
	line	36
	
i2l987:
	clrf	((c:scheduler_tick@i))^00h,c
	goto	i2l997
	line	38
	
i2l989:
	movf	((c:scheduler_tick@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+04h)
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	39
	
i2l991:
	movf	((c:scheduler_tick@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+02h)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:scheduler_tick@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+04h)
	movwf	fsr1l
	clrf	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	btfss	status,0
	goto	i2u13_41
	goto	i2u13_40

i2u13_41:
	goto	i2l995
i2u13_40:
	line	41
	
i2l993:
	movf	((c:scheduler_tick@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+04h)
	movwf	fsr2l
	clrf	fsr2h
	clrf	postinc2
	clrf	postdec2
	line	42
	movf	((c:scheduler_tick@i))^00h,c,w
	mullw	07h
	movf	(prodl)^0f00h,c,w
	addlw	low(_task_list+06h)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	movwf	indf2
	line	44
	
i2l995:
	incf	((c:scheduler_tick@i))^00h,c
	
i2l997:
		movf	((c:_task_count))^00h,c,w
	subwf	((c:scheduler_tick@i))^00h,c,w
	btfss	status,0
	goto	i2u14_41
	goto	i2u14_40

i2u14_41:
	goto	i2l989
i2u14_40:
	line	45
	
i2l126:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scheduler_tick
	__end_of_scheduler_tick:
	signat	_scheduler_tick,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	global	btemp
	btemp set 01h

	DABS	1,1,1	;btemp
	global	int$flags
	int$flags	set btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	end
