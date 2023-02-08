import math as m
import numpy as np
import matplotlib.pyplot as plt

def MinuPytt(R,L,l,H):
    V_silinder = m.pi*R**2*L - L*(R**2*m.asin(1) - 
                R**2*m.asin((H-R)/R) - (H-R)*m.sqrt(2*H*R-H**2))
    if H<=R:
        d = R-H
        if d==0:
            V_pool = l/3*(-2*d*m.sqrt(R**2-d**2)+
                    d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                    R**2*m.acos(d/R)-0)
            return (2*V_pool + V_silinder)
        else:
            V_pool = l/3*(-2*d*m.sqrt(R**2-d**2)+
                    d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                    R**2*m.acos(d/R)-d**3/R*m.log(d))
            return (2*V_pool + V_silinder)
    else:
        d = H-R
        V_allapoole = l/3*(-2*d*m.sqrt(R**2-d**2)+
                      d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                      R**2*m.acos(d/R)-d**3/R*m.log(d))
        V_terve = m.pi*R**2*l/3
        V_ylepoole = V_terve - V_allapoole
        return (2*V_ylepoole + V_silinder)

print("MinuPytt =",MinuPytt(4, 5, 6, 4))

V = [MinuPytt(4., 5., 6., h) for h in np.arange(0,8,0.1)]
plt.plot(np.arange(0,8,0.1), V)
plt.title("Funktsiooni MinuPytt graafiku sõltuvus vedeliku tasemest H")
plt.xlabel("Vee tase (H)")
plt.ylabel("Mahuti ruumala (V)")
plt.grid()
plt.show()
