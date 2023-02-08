import math as m

# Etalon kontrolliks:
def f(R,D,L):   # 0<H<2*R
    I = L*(R**2*m.acos((R-D)/R)-(R-D)*m.sqrt(2*R*D-D**2))
    return I

# Keerukas meetod (Kogu_V - Tühi_V): 
def f2(R,H,L):  # 0<H<2*R
    I=2*R - H
    I2 = m.pi*R**2*L - L*(R**2*m.asin((I+H-R)/R)+
        (I+H-R)*m.sqrt(R**2-(I+H-R)**2) - 
        R**2*m.asin((H-R)/R) - (H-R)*m.sqrt(2*H*R-H**2))
    return I2

#Lihtne meetod (Idee: V = Sp*L):
def f3(R,H,L):  # -R<H<R
    Sp = m.pi*R**2
    I3 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    return I3*Sp*L

print("f(R,D,L)  =", f(4,5,6))
print("f2(R,H,L) =", f2(4,8,6))
#print("f3(R,H,L) =", f3(4,4.1,20))
