100 'AUTOEXEC.BAS
110 'THIS PROGRAM WILL RUN ON BOOT WHEN PLACED
120 'IN THE ROOT OF /SD. IT WILL LOAD THE TIME
130 'FROM A MAXIM DS3231 REAL TIME CLOCK CONNECTED
140 'TO THE BASIC ENGINE OVER I2C. AND SET THE
150 'SYSTEM TIME. TO SET THE RTC SEE SETRTC.BAS
160 RTCADR=104'I2C ADDRESS 0x68
170 'TO READ THE TIME DATA FROM THE RTC FIRST
180 'WE NEED TO WRITE THE REGISTER WE WANT
190 TEMP=I2CW(RTCADR,CHR$(FN DEC2BCD(0)))'REGISTER 0
200 'READ THE REGISTER DATA INTO STRING VARIABLES
210 SEC$=I2CR(RTCADR,"",1)
220 MIN$=I2CR(RTCADR,"",1)
230 HRS$=I2CR(RTCADR,"",1)
240 DAY$=I2CR(RTCADR,"",1)
250 DAT$=I2CR(RTCADR,"",1)
260 MTH$=I2CR(RTCADR,"",1)
270 YRS$=I2CR(RTCADR,"",1)
280 'CONVERT STRINGS CONTAINING BCD VALUES
290 'INTO VARIABLES CONTAINING DECIMAL NUMBERS
300 SEC=FN BCD2DEC(ASC(SEC$))
310 MIN=FN BCD2DEC(ASC(MIN$))
320 HRS=FN BCD2DEC(ASC(HRS$))
330 DAY=FN BCD2DEC(ASC(DAY$))
340 DAT=FN BCD2DEC(ASC(DAT$))
350 MTH=FN BCD2DEC(ASC(MTH$))
360 YRS=FN BCD2DEC(ASC(YRS$))
370 'SET SYSTEM CLOCK ON BASIC ENGINE
380 SET DATE YRS+2000,MTH,DAT,HRS,MIN,SEC
390 'PRINT DATE AND TIME TO BOOT SCREEN
400 LOCATE 0,4:DATE 
410 'USING NEW TO DELETE THIS PROG FROM MEMORY
420 NEW 
430 PROC DEC2BCD(DEC)
440 RETURN (INT(@DEC/10)*16)+INT(@DEC MOD 10)
450 PROC BCD2DEC(BCD)
460 RETURN (INT(@BCD/16)*10)+INT(@BCD MOD 16)
