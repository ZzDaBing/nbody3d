import matplotlib.pyplot as plt
import numpy as np

with open("averagePerf.dat", "r") as f:
    x = list()
    y = list()
    for line in f:
        data = line.split()
        x.append(data[0])
        y.append(data[1])
print(x)
print(y)

GFLOP = np.array(x).astype('double')
error = np.array(y).astype('double')

xbis = np.arange(10)
plt.bar(xbis, GFLOP)
plt.xticks(xbis, ['v0 gcc', 'v0 icc', 'v1 gcc', 'v1 icc', 'v2 gcc', 'v2 icc', 'v3 gcc', 'v3 icc', 'v4 gcc', 'v4 icc'])

plt.title("Average GFLOP/s per versions of nbody3d")
plt.ylabel("Average GFLOP/s")

plt.errorbar(xbis, GFLOP, yerr = error,
    fmt = 'none', capsize = 5, ecolor = 'red', elinewidth = 1, capthick = 1, label = 'error')

plt.savefig("AveragePerf.png")
plt.legend()
plt.show()
