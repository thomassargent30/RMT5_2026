import numpy as np

gam1 = 100
gam2 = 50
g = 0.075
M0 = 100

m1 = np.array([[1, gam2], [1, 0]])
m2 = np.array([[0, gam1], [1, g]])

w, d = np.linalg.eig(np.linalg.inv(m1) @ m2)
v = np.linalg.inv(w)

a1 = w @ d @ v
a10 = w @ np.linalg.matrix_power(d, 10) @ v

p0 = -v[1, 1] / v[1, 0] * M0
x0 = np.array([M0, p0])

x1 = a1 @ x0
x10 = a10 @ x0

pp0 = p0 + 1
xx0 = x0.copy()
xx0[1] = pp0 + 1

xx1 = a1 @ xx0
xx10 = a10 @ xx0

print("x0:", x0)
print("x1:", x1)
print("x10:", x10)
print("xx0:", xx0)
print("xx1:", xx1)
print("xx10:", xx10)
