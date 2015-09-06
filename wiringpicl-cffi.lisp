(in-package #:wiringpicl-cffi)

;; http://wiringpi.com/reference/setup/

(defcfun "wiringPiSetup" :int)
(defcfun "wiringPiSetupSys" :int)
(defcfun "wiringPiSetupGpio" :int)
(defcfun "wiringPiSetupPhys" :int)

;; http://wiringpi.com/reference/core-functions/

(defcfun "pinModeAlt" :void (pin :int mode :int))
(defcfun "pinMode" :void (pin :int mode :int))
(defcfun "pullUpDnControl" :void (pin :int pud :int))
(defcfun "digitalRead" :int (ping :int))
(defcfun "digitalWrite" :void (pin :int value :int))
(defcfun "pwmWrite" :void (pin :int value :int))
(defcfun "analogRead" :int (pin :int))
(defcfun "analogWrite" :void (pin :int value :int))

;; http://wiringpi.com/reference/raspberry-pi-specifics/

(defcfun "piBoardRev" :int)
;; (defcfun "piBoardId" :void (int *model, int *rev, int *mem, int *maker, int *overVolted))
(defcfun "wpiPinToGpio" :int (wpipin :int))
(defcfun "physPinToGpio" :int (physpin :int))
(defcfun "setPadDrive" :void (group :int value :int))
(defcfun "getAlt" :int (pin :int))
(defcfun "pwmToneWrite" :void (pin :int freq :int))
(defcfun "digitalWriteByte" :void (value :int))
(defcfun "pwmSetMode" :void (mode :int))
(defcfun "pwmSetRange" :void (range :unsigned-int))
(defcfun "pwmSetClock" :void (divisor :int))
(defcfun "gpioClockSet" :void (pin :int freq :int))

;; http://wiringpi.com/reference/priority-interrupts-and-threads/

(defcfun "waitForInterrupt" :int (pin :int timeout-ms :int))


(defcallback sum :int ((a :int) (b :int))
  (+ a b))

(def-isr :pin 1 :mode 12 #'(lambda () (print "got a thig")))
;; extern int      (int pin, int mS) ;
;; extern int  wiringPiISR         (int pin, int mode, void (*function)(void)) ;

;; http://wiringpi.com/reference/timing/

extern void         delay             (unsigned int howLong) ;
extern void         delayMicroseconds (unsigned int howLong) ;
extern unsigned int millis            (void) ;
extern unsigned int micros            (void) ;

;; http://wiringpi.com/reference/spi-library/

(defcfun "wiringPiSPIGetFd" :int (channel :int))
(defcfun "wiringPiSPIDataRW" :int (channel :int FIXME :string length :int))
(defcfun "wiringPiSPISetupMode" :int (channel :int speed :int mode :int))
(defcfun "wiringPiSPISetup" :int (channel :int speed :int))
