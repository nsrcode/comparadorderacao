#!/usr/bin/ruby
#
# Metabolized Energy Calculator for Dogs
#
# Formule: NRC (2006) 
#
# Version: beta / needs more tests
#

umidade = 100 # moisture
pb = 26   # crute protein
eea = 13  # ether extract 
mf = 35   # fiber matter
mm = 75   # mineral matter

mf = mf / 10.0
mm = mm / 10.0
enn = 100 - (umidade + pb + eea + mf + mm)
enn = enn.abs
eb = (5.7 * (pb / 100.0)) + (9.4 * (eea / 100.0)) + (4.1 * ((enn / 100.0) + (mf / 100.0)))
cde = 91.2 - (1.43 * (mf/90.0 * 100.0))
ed = eb * (cde / 100.0)
em = ed - (1.04 * (pb / 100.0))

puts em.truncate(3)
