import matplotlib.pyplot as plt
import numpy as np


def euler_method(f, x0, y0, h, n):
    x = np.zeros(n + 1)
    y = np.zeros(n + 1)
    x[0], y[0] = x0, y0
    for i in range(n):
        y[i + 1] = y[i] + h * f(x[i], y[i])
        x[i + 1] = x[i] + h
    return x, y


# 미분방정식을 정의합니다.
def f(x, y):
    return -y


# 초기값을 설정합니다.
x0, y0 = 0, 1

# 구간과 스텝 사이즈를 설정합니다.
start, stop = 0, 10
h = 0.01
n = int((stop - start) / h)

# 오일러 방법을 이용해 미분방정식의 해를 구합니다.
x, y = euler_method(f, x0, y0, h, n)

# 그래프를 그립니다.
plt.plot(x, y)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Solution to y\' = -y')
plt.show()
