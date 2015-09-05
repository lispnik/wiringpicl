(in-package #:wiringpicl)

(in-package #:wiringpicl-spi)

(defcfun ("wiringPiSPIGetFd" get-fd) :int (channel :int))
(defcfun ("wiringPiSPIDataRW" data-rw) :int (channel :int FIXME :string length :int))
(defcfun ("wiringPiSPISetupMode" setup-mode) :int (channel :int speed :int mode :int))
(defcfun ("wiringPiSPISetup" setup) :int (channel :int speed :int))
