Io> "one" slotNames
==> list()

Io> "one" validEncodings
==> list(ascii, utf8, ucs2, ucs4, number)

Io> "one" asNumber
==> 1.#QNAN

Io> 1 + ("one" asNumber)
==> 1.#QNAN

Io> 1+"1"
  Exception: argument 0 to method '+' must be a Number, not a 'Sequence'

Io> 1+("1" asNumber)
==> 2

Strongly typed I guess?  I have to explicilty convert that string "1"



Io> 0 or false
==> true
conclusion: 0 is true

Io> "" or false
==> true
conclusion: "" is true

Io> nil or false
==> false
conclusion: nil is false


= doesn't 'create' slots
:= does 'create' slots if they don't exist
::= appears to copy the assigning type:

Io> Vehicle := Object clone
==>  Vehicle_0x2111608:
  type             = "Vehicle"

Io> Boat ::= Object clone
==>  Object_0x2110bb8:

Io> Vehicle type
==> Vehicle
Io> Boat type
==> Object