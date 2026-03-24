#Listar llaves privadas
gpg --list-secret-keys --keyid-format=long
#/home/codespace/.gnupg/pubring.kbx
#----------------------------------
#sec   rsa4096/1C9B516DB919F577 2026-03-18 [SC] [expires: 2027-03-18]
#      A5B18D0E6BF68025BB6F1C431C9B516DB919F577
#uid                 [ultimate] David Alejandro Torres Vengas (12345678) <davidsitotorres8@gmail.com>
#ssb   rsa4096/D87B8615073BC8E3 2026-03-18 [E] [expires: 2027-03-18]

#Este comando exporta las llaves privadas
gpg --armor --export-secret-keys 1C9B516DB919F577
#-----BEGIN PGP PRIVATE KEY BLOCK-----

#lQdGBGm6rO4BEAC5UTl18jZtVnUBjnRAfTiMhtK/FC9k6nqQqaASSb/vyP9qVO84
#KXRmeMIemnOT8CBUHL9gwpO+tJHtML1IOIbS2ooGsGRrEe41CabEw31heQ/0R9Pr
#BgvGZot5uZk7jrhchHeArqlA4XeEar2FMBAo/WXhtDZXon7rlmGHVqPY7zoR07/w
#iRJiH0b2lBeMttUT+GjG8j49G1qxgnIxHLSL3Xuu+8WtazuxWtvlNKgb5n7UDN0X
#gE0WzaQafHRo9SXpiZ4b2uXp8VmD+3vuG3n2FJlIV0RjUrlfXKbN8HWOALYyJgni
#RHoPx0vpIrZOidZX+6X8uylq94oBfgFuk0TP8NqcIq45FEQHZqd/LiTaWy8zhR/Y
#TFGH0cuygj9qcB8LnUuEy/YTKX97ijoFpinUPjt7yjwuHZmyglp1zN1C0LRYQyN0
#TzOXc6lW92+R2PiDXT4Lj3qo0QZL+Q7Go0+StlvaxdYwI7cqx9N1s8zCqb4EnYx8
#WBIZU7kvBoIhFZlq5cqi7LdLqsCBBvgZon0UVsbHkZ2+ilNbQMF9orTyyIJvEIZ9
#tR8gF4/E6t73yz8BJUsqWVcG5g38F5PyVaMgRXMuznYMo0qWdH7dy2Ou0XKhbori
#Zf55Z2TF5e1hntVmEsUpxH4QLYVyP3sFb3UH2AFPUlnOeZiOgK8NqRhwIQARAQAB
#/gcDAtPXuc1Z1Tf7/3DV9tIK+TGBrw1XAoHjNESHfl/UjXxurgW0GNaTvCfoCpMV
#ACRsclL+kpDzFN8jCCQBOsF2fofPQsLn4QBEW7i/Wf33aCr4B4fC2CESC2gezQYR
#/CU+InGMi4LyIuu9ws/iaE0Ce7zZaXfLXRlo6NjhGT8xtZuc8hPBXEywY4Coetmp
#DIXPEmLwDBp9bfN3BYT46W1vf0HqqVwTvZHL0rcJ9Zq7gOI9WbrBC2TeSqNgVbW4
#t81bX1ChONQznIk8DlNqG1v/cZjSuwqqKqnPMs+xFOTz6whz9cqbRoJXbrQDvFJ5
#aipMTYE5KjyWpoUFEU3LIMyzze8xIC4YwKVq5rpf1D9vvO/SEF0KkgoaTCDMhjfY
#9F4ejvgbKh/16sfVX1JzkAFwKyj34IcNuItmxafFlO00RU4CeF2J2DpriSoyKfQO
#JiFQBF8wb2boFix+5NF+/4kLHFCMBjPkLRHhb5/qtNJ9mjUADRmWbUUX4QAx7vKO
#gFY4GoaZHQO/dvuixemDexPKfajzlxvhX2o+RqUZqLQEhJFlpeUb/V0S6hp15ZAH
#lu3gBnnJ40rSndSxXqXGOU1bRqwZHLcNQ3rdPUlEYspwgchVrl9JlcOJBv8fs3RI
#kqNgk1yTxDHe7+W6IAGqBQg4lwRCqbcfwxSRsXTOsA87CoDeWcQGwMSnpxiR42dQ
#ceBIJdoOC8tFd9Dnl/0c84F34FMhSDDzLfwMec6e32iB6NPPIf+pJyKcVNCU372H
#q7jCNjzFpPAR/57R86vVgdLnSJJtsALQfxNxAqwsjURApcCc+zkrq/AMZna+zuKB
#bldDPrXoaE2LL89rTFlf9iq+qIMBSRKzc6k8VsS1JxSs7YuYeJ75enzTCJMJu/5D
#W1g5G4V6KOlzaW1I0+8fZ7jcx38qpDYXqqvWq9/CDpXPAGnwCFAzImUM8BohAe8n
#YJFNf9ASMiv5AOXj8m1Q2EsYYcmO3XcgljcWV9DLdKZCfU0Vdga08L+0eAz34hJm
#CUBmLNC5eRu5O0zadLx0eq9dtv4QbhbY0VvfAjhUOu3vQsyko23oL3Ua40FkF4ey
#YzgimDt0xMqrzEM+IY0edf6nryv5O76NSdpB3zfwS0j1V+2aLyfO7j6Wj/MoqoO5
#IhIKQXeFjXO2UA5UnZENekowOrfmufE2wk7hjzE2JphPBjbr+Fxb0eqrG62VnEEy
#eLygCpAhIAGrv2OL3zObbpJf4EWJ2qG0nsCnvoQ+Lhpu5ZpHr7MpS3PqBYmWW2uS
#9nB8KX+MxjHoBZzK0giQannhmnzLl4rnz1adlReOND/nPQ5/FeM4mz1ZpDrwCX48
#m6rcfzYdqhj0jbSBRwyT4xNvfGehaefx0VPhDyP3jkixj/i1+QMHWmnZC2jRQOos
#5RwNjEbMA987JBdb4JBZeJ+NVfSRg5bIWFZGKVJiH1JCHctZekWbz8Y0SxRQ5+dT
#fVzZVXEFNiqogqQpZErQtd9D5QwVz8rwR0aJhwq7BJre1p9ocuhQ/oIVieOf8AeM
#R3+X/X4KqYMkf1LQzXb0YPPe6oAMAC9DXaNJqBVoQHFCTMDWFVjQpVYH+0WMePuM
#JDQAQGu2zH5PSKWFqzB++VMdMbHqvPVCV08K2t8qcCbLlbMTXmdfQgv08i5WoUB+
#pxgRPNM8BjwkzhYUC7tfM7EWRZU2mQHkiwBQucXGFpNNg3SolWdjB16t8+ZmRk/g
#T3H3X13fD360yZqGjdoJ5f9GiB14l5y7GsOaiuhWtOW7qPgOO2b4YnG0RURhdmlk
#IEFsZWphbmRybyBUb3JyZXMgVmVuZ2FzICgxMjM0NTY3OCkgPGRhdmlkc2l0b3Rv
#cnJlczhAZ21haWwuY29tPokCVwQTAQoAQRYhBKWxjQ5r9oAlu28cQxybUW25GfV3
#BQJpuqzuAhsDBQkB4TOABQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEByb
#UW25GfV3MhIP/Ru1a0oEkq9j0OUnt5mRbLY6k3GY6frsxv2ksvNOTHIchdfbtxCO
#xbAqGvTRG2+AXmOxKJly1WZ+K65Jt3Dc9CzFgtbnKEJfLSkQwaPub6VdZRQYfwLb
#C2gyHMDmmJ+KoPWRtFfcqLyv809geN6BR4zLBiIsmNGJ/CNsT6z517jMhz1A2Ylz
#9xBKX8S8py4Lj28m5wxkMLXKj1pKtR2WYisP0EsGjsT71b0zOrJb4/x/uQrrU6YA
#t3Tsak/xmlOKWFo7bitALrdopCWh7GJqRv8VqlHMZcYjNJDWeg/vnrUZZ6GlAfHa
#Jnm/dEuNJgubH7byMYg1IWUqD4wAfXWtmR1SoU8QZk1BD0SwGMNhsJY7aNHvzwWH
#A8KnHbo0HLwETfEHNABp4DvxPLLJPP8zQ6DUtGf61fcf/ACUieyahumq11AOkaCx
#ynXKEAIwUBm3LCOZPXQfxZSTxdfG81jXnzCW5ZS6J3i5Y3n0RBZTIh6rG/qBJvTP
#ah20rRSarB6GivQS7hKC1SXMa56Mi1fwNMFnxM6GDcS+PGNrYBcoouvwpbYT7HAP
#j6gig8gpmyUpBQArQt2RkXdDZswiXqO/vwrpN6jzK0MxVBPYWlW4/xu9yrQRpSpY
#fx+phbEtR6djvo+tvgIz8pXGXG77chbbiTEiCAlAPG10ZfAPUxCHUr+lnQdGBGm6
#rO4BEADjhvoIXq8Q553aNtGQI6dW4p+K2n0zhmK3O1/eHPPLYoCAHWmAALijd7LT
#slhL0HnLURWxZFZ1RuihpW4gZ3mCkdPGa03F+3hLfEnoI3AUz2DInGSL7dAMX4Gc
#2QYlQKua2FAB1TerKOpZWtyXNxCPWqjc1k4pXmwfl8CR00LCfpmyxIMFioMzW7lf
#FZhKidX9PqYNmeM+lfMbi7obyXZztmeP8aH5JDlBQG4G1h8KqBTeUF4l7FxzcBll
#wTJSju6tP9toW0VZLiV7McWhGFEcKWq7C7k33PIQaBUED5ORieWR7xKeodC1848+
#o7Asq8l7xaKk+XByhZ46U86sV0NjJt6wEW8WYqYmqLP0LDRLZt98DhqjlTX92x/m
#VtHMs1RI+ws8SdwS3pAKzcVleJuKfuO9l2oIEa0mGICW4poCj5Fc1zARRQOlY+BE
#+F+JepqpYMBGaca8/EECrxhWnt/EOOAF5JFM0WIHO94EmY+FLQLaMSvOtTi2vD8W
#ZURZJ0Hk75sv1ZrFwHJxnXJXmiP0LKcjDGaRksEIk+qIV3lfVIplBiDYpAUeYl8X
#Jcw1tUFKSiPqLcKheStjOE6oVtpMSkwMrHTmCBMq0K+hgrGsu7cqdwjdggjLeZ/a
#jJnUxvegFLo7JmU53mLWrwA2ZNbJT0oEcddBTcvkQrOI2deMrQARAQAB/gcDAuEI
#iRmaUAGV/0FystcGLvv1Bvlq6/oM2/r02ogovC1A0Q62gn3YK9vtI7ckj63zo+m7
#HMEFXPR2JFJl8GI7/xfC1ub08okFjGaaf272JqbnQTf87QnZp5pfYneI0fMcqsGV
#yh1R4TpZV139UXgCN6A7Cz/Li8QncoI1uvW4cB+YQzz7pt1aGezjEyZMfdCRHoew
#UguSUTMUNqNaM1V5tdTNxDo2KDOQt0O6gJGTjC7IdZL6pAtmbTLIZ8ff949Qhd0B
#J8F+JQ5FsRLu0TXqqetswjfIwgQUHoQBXEIGAFxNFnpDmM/qcwXUwrzJ9EePkN6k
#7mGpZbGqv+ea2nex5iDxMYfNshMoU9AIMRu8kxXaCNEDi3wVu9Kh/1grhoFmuj9n
#DuWjgHsx8A37wbWUFQHa+6MZsbfbLYJy3+coRo3F4bhlajHYJy64l94zCB4WAVrv
#i5YaRo3L9MWpDxGNekxf+oG8hKFkupSM9WmBrPBs6JKG/Of8u27auZQxGznWqzEG
#O++pb1/aBlM+8PQdczc1xLJT/j/FC18wZAyJg4D84SXimILEDcdLYDAqW40m3Vff
#9h0TV3zceF7ViwyA2OnzwsMilw8TC/veMpt+V9tnrjSDlpS/DWE7TzmmEO9WPkTO
#ocCKwi6/WDCyd01fcROrCI9Oq3Z7zoMJxMfMh2hm31NKdjcSnxK4ZTbMT3htSUTg
#gQv8jRM+Als2OocKdDF1frVe63dHm3utoZFu/GjZMF5fx3A0xh9sOSw4OoRASmyo
#QU3vMFEElka4kp9cyF08VCvhb6lADRCK2VXuqpBIJbsBqaqa/YaOXVT1GaS1Ypb/
#i3LB9D/1UllC74oWl2WjX1L3nAkiyjQGW26fD8yRVQ9BdwkbNgXwkfURwUoO1a0E
#8t+q/O9ikOdEZRYagwGEqGxU9Ks3zxywnB5D9h6XL7+y8TrZZUSe5X2U3bg69WmK
#yJizOzmLvwrci+27RXYljDqeE1oaHtyWnc1eK9NPg1ssGdBCUv3JfzDCtV72KLYG
#RTX5ShwYclqST3lL6TXEqhNrI1SrMUfChJ9Eqp9L8h1dnOfG2Bl7a6l67cB7yzvx
#XPDM/poGIJTpfd5inPWszlJJdol+byhtoFkkHWIfQKH0f5/jnFrG2QC/BhIsrdQj
#eZEKCDVNV4pSR7UV63z7aLQZFRHQ15OTYKA2LU2MrPDYowFKuXMsA4qt1iBtTnXD
#E1t+JLxlYr3xj6aQsVF9TiplFhBfWFBFgWUhHA3Q8oD9zknQXksc+Gc3Zon0mrv+
#33rRUxqbbMkhgKA5qFIhrMInNeakqDrtTa/7zmzIELTGDvsF13tUeSLJGVzImjOu
#sIfwf9UKlONBvRK2BsHKbUL8KRqyWEKAEtBdmMgIAE2D9xQtdvNOCNGGKEzs1Jz0
#5Xnrk8mmZyWMhLCsBxh5rnWSoP58/E4i4fHb8PJsfUwFDU3JimFl7geIFZ6b/vZh
#cJU2zSXo7cg+5QX1/U5vlSoC7QpxMRgBFUDkxxi6b2t6jA9rBqK5rz1C701zoiX1
#3I0amz0diXIHH0uwNd6ueo+tu+bUNkWkMxBpBlxMPSJy+rcgMbVi4vyZ751oD9ZO
#raMNvI1dDfP4ZJREkCxbO2DxCMqOPzNH77zYYLC/IAret7BF/zfWgmbtMz91QhFL
#nAyHG+/zGHU9haRlWRArVR6zqJxfmfAZaEp8cy3KXuGTCQZyIbv8hxMkcurDWBlZ
#n7chd8cUKDVNEcB1F5vZbgLihTJ/EwDkZZnKvKCSE0gXZzuJAjwEGAEKACYWIQSl
#sY0Oa/aAJbtvHEMcm1FtuRn1dwUCabqs7gIbDAUJAeEzgAAKCRAcm1FtuRn1d9ee
#D/9bYzGx0gFVGhdCOaIHNRO5fBthk+iwqePeXZnLXXL5zQAdnno/aprT4kMZBS20
#0rrXWMNWnHlDMe4QyL//zR62JHgzY94071eVscNbhuGXgQAxPkp5e7uN0DdfrZJ0
#WlPkqpWEmAlkIQv2/ewtx4VbOBImg/tOh+2RBYVoQ4K16gPhOg7zO3tB399j8y8o
#vwiroA/0C3+wrJnTRzaAt3y6ljqpDTlAibY/3CLKCXKxRPly5srpzwSM34wS7B1Y
#0T+HJEKTv6r3su2OIaP6eZ3HnlisQLXs119idhgTOT0k+zQRjRWm7agmI1WOMtxG
#Ko02NXPBeIPxLY3P/E1Zlqa5yqNuQyTRWr6ln6V0zO42byN15jBchHYbZyj14j6K
#L7aKxu7JGzvM9HpyiMHmeeTtFVMKVa0LgP/LfHs60u6mOukmHyfWC/4y+NYHOx2Y
#JHhMZik37bWB/pLPhbQVeM/G74zTn0yuqpm4VfH3VCUnh1TiR7wE/EyDAbOs0q17
#YJYt3e2H+9PRB2SFmqXHeffs1fqVS6b8PeKDZM/5RHHeIQX/lpVCXNPHTwe8whJ9
#sYSJkFKNghSKpsHRZENaU0SAvOyXd/T3QEamxw8W2KzEWXch3ma/OvIS1UCa1VOP
#pZkh34jS1GWB8B4FLyv4YRwOAqa44oQR5hvz90YM9puXhw==
#=ocF4
#-----END PGP PRIVATE KEY BLOCK-----

#Este comando lista todas las llaves
gpg --list-keys
#/home/codespace/.gnupg/pubring.kbx
#----------------------------------
#pub   rsa4096 2026-03-18 [SC] [expires: 2027-03-18]
#      A5B18D0E6BF68025BB6F1C431C9B516DB919F577
#uid           [ultimate] David Alejandro Torres Vengas (12345678) <davidsitotorres8@gmail.com>
#sub   rsa4096 2026-03-18 [E] [expires: 2027-03-18]

#Este comando importa la llave de mi compa
gpg --import llave_compa.asc
#gpg: key AC675EB444A7DCF1: public key "Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>" imported
#gpg: Total number processed: 1
#gpg:               imported: 1

#Este comando lista todas las llaves (incluyendo la de mi compa)
gpg --list-keys
#/home/codespace/.gnupg/pubring.kbx
#----------------------------------
#pub   rsa4096 2026-03-18 [SC] [expires: 2027-03-18]
#      A5B18D0E6BF68025BB6F1C431C9B516DB919F577
#uid           [ultimate] David Alejandro Torres Vengas (12345678) <davidsitotorres8@gmail.com>
#sub   rsa4096 2026-03-18 [E] [expires: 2027-03-18]

#pub   rsa4096 2026-03-18 [SC] [expires: 2037-06-04]
#      D88787786F0156551A9495C0AC675EB444A7DCF1
#uid           [ unknown] Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>
#sub   rsa4096 2026-03-18 [E] [expires: 2037-06-04]

#Este comando hace un mensaje en un documento de texto
$ echo "Todo billar bro" > doc_no_cifrado.txt

#Este comando crea un archivo cifrado de texto con el archivo de texto no cifrado
gpg --output doc_cifrado.txt --encrypt --recipient D88787786F0156551A9495C0AC675EB444A7DCF1 doc_no_cifrado.txt
#gpg: 2F4F679F461514E1: There is no assurance this key belongs to the named user

#sub  rsa4096/2F4F679F461514E1 2026-03-18 Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>
# Primary key fingerprint: D887 8778 6F01 5655 1A94  95C0 AC67 5EB4 44A7 DCF1
#      Subkey fingerprint: 6A55 10A3 AE30 BBC0 881F  1BA5 2F4F 679F 4615 14E1
#
#It is NOT certain that the key belongs to the person named
#in the user ID.  If you *really* know what you are doing,
#you may answer the next question with yes.

#Use this key anyway? (y/N) y

#Este comando decifra el archivo cifrado que mi compa hizo con mi llave publica
gpg --decrypt DAVID_doc_cifrado.txt
#gpg: encrypted with rsa4096 key, ID D87B8615073BC8E3, created 2026-03-18
#      "David Alejandro Torres Vengas (12345678) <davidsitotorres8@gmail.com>"
#when haces tus momos en workspaces xdxdxd el futuro es hoy oiste diseñador grafico but te sacan del repositorio: ooo mi llave publica xdxdxd


#Este comando firma el documento de texto
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt


#Este comando nos permite editar una llave
gpg --edit-key danielvillarrealolmedo@gmail.com
#(by looking at passports, checking fingerprints from different sources, etc.)

#  1 = I don't know or won't say
#  2 = I do NOT trust
#  3 = I trust marginally
#  4 = I trust fully
#  5 = I trust ultimately
#  m = back to the main menu
#
#Your decision? 4
#Se le asgina un nivel de confianza a la llave de mi compa
#pub  rsa4096/AC675EB444A7DCF1
#     created: 2026-03-18  expires: 2037-06-04  usage: SC  
#     trust: full          validity: unknown
#sub  rsa4096/2F4F679F461514E1
#     created: 2026-03-18  expires: 2037-06-04  usage: E   
#[ unknown] (1). Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>
#Please note that the shown key validity is not necessarily correct
#unless you restart the program.

#gpg> q
#Este comando firma la llave
gpg --sign-key AC675EB444A7DCF1
#pub  rsa4096/AC675EB444A7DCF1
#     created: 2026-03-18  expires: 2037-06-04  usage: SC  
#     trust: full          validity: unknown
#sub  rsa4096/2F4F679F461514E1
#     created: 2026-03-18  expires: 2037-06-04  usage: E   
#[ unknown] (1). Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>


#pub  rsa4096/AC675EB444A7DCF1
#     created: 2026-03-18  expires: 2037-06-04  usage: SC  
#     trust: full          validity: unknown
# Primary key fingerprint: D887 8778 6F01 5655 1A94  95C0 AC67 5EB4 44A7 DCF1

#     Daniel Villarreal (AMARILLOX3434) <danielvillarrealolmedo@gmail.com>

#This key is due to expire on 2037-06-04.
#Are you sure that you want to sign this key with your
#key "David Alejandro Torres Vengas (12345678) <davidsitotorres8@gmail.com>" (1C9B516DB919F577)

#Really sign? (y/N) y

#Este comando firma el documento en binario
gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt

#Este comando firma el documento y separa la firma del documento
gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt
