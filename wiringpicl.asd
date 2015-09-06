(eval-when (:load-toplevel :execute)
  (asdf:operate 'asdf:load-op 'cffi-grovel))

(defpackage #:wiringpicl-system
  (:use #:common-lisp
        #:asdf
        #:cffi-grovel))

(in-package #:wiringpicl-system)

(defsystem #:wiringpicl
  :depends-on (#:cffi)
  :serial t
  :components ((:file "package")
               (:grovel-file "wiringpicl-grovel" :cc-flags "-I/usr/include -I/usr/local/include")
               (:file "wiringpicl-library")
               (:file "wiringpicl-cffi")
               (:file "wiringpicl")))
