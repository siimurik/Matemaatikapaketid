import math as m

#def

def f2(R,H,l):  # -R<H<R
    Sp = m.pi*R**2
    I3 = 1/(m.pi)*(m.asin(H/R)+H/R**2*m.sqrt(R**2-H**2)+m.pi/2)
    return I3*Sp*l/3

def f3(R,H,l):  # -R<H<R
    if (R-H)==0:
        return 0
    elif R<H:
        d = 2*R - H
        if d==0:
            V_tais = m.pi*R**2*l/3
            return V_tais
        else:
            V_pool = l/3*(-2*d*m.sqrt(R**2-d**2)+
                      d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                      R**2*m.acos(d/R)-d**3/R*m.log(d))
            V_ylepoole = m.pi*R**2*l/6 + V_pool
            return V_ylepoole
    else:
        d = R-H
        V_allapoole = l/3*(-2*d*m.sqrt(R**2-d**2)+
                    d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                    R**2*m.acos(d/R)-d**3/R*m.log(d))
        return V_allapoole

def f4(R,H,l):
    if (R-H)==0:
        d = R-H
        print("d =",d)
        V_pool = l/3*(-2*d*m.sqrt(R**2-d**2)+
                    d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                    R**2*m.acos(d/R)-0)
        return V_pool
    elif R<H:
        D = H - R
        d = R - D
        print("d =",d)
        if d==0:
            V_tais = m.pi*R**2*l/3
            return V_tais
        else:
            V_allapoole = l/3*(-2*d*m.sqrt(R**2-d**2)+
                      d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                      R**2*m.acos(d/R)-d**3/R*m.log(d))
            V_terve = m.pi*R**2*l/3
            V_ylepoole = V_terve - V_allapoole
            return V_ylepoole
    else:
        d = R-H
        print("Tingimus: R > H -> d =",d)
        V_allapoole = l/3*(-2*d*m.sqrt(R**2-d**2)+
                    d**3/R*m.log(m.sqrt(R**2-d**2)+R)+
                    R**2*m.acos(d/R)-d**3/R*m.log(d))
        return V_allapoole

def f5(r,a,h):
    if a==r:
        V=m.pi*r**2*h/6
        return V
    else:
        k = 1 - a/r
        V = h*r**2/3*(m.pi/2-2*k*m.sqrt(1-k**2)-m.asin(k)+k**3*m.acosh(1/k))
        return V

#print("f2(R,H,l) =", f2(8,8,15))
#print("f3(R,H,l) =", f3(8,0,15))
print("f4(R,H,l) =", f4(4,4,6))
#print("f3(R,H,l) =", f5(8,0,15))