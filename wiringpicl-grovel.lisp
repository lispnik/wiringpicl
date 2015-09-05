(in-package #:wiringpicl-grovel)

(include "/usr/local/include/wiringPi.h")

(constant (WPI_MODE_PINS "WPI_MODE_PINS"))
(constant (WPI_MODE_GPIO "WPI_MODE_GPIO"))
(constant (WPI_MODE_GPIO_SYS "WPI_MODE_GPIO_SYS"))
(constant (WPI_MODE_PHYS "WPI_MODE_PHYS"))
(constant (WPI_MODE_PIFACE "WPI_MODE_PIFACE"))
(constant (WPI_MODE_UNINITIALISED "WPI_MODE_UNINITIALISED"))

(constant (INPUT "INPUT"))
(constant (OUTPUT "OUTPUT"))
(constant (PWM_OUTPUT "PWM_OUTPUT"))
(constant (GPIO_CLOCK "GPIO_CLOCK"))
(constant (SOFT_PWM_OUTPUT "SOFT_PWM_OUTPUT"))
(constant (SOFT_TONE_OUTPUT "SOFT_TONE_OUTPUT"))
(constant (PWM_TONE_OUTPUT "PWM_TONE_OUTPUT"))

(constant (LOW "LOW"))
(constant (HIGH "HIGH"))

(constant (PUD_OFF "PUD_OFF"))
(constant (PUD_DOWN "PUD_DOWN"))
(constant (PUD_UP "PUD_UP"))

(constant (PWM_MODE_MS "PWM_MODE_MS"))
(constant (PWM_MODE_BAL "PWM_MODE_BAL"))

(constant (INT_EDGE_SETUP "INT_EDGE_SETUP"))
(constant (INT_EDGE_FALLING "INT_EDGE_FALLING"))
(constant (INT_EDGE_RISING "INT_EDGE_RISING"))
(constant (INT_EDGE_BOTH "INT_EDGE_BOTH"))

(constant (PI_MODEL_UNKNOWN "PI_MODEL_UNKNOWN"))
(constant (PI_MODEL_A "PI_MODEL_A"))
(constant (PI_MODEL_B "PI_MODEL_B"))
(constant (PI_MODEL_BP "PI_MODEL_BP"))
(constant (PI_MODEL_CM "PI_MODEL_CM"))
(constant (PI_MODEL_AP "PI_MODEL_AP"))
(constant (PI_MODEL_2 "PI_MODEL_2"))

(constant (PI_VERSION_UNKNOWN "PI_VERSION_UNKNOWN"))
(constant (PI_VERSION_1 "PI_VERSION_1"))
(constant (PI_VERSION_1_1 "PI_VERSION_1_1"))
(constant (PI_VERSION_1_2 "PI_VERSION_1_2"))
(constant (PI_VERSION_2 "PI_VERSION_2"))

(constant (PI_MAKER_UNKNOWN "PI_MAKER_UNKNOWN"))
(constant (PI_MAKER_EGOMAN "PI_MAKER_EGOMAN"))
(constant (PI_MAKER_SONY "PI_MAKER_SONY"))
(constant (PI_MAKER_QISDA "PI_MAKER_QISDA"))
(constant (PI_MAKER_MBEST "PI_MAKER_MBEST"))


(include "/usr/local/include/wiringPiSPI.h")
