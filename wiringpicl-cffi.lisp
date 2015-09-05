(in-package #:wiringpicl-cffi)

(define-foreign-library libwiringpi
  (t (:default "libwiringPi")))

(define-foreign-library libwiringpidev
  (t (:default "libwiringPiDev")))

(use-foreign-library libwiringpi)

(use-foreign-library libwiringpidev)
