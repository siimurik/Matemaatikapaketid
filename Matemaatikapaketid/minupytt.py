import math as m
import matplotlib.pyplot as plt
import numpy as np

def f2(R,H,l):  # -R<H<R
    Sp = m.pi*R**2
    I3 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    return I3*Sp*l/3

#Lihtne meetod (Idee: V = Sp*L):
def f3(R,H,L):  # -R<H<R
    Sp = m.pi*R**2
#    I3 = 1/(R**2*m.pi)*(R**2*m.asin(H/abs(R)) + H*m.sqrt(R**2-H**2) + m.pi*R**2/2)
    I3 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    return I3*Sp*L

def MinuPytt(R,L,l,H):
    Sp1 = m.pi*R**2
    I1 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    K = I1*Sp1*l/3
    Sp2 = m.pi*R**2
    I2 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    S = I2*Sp2*L
    return (2*K+S)

print("MinuPytt =", MinuPytt(8,20,5,1))

print("1 koonuse V =", f2(8,8,5))
print("silindri V =", f3(8,8,20))

V = [MinuPytt(4, 5, 6, h) for h in np.arange(-4,4,0.1)]
plt.plot(np.arange(-4,4,0.1), V)