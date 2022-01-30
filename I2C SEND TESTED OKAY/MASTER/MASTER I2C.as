opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 2 "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Master_I2C_Initialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_Start
	FNCALL	_main,_Send_I2C_Data
	FNCALL	_main,_Stop
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNROOT	_main
	global	_m
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	5

;initializer for _m
	retlw	053h
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_SSPIF
_SSPIF	set	99
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISD
_TRISD	set	136
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_PEN
_PEN	set	1162
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_2:	
	retlw	108	;'l'
	retlw	121	;'y'
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	0
psect	strings
	file	"MASTER I2C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
_m:
       ds      1

; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_Start
?_Start:	; 0 bytes @ 0x0
	global	??_Start
??_Start:	; 0 bytes @ 0x0
	global	?_Send_I2C_Data
?_Send_I2C_Data:	; 0 bytes @ 0x0
	global	??_Send_I2C_Data
??_Send_I2C_Data:	; 0 bytes @ 0x0
	global	?_Stop
?_Stop:	; 0 bytes @ 0x0
	global	??_Stop
??_Stop:	; 0 bytes @ 0x0
	global	?_Master_I2C_Initialization
?_Master_I2C_Initialization:	; 0 bytes @ 0x0
	global	??_Master_I2C_Initialization
??_Master_I2C_Initialization:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	Send_I2C_Data@Data
Send_I2C_Data@Data:	; 1 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	2
;;Data sizes: Strings 20, constant 0, data 1, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[10]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     135
;;                                              5 COMMON     2     2      0
;;                  _Lcd_Intialization
;;          _Master_I2C_Initialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                              _Start
;;                      _Send_I2C_Data
;;                               _Stop
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Stop                                                 3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Start                                                3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Master_I2C_Initialization                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Send_I2C_Data                                        1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Master_I2C_Initialization
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _Start
;;   _Send_I2C_Data
;;   _Stop
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0       A      12        0.0%
;;ABS                  0      0       8       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 51 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Master_I2C_Initialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_Start
;;		_Send_I2C_Data
;;		_Stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	51
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	54
	
l2717:	
;MASTER I2C.c: 52: int u;
;MASTER I2C.c: 54: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	55
;MASTER I2C.c: 55: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	57
	
l2719:	
;MASTER I2C.c: 57: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	59
	
l2721:	
;MASTER I2C.c: 59: Master_I2C_Initialization();
	fcall	_Master_I2C_Initialization
	line	61
	
l2723:	
;MASTER I2C.c: 61: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	62
	
l2725:	
;MASTER I2C.c: 62: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l2727
	line	64
;MASTER I2C.c: 64: while(1)
	
l728:	
	line	66
	
l2727:	
;MASTER I2C.c: 65: {
;MASTER I2C.c: 66: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	67
	
l2729:	
;MASTER I2C.c: 67: Lcd_String("lyca soft");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_Lcd_String
	line	69
	
l2731:	
;MASTER I2C.c: 69: Start();
	fcall	_Start
	line	70
	
l2733:	
;MASTER I2C.c: 70: Send_I2C_Data(0X24);
	movlw	(024h)
	fcall	_Send_I2C_Data
	line	72
	
l2735:	
;MASTER I2C.c: 72: if(ACKSTAT==0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l2743
u2280:
	line	74
	
l2737:	
;MASTER I2C.c: 73: {
;MASTER I2C.c: 74: Send_I2C_Data(m);
	movf	(_m),w
	fcall	_Send_I2C_Data
	line	75
	
l2739:	
;MASTER I2C.c: 75: SSPBUF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	76
	
l2741:	
;MASTER I2C.c: 76: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	clrwdt
opt asmopt_on

	goto	l2743
	line	77
	
l729:	
	line	79
	
l2743:	
;MASTER I2C.c: 77: }
;MASTER I2C.c: 79: if(ACKSTAT==0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2727
u2290:
	goto	l731
	line	81
	
l2745:	
;MASTER I2C.c: 80: {
;MASTER I2C.c: 81: while(SSPIF==0);
	goto	l731
	
l732:	
	
l731:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l731
u2300:
	
l733:	
	line	82
;MASTER I2C.c: 82: SSPIF=0;
	bcf	(99/8),(99)&7
	line	83
	
l2747:	
;MASTER I2C.c: 83: Stop();
	fcall	_Stop
	line	84
	
l2749:	
;MASTER I2C.c: 84: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	clrwdt
opt asmopt_on

	goto	l2727
	line	85
	
l730:	
	goto	l2727
	line	86
	
l734:	
	line	64
	goto	l2727
	
l735:	
	line	87
	
l736:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd_Intialization
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 49 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text151
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	line	49
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l2715:	
;LCD 4 BIT.h: 50: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	51
;LCD 4 BIT.h: 51: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	52
;LCD 4 BIT.h: 52: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	53
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 41 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_2(10), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_2(10), STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text152
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	line	41
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	42
	
l2707:	
;LCD 4 BIT.h: 42: while(*Str != 0)
	goto	l2713
	
l696:	
	line	44
	
l2709:	
;LCD 4 BIT.h: 43: {
;LCD 4 BIT.h: 44: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2711:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2713
	line	45
	
l695:	
	line	42
	
l2713:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2709
u2270:
	goto	l698
	
l697:	
	line	46
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Stop
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:

;; *************** function _Stop *****************
;; Defined at:
;;		line 32 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text153
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	32
	global	__size_of_Stop
	__size_of_Stop	equ	__end_of_Stop-_Stop
	
_Stop:	
	opt	stack 7
; Regs used in _Stop: [wreg]
	line	33
	
l2703:	
;MASTER I2C.c: 33: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	34
;MASTER I2C.c: 34: while(SSPIF == 0);
	goto	l719
	
l720:	
	
l719:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l719
u2260:
	
l721:	
	line	35
;MASTER I2C.c: 35: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	36
	
l2705:	
;MASTER I2C.c: 36: _delay((unsigned long)((100)*(20e6/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Stop+0)+0+2),f
movlw	138
movwf	((??_Stop+0)+0+1),f
	movlw	86
movwf	((??_Stop+0)+0),f
u2337:
	decfsz	((??_Stop+0)+0),f
	goto	u2337
	decfsz	((??_Stop+0)+0+1),f
	goto	u2337
	decfsz	((??_Stop+0)+0+2),f
	goto	u2337
	nop2
opt asmopt_on

	line	37
	
l722:	
	return
	opt stack 0
GLOBAL	__end_of_Stop
	__end_of_Stop:
;; =============== function _Stop ends ============

	signat	_Stop,88
	global	_Start
psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:

;; *************** function _Start *****************
;; Defined at:
;;		line 8 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text154
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	8
	global	__size_of_Start
	__size_of_Start	equ	__end_of_Start-_Start
	
_Start:	
	opt	stack 7
; Regs used in _Start: [wreg]
	line	9
	
l2699:	
;MASTER I2C.c: 9: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	10
;MASTER I2C.c: 10: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	11
	
l2701:	
;MASTER I2C.c: 11: _delay((unsigned long)((100)*(20e6/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Start+0)+0+2),f
movlw	138
movwf	((??_Start+0)+0+1),f
	movlw	86
movwf	((??_Start+0)+0),f
u2347:
	decfsz	((??_Start+0)+0),f
	goto	u2347
	decfsz	((??_Start+0)+0+1),f
	goto	u2347
	decfsz	((??_Start+0)+0+2),f
	goto	u2347
	nop2
opt asmopt_on

	line	12
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_Start
	__end_of_Start:
;; =============== function _Start ends ============

	signat	_Start,88
	global	_Lcd_Data
psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 26 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;; This function uses a non-reentrant model
;;
psect	text155
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	line	26
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 6
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	27
	
l2679:	
;LCD 4 BIT.h: 27: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	28
	
l2681:	
;LCD 4 BIT.h: 28: RD2 = 1;
	bsf	(66/8),(66)&7
	line	29
	
l2683:	
;LCD 4 BIT.h: 29: RD3 = 1;
	bsf	(67/8),(67)&7
	line	30
	
l2685:	
;LCD 4 BIT.h: 30: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2357:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2357
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2357
	clrwdt
opt asmopt_on

	line	31
	
l2687:	
;LCD 4 BIT.h: 31: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	33
	
l2689:	
;LCD 4 BIT.h: 33: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2255:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2255
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	34
	
l2691:	
;LCD 4 BIT.h: 34: RD2 = 1;
	bsf	(66/8),(66)&7
	line	35
	
l2693:	
;LCD 4 BIT.h: 35: RD3 = 1;
	bsf	(67/8),(67)&7
	line	36
	
l2695:	
;LCD 4 BIT.h: 36: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2367:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2367
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2367
	clrwdt
opt asmopt_on

	line	37
	
l2697:	
;LCD 4 BIT.h: 37: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	38
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 11 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text156
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\LCD 4 BIT.h"
	line	11
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	12
	
l2659:	
;LCD 4 BIT.h: 12: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l2661:	
;LCD 4 BIT.h: 13: RD2 = 0;
	bcf	(66/8),(66)&7
	line	14
	
l2663:	
;LCD 4 BIT.h: 14: RD3 = 1;
	bsf	(67/8),(67)&7
	line	15
	
l2665:	
;LCD 4 BIT.h: 15: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2377:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2377
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2377
	clrwdt
opt asmopt_on

	line	16
	
l2667:	
;LCD 4 BIT.h: 16: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	18
	
l2669:	
;LCD 4 BIT.h: 18: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2245:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2245
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	19
	
l2671:	
;LCD 4 BIT.h: 19: RD2 = 0;
	bcf	(66/8),(66)&7
	line	20
	
l2673:	
;LCD 4 BIT.h: 20: RD3 = 1;
	bsf	(67/8),(67)&7
	line	21
	
l2675:	
;LCD 4 BIT.h: 21: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2387:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2387
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2387
	clrwdt
opt asmopt_on

	line	22
	
l2677:	
;LCD 4 BIT.h: 22: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	23
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	_Master_I2C_Initialization
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _Master_I2C_Initialization *****************
;; Defined at:
;;		line 40 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text157
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	40
	global	__size_of_Master_I2C_Initialization
	__size_of_Master_I2C_Initialization	equ	__end_of_Master_I2C_Initialization-_Master_I2C_Initialization
	
_Master_I2C_Initialization:	
	opt	stack 7
; Regs used in _Master_I2C_Initialization: [wreg]
	line	41
	
l1797:	
;MASTER I2C.c: 41: TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	42
;MASTER I2C.c: 42: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	44
	
l1799:	
;MASTER I2C.c: 44: SSPCON=0XA8;
	movlw	(0A8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	45
;MASTER I2C.c: 45: SSPCON2=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	line	46
;MASTER I2C.c: 46: SSPSTAT=0X84;
	movlw	(084h)
	movwf	(148)^080h	;volatile
	line	47
;MASTER I2C.c: 47: SSPADD=9;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	48
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of_Master_I2C_Initialization
	__end_of_Master_I2C_Initialization:
;; =============== function _Master_I2C_Initialization ends ============

	signat	_Master_I2C_Initialization,88
	global	_Send_I2C_Data
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _Send_I2C_Data *****************
;; Defined at:
;;		line 15 in file "C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Send_I2C_Data_String
;; This function uses a non-reentrant model
;;
psect	text158
	file	"C:\Users\G SRIDHAR\Desktop\STRING SEND\MASTER\MASTER I2C.c"
	line	15
	global	__size_of_Send_I2C_Data
	__size_of_Send_I2C_Data	equ	__end_of_Send_I2C_Data-_Send_I2C_Data
	
_Send_I2C_Data:	
	opt	stack 7
; Regs used in _Send_I2C_Data: [wreg]
;Send_I2C_Data@Data stored from wreg
	movwf	(Send_I2C_Data@Data)
	line	16
	
l1783:	
;MASTER I2C.c: 16: SSPBUF == 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	line	17
;MASTER I2C.c: 17: while(SSPIF ==0);
	goto	l707
	
l708:	
	
l707:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l707
u10:
	
l709:	
	line	18
;MASTER I2C.c: 18: SSPIF=0;
	bcf	(99/8),(99)&7
	line	19
	
l1785:	
;MASTER I2C.c: 19: SSPBUF = Data;
	movf	(Send_I2C_Data@Data),w
	movwf	(19)	;volatile
	line	20
	
l710:	
	return
	opt stack 0
GLOBAL	__end_of_Send_I2C_Data
	__end_of_Send_I2C_Data:
;; =============== function _Send_I2C_Data ends ============

	signat	_Send_I2C_Data,4216
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
