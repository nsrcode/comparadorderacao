#!/usr/bin/ruby
#
# Metabolized Energy Calculator for Dogs
#
# Formule: NRC (2006) 
#
# Version: beta / needs more tests
#

# Parameters
umidade = 100 # moisture
pb = 260      # crute protein
eea = 130     # ether extract 
mf = 35       # fiber matter
mm = 75       # mineral matter

# Convertions
umidade = umidade / 10.0
pb      = pb / 10.0
eea     = eea / 10.0
mf      = mf / 10.0
mm      = mm / 10.0

# Formule
enn = 100 - (umidade + pb + eea + mf + mm)
eb  = (5.7 * (pb / 100.0)) + (9.4 * (eea / 100.0)) + (4.1 * ((enn / 100.0) + (mf / 100.0)))
cde = 91.2 - (1.43 * (mf/90.0 * 100.0))
ed  = eb * (cde / 100.0)
em  = ed - (1.04 * (pb / 100.0))

# Result
puts em.truncate(3)
