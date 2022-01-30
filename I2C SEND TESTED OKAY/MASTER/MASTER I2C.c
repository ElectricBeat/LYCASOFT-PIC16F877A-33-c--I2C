#include<pic.h>
#include"LCD 4 BIT.h"
#include<htc.h>

char m='S';	

void Start()
{
	SEN = 1;
	SSPIF = 0;
	__delay_ms(100);
}

void Send_I2C_Data(unsigned char Data)
{
	SSPBUF == 0;
	while(SSPIF  ==0);
	SSPIF=0;
	SSPBUF = Data;
}

void Send_I2C_Data_String(const unsigned char *Data)
{
	while(*Data);
	{
		Send_I2C_Data(*Data++);
		__delay_ms(5);
	}
}

void Stop()
{
	PEN = 1;
	while(SSPIF == 0);
	SSPIF = 0;
	__delay_ms(100);
}

void Master_I2C_Initialization()
{
	TRISC3=1;		
	TRISC4=1;

	SSPCON=0XA8;		
	SSPCON2=0X80;		
	SSPSTAT=0X84;		
	SSPADD=9;
}

void main()
{
	int u;

	TRISD=0X00;
	PORTD=0X00;
	
	Lcd_Intialization();
	
	Master_I2C_Initialization();

	Lcd_Command(0x80);
	Lcd_String("LYCA SOFT");

	while(1)
	{
		Lcd_Command(0xC0);
		Lcd_String("lyca soft");

		Start();
		Send_I2C_Data(0X24);

		if(ACKSTAT==0)
		{
				Send_I2C_Data(m);
				SSPBUF=0;
				__delay_ms(5);
		}

		if(ACKSTAT==0)
		{
			while(SSPIF==0);
			SSPIF=0;
			Stop();
			__delay_ms(5);
		}
	}
}