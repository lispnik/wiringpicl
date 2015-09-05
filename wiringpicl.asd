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
               (:grovel-file "wiringpicl-grovel")
               (:file "wiringpicl-cffi")
               (:file "wiringpicl")))
