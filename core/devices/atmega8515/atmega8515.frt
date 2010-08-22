\ Partname: ATmega8515
\ Built using part description XML file version 233
\ generated automatically

hex

\ ANALOG_COMPARATOR
28 constant ACSR	\ Analog Comparator Control And Status Register

\ CPU
56 constant EMCUCR	\ Extended MCU Control Register
55 constant MCUCR	\ MCU Control Register
54 constant MCUCSR	\ MCU Control And Status Register
24 constant OSCCAL	\ Oscillator Calibration Value
50 constant SFIOR	\ Special Function IO Register
5E constant SPH	\ Stack Pointer High
5D constant SPL	\ Stack Pointer Low
57 constant SPMCR	\ Store Program Memory Control Register
5F constant SREG	\ Status Register

\ EEPROM
3F constant EEARH	\ EEPROM Address Register High Byte
3E constant EEARL	\ EEPROM Address Register Low Byte
3C constant EECR	\ EEPROM Control Register
3D constant EEDR	\ EEPROM Data Register

\ EXTERNAL_INTERRUPT
5B constant GICR	\ General Interrupt Control Register
5A constant GIFR	\ General Interrupt Flag Register

\ PORTA
3A constant DDRA	\ Port A Data Direction Register
39 constant PINA	\ Port A Input Pins
3B constant PORTA	\ Port A Data Register

\ PORTB
37 constant DDRB	\ Port B Data Direction Register
36 constant PINB	\ Port B Input Pins
38 constant PORTB	\ Port B Data Register

\ PORTC
34 constant DDRC	\ Port C Data Direction Register
33 constant PINC	\ Port C Input Pins
35 constant PORTC	\ Port C Data Register

\ PORTD
31 constant DDRD	\ Port D Data Direction Register
30 constant PIND	\ Port D Input Pins
32 constant PORTD	\ Port D Data Register

\ PORTE
26 constant DDRE	\ Port E Data Direction Register
25 constant PINE	\ Port E Input Pins
27 constant PORTE	\ Port E Data Register

\ SPI
2D constant SPCR	\ SPI Control Register
2F constant SPDR	\ SPI Data Register
2E constant SPSR	\ SPI Status Register

\ TIMER_COUNTER_0
51 constant OCR0	\ Timer/Counter 0 Output Compare Register
53 constant TCCR0	\ Timer/Counter 0 Control Register
52 constant TCNT0	\ Timer/Counter 0 Register 
58 constant TIFR	\ Timer/Counter Interrupt Flag register
59 constant TIMSK	\ Timer/Counter Interrupt Mask Register

\ TIMER_COUNTER_1
45 constant ICR1H	\ Timer/Counter1 Input Capture Register High Byte
44 constant ICR1L	\ Timer/Counter1 Input Capture Register Low Byte
4B constant OCR1AH	\ Timer/Counter1 Output Compare Register A High Byte
4A constant OCR1AL	\ Timer/Counter1 Output Compare Register A Low Byte
49 constant OCR1BH	\ Timer/Counter1 Output Compare Register B High Byte
48 constant OCR1BL	\ Timer/Counter1 Output Compare Register B Low Byte
4F constant TCCR1A	\ Timer/Counter1 Control Register A
4E constant TCCR1B	\ Timer/Counter1 Control Register B
4D constant TCNT1H	\ Timer/Counter1 High Byte
4C constant TCNT1L	\ Timer/Counter1 Low Byte

\ USART
40 constant UBRRH	\ USART Baud Rate Register High Byte
29 constant UBRRL	\ USART Baud Rate Register Low Byte
2B constant UCSRA	\ USART Control and Status Register A
2A constant UCSRB	\ USART Control and Status Register B
2C constant UDR	\ USART I/O Data Register

\ WATCHDOG
41 constant WDTCR	\ Watchdog Timer Control Register

\ Interrupts
001  constant INT0Addr \ External Interrupt Request 0
002  constant INT1Addr \ External Interrupt Request 1
003  constant TIMER1_CAPTAddr \ Timer/Counter1 Capture Event
004  constant TIMER1_COMPAAddr \ Timer/Counter1 Compare Match A
005  constant TIMER1_COMPBAddr \ Timer/Counter1 Compare MatchB
006  constant TIMER1_OVFAddr \ Timer/Counter1 Overflow
007  constant TIMER0_OVFAddr \ Timer/Counter0 Overflow
008  constant SPISTCAddr \ Serial Transfer Complete
009  constant USARTRXAddr \ USART, Rx Complete
00A  constant USARTUDREAddr \ USART Data Register Empty
00B  constant USART_TXAddr \ USART, Tx Complete
00C  constant ANA_COMPAddr \ Analog Comparator
00D  constant INT2Addr \ External Interrupt Request 2
00E  constant TIMER0_COMPAddr \ Timer 0 Compare Match
00F  constant EE_RDYAddr \ EEPROM Ready
010  constant SPM_RDYAddr \ Store Program Memory Ready
